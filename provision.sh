    sudo apt-get update
    sudo apt-get install -y mysql-server
    sudo systemctl start mysql
    sudo systemctl enable mysql

    # Instalar Apache, PHP e PHPMyAdmin
    sudo apt-get install -y apache2 php libapache2-mod-php php-mysql
    sudo apt-get install -y phpmyadmin

    # Habilitar o Apache e MySQL para iniciar com o sistema
    sudo systemctl enable apache2
    sudo systemctl enable mysql

    # Configurar Apache para acessar o PHPMyAdmin
    echo 'Include /etc/phpmyadmin/apache.conf' | sudo tee -a /etc/apache2/apache2.conf
    sudo systemctl restart apache2