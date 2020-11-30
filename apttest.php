<?php

session_start();
error_reporting(0);
$connect = mysqli_connect("localhost", "root", "", "isaccs");
$usr_email = $_SESSION["user_email_address"];

if (!isset($_SESSION['access_token'])) {
    header('location: logout.php');
} else {
    
    
                $sql = "SELECT apt FROM users WHERE email='$usr_email'";
                $result = $connect->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each row
                    while ($row = $result->fetch_assoc()) {
                        if ($row["apt"] == 1) {
                            header('location: thankyou.php');
                        } else {
                            //SET THE RANDOM QUESTIONS
                            if (!isset($_SESSION['questions'])) {
                                $questions = array();
                                $i = 1;
                                while ($i <= 10) {
                                    $rand = mt_rand(1, 30);
                                    $questions[$i++] = $rand;
                                }
                                $_SESSION['questions'] = $questions;

                                //Uncomment Below Line to Echo Questions
                                // print_r($questions);


                            } else {
                                $questions = $_SESSION['questions'];
                            }
                        }
                    }
                }
            
        
    
    // print_r($array);
    //Redirect the user to Thank You Page
    if ($_POST['submit']) {
        header("Location: thankyou.php");
    }

}
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Aptitude Test</title>
</head>

<body>

    <?php
    $questionnum = 1;
    // $questions=[1,2,3];
    foreach ($questions as $question) {
        echo "<b>Question " . $questionnum . "</b><br>";
        // echo $question;
        $sql = "SELECT question,opt_a,opt_b,opt_c,opt_d FROM apt_mcqbank WHERE id=" . $question . "";
        $result = $connect->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while ($row = $result->fetch_assoc()) {
                echo $row["question"] .  "<br><br>";

                echo '<form method="POST">
            <input type="radio" id="option_a" name="' . $questionnum . '" value="a">
            <label for="option_a">' . $row["opt_a"] . '</label><br>
            <input type="radio" id="option_b" name="' . $questionnum . '" value="b">
            <label for="option_a">' . $row["opt_b"] . '</label><br>
            <input type="radio" id="option_c" name="' . $questionnum . '" value="c">
            <label for="option_a">' . $row["opt_c"] . '</label><br>
            <input type="radio" id="option_d" name="' . $questionnum . '" value="d">
            <label for="radio">' . $row["opt_d"] . '</label><br>
            ';
                $questionnum++;
            }
        } else {
            echo "Whoops Something went wrong please contact the admin";
        }

        echo "";
    }
    echo '<input type="submit" name="submit" value="Submit">
    </form>';



    $answers = array($_POST['1'], $_POST['2'], $_POST['3'], $_POST['4'], $_POST['5'], $_POST['6'], $_POST['7'], $_POST['8'], $_POST['9'], $_POST['10']);
    //Uncomment Below Line to echo answers
    // print_r($answers);
    //Calculate MCQ score and update all the databases
    if ($_POST['submit']) {
        $serialized_questions = json_encode($questions);
        $serialized_answers = json_encode($answers);

        $sql = "INSERT INTO apt_data (email, question, answer) VALUES ('$usr_email','$serialized_questions', '$serialized_answers')";

        if ($connect->query($sql) === TRUE) {
            echo "New record created successfully";
            $sql = "UPDATE users SET apt=1 WHERE email='$usr_email'";

            if ($connect->query($sql) === TRUE) {
                echo "Record updated successfully";
            } else {
                echo "Error updating record: " . $connect->error;
            }
        } else {
            echo "Error: " . $sql . "<br>" . $connect->error;
        }
    }
    $connect->close();
    ?>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script>
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);




        }
        if (performance.navigation.type == performance.navigation.TYPE_RELOAD) {
            //Would you like to end the test
            alert("WARNING : Please Dont Reload/ Refresh the Page While taking the Test");
        }
    </script>
</body>

</html>