<?php

namespace App\Services;

class FaceRecognitionService
{
    public static function recognize($user_face, $user_uploaded_face)
    {
        $path = base_path("python_app\\recognize.py");
        $known_image_path = base_path("storage\\app\\public\\$user_face");
        $unknown_image_path = base_path("storage\\app\\public\\$user_uploaded_face");

        $command = "python $path $known_image_path $unknown_image_path";
        $output = exec($command, $result, $return_var);
        return $output == "true" ? true : false;
    }
}
