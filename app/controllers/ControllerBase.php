<?php
declare(strict_types=1);

namespace App\Controllers;
use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public function onConstruct()
    {
        // CSS
        $this->assets->addCss("https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@200&display=swap", false);
        
        $this->assets->addCss("css/bootstrap.min.css", true);
        $this->assets->addCss("css/style.css");

        // JS
        $this->assets->addJs("js/bootstrap.min.js");
        $this->assets->addJs("js/jquery-3.3.1.min.js");
    }
}
