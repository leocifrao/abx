
    <?php include 'header.php'; ?>
           
        <div class="product-page small-11 large-12 columns no-padding small-centered">
            
            <div class="global-page-container">

            <?php
                $cod_prato = $_GET['prato'];

                $server = 'localhost';
                $user = 'root';
                $password = '';
                $db_name = 'restaurante';
                $port = '3306';

                $db_connect = new mysqli($server,$user,$password,$db_name,$port);
                mysqli_set_charset($db_connect,"utf8");

                if ($db_connect->connect_error) {
                    echo 'Falha: ' . $db_connect->connect_error;
                } else {
                    // echo 'Conexão feita com sucesso' . '<br><br>';                          
                    $sql = "SELECT * from pratos WHERE codigo='$cod_prato'";
                    $result = $db_connect->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            
                            $nome_prato= $row['nome'];
                            $categoria_prato= $row['categoria'];
                            $descr_prato= $row['descricao'];
                            $preco_prato= $row['preco'];
                            $calorias_prato= $row['calorias'];
                        }
                    }
                }
            ?>
                
            <php if ($nome_prato != NULL) { ?>

                <div class="product-section">
                    <div class="product-info small-12 large-5 columns no-padding">
                        <h3><?php echo $nome_prato; ?></h3>
                        <h4><?php echo $categoria_prato; ?></h4>
                        <p><?php echo $descr_prato; ?>     
                        </p>

                        <h5><b>Preço: </b>R$ <?php echo $preco_prato; ?></h5>
                        <h5><b>Calorias: </b><?php echo $calorias_prato; ?></h5> 
                    </div>

                    <div class="product-picture small-12 large-7 columns no-padding">
                        <img src="img/cardapio/<?php echo $cod_prato; ?>.jpg" alt="Foto do prato: <?php echo $nome_prato; ?>">
                    </div>

                </div>

            <?php} else {
                echo 'Prato não encontrado!' . '<br>';
            } ?>

            <div class="go-back small-12 columns no-padding">
                <a href="cardapio.php"><< Voltar ao Cardápio</a>
            </div>

        </div>
    </div>
        
    <?php include 'footer.php'; ?>
