<!DOCTYPE html>
<html>
<head>

    <title>Fabelio</title>

    <!-- Load CSS -->
    <?= $this->assets->outputCss() ?>

</head>

<body>

    <!-- Content -->
    

<div class="container">

    <div class="row">

        <div class="col-lg-9">

            <br>
            <?php foreach ($furniture as $item) { ?>
            <div class="card mt-1">
                <img class="card-img-top img-fluid" src="<?= $item->picture ?>" alt="">
                <div class="card-body">
                    <h3 class="card-title"><?= $item->productName ?></h3>
                    <h5>Rp <?= $item->price ?></h4>
                    <p class="card-text">
                        Dimension: <?= $item->dimension ?> <br>
                        Colours: <?= $item->colours ?> <br>
                        Material: <?= $item->material ?> <br>
                    </p>
                </div>
            </div>
            <br>
            <?php } ?>

        </div>
    
    </div>
    
</div>
                                  


    <!-- Load JS -->
    <?= $this->assets->outputJs() ?>

</body>
</html>
