<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Storage;

class URLDownloader
{
    public static function download($url, $filename = "")
    {
        $client = new \GuzzleHttp\Client();
        $response = $client->get($url);

        if ($filename == "") {
            $filename = time() . '_' . '.jpg';
        } else {
            $filename = $filename . '.jpg';
        }

        Storage::disk('public')->put($filename, $response->getBody());
        return $filename;
    }
}
