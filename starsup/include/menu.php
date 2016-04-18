			<nav id="menu">
				<ul>
                	<li class="login">
                    	<img src="<?=$urlroot?>img/user.jpg" width="25%"/><br/>
                    	<?php
                        if(isset($_SESSION['prenom_users'])){
                        echo $_SESSION['prenom_users'].' '.$_SESSION['nom_users'];
                        }
                        else
                        {
                            echo'Veuillez vous connecter pour accèder à votre compte';
                     }

                         ?>
                    </li>
					<li><a id="equipe" href="<?=$urlroot?>referent/referent.php">Mes collaborateurs</a></li>
                    <li><a id="exit" href="<?=$urlroot?>logout.php">Me déconnecter</a></li>
				</ul>
			</nav>