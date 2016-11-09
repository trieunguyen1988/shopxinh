<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/shopxinh/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/shopxinh/');

$root = 'D:/xampp/htdocs/shopxinh/';
define('DIR_APPLICATION', $root . 'catalog/');
define('DIR_SYSTEM', $root . 'system/');
define('DIR_IMAGE', $root . 'image/');
define('DIR_LANGUAGE', $root . 'catalog/language/');
define('DIR_TEMPLATE', $root . 'catalog/view/theme/');
define('DIR_CONFIG', $root . 'system/config/');
define('DIR_CACHE', $root . 'system/storage/cache/');
define('DIR_DOWNLOAD', $root . 'system/storage/download/');
define('DIR_LOGS', $root . 'system/storage/logs/');
define('DIR_MODIFICATION', $root . 'system/storage/modification/');
define('DIR_UPLOAD', $root . 'system/storage/upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'shopxinh');
define('DB_PORT', '3306');
define('DB_PREFIX', 'bxs_');
