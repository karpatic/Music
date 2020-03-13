<?php
/*
Called From (file/function): 
Inputs: None
Purpose: Log User Out
Actions: Clears session histroy
Functions: ... below
*/
session_start();
session_unset();
session_destroy(); // Destroying All Sessions
session_start();
header('Location: index.php');
?>