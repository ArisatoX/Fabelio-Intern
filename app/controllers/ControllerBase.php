<?php
declare(strict_types=1);

namespace App\Controllers;
use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public function onConstruct()
    {
        // CSS
        $this->assets->addCss("https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css", false);

        // JS
        $this->assets->addJs("https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js", false); 
        $this->assets->addJs("https://code.jquery.com/jquery-3.3.1.slim.min.js", false);
        
    }
}
