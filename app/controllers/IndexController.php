<?php
declare(strict_types=1);

namespace App\Controllers;

use App\Models\Furniture;
use Phalcon\Mvc\Model\Query;

class IndexController extends ControllerBase
{

    public function indexAction()
    {
        // Find base
        $query = $this->modelsManager->createQuery("SELECT * FROM App\Models\Furniture x WHERE x.productName = 'Sofa 2 dudukan Vienna'");
        $base = $query->execute();
        $base = $base->toArray();
        
        // Find targets
        $query = $this->modelsManager->createQuery("SELECT * FROM App\Models\Furniture x WHERE x.productName != 'Sofa 2 dudukan Vienna' AND x.available != 0 ");
        $target = $query->execute();
        $target = $target->toArray();

        // If targets are empty
        if(empty($target))
        {
            $query = new Query(
                "UPDATE App\Models\Furniture SET available = 1 WHERE productName != :productName:",
                $this->getDI()
            );
            $reset = $query->execute(
                [
                    'productName' => 'Sofa 2 dudukan Vienna',
                ]
            );

            $query = $this->modelsManager->createQuery("SELECT * FROM App\Models\Furniture x WHERE x.productName != 'Sofa 2 dudukan Vienna' AND x.available != 0 ");
            $target = $query->execute();
            $target = $target->toArray();
        }
        
        // Calculation process
        $max = 0;
        for ($i = 0; $i < sizeof($target); $i++) 
        {
            similar_text($base[0]['dimension'], $target[$i]['dimension'], $temp1);
            similar_text($base[0]['material'], $target[$i]['material'], $temp2);
            similar_text($base[0]['colours'], $target[$i]['colours'], $temp3);
            
            if (0.6 * $temp1 + 0.3 * $temp2 + 0.1 * $temp3 > $max)
            {
                $max = 0.6 * $temp1 + 0.3 * $temp2 + 0.1 * $temp3;
                $result = $target[$i]['id'];
            } 
        }

        // Find id in DB
        $query = $this->modelsManager->createQuery("SELECT * FROM App\Models\Furniture x WHERE x.id = $result");
        $furniture = $query->execute();
        
        // Update availability
        $conditions = ['id'=>$result];
        $stock = Furniture::findFirst([
        'conditions' => 'id= :id:',
        'bind' => $conditions,
        ]);
        $stock->available = 0;
        $success = $stock->save();
        
        // Pass data to view
        if($success) $this->view->furniture = $furniture;
        else
        {
            echo "Error while saving";
            $this->view->disable();
        }

        // Test Code
        // $test = array();
        // $result = array();

        // for ($i = 0; $i < sizeof($target); $i++) 
        // {
        //     $test[$i][0] = $target[$i]['id'];
            
        //     similar_text($base[0]['dimension'], $target[$i]['dimension'], $temp);
        //     $test[$i][1] = $temp;

        //     similar_text($base[0]['material'], $target[$i]['material'], $temp);
        //     $test[$i][2] = $temp;

        //     similar_text($base[0]['colours'], $target[$i]['colours'], $temp);
        //     $test[$i][3] = $temp;
            
        //     $result[$i] = 0.6 * $test[$i][1] + 0.3 * $test[$i][2] + 0.1 * $test[$i][3];
        //     $test[$i][4] = $result[$i];
        // }

        // var_dump($test);
        // rsort($result);
        // var_dump($result);
        // $this->view->disable();
    }

}