# Fabelio-Intern

I'm using PHP and Phalcon framework to build the backend of the web. I used SQL Server for the database. I'm also using WSL which is the windows subsystem for linux. 
I've already included the htaccess file in the root and public folder too. 

Note: The product list starts from Sofa Tempat Tidur Mochi

Setup Manual:
1. Setup the virtual host configuration. I'm setting up my vhost in WSL so the apache virtual host location should be in /etc/apache2/sites-available.
If you are accessing this from windows, I think you can find the conf file in your apache/conf/extra folder. Then you should add this command:

```
<VirtualHost *:80>
        DocumentRoot "/var/www/html/intern/public"
        ServerName intern.local
        ErrorLog ${APACHE_LOG_DIR}/intern.local-error_log
        CustomLog ${APACHE_LOG_DIR}/intern.local-access_log common

        <Directory "/var/www/html/intern/public">
                AllowOverride All
                Require all granted
        </Directory>
</VirtualHost>
```

2. Then, in linux, you have to enable this by using the 

```
sudo a2ensite intern.local
```

and then reload apache by using

```
service apache2 reload 
```

From windows, just click stop and start apache again (I used XAMPP, the other program will be similar to I think).

3. Setup the virtual host address. I used hostsman application to do it, but you can also do it manually. It should be in C:\Windows\System32\drivers\etc\hosts. 
Add this line into the file. Make sure you open the notepad using administrator privileges.

```
127.0.0.1       intern.local
```

4. Setup the database. I don't know if this step is neccessary or not but I add this step just in case.
I think any database works fine I guess. You can use phpmyadmin I think. I already included the query file in the repo.

5. You can test the web by opening intern.local and I hope it works :)
