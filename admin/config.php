<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/shopxinh/admin/');
define('HTTP_CATALOG', 'http://localhost/shopxinh/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/shopxinh/admin/');
define('HTTPS_CATALOG', 'http://localhost/shopxinh/');

// DIR
$root = 'D:/xampp/htdocs/shopxinh/';
define('DIR_APPLICATION', $root . 'admin/');
define('DIR_SYSTEM', $root . 'system/');
define('DIR_IMAGE', $root . 'image/');
define('DIR_LANGUAGE', $root . 'admin/language/');
define('DIR_TEMPLATE', $root . 'admin/view/template/');
define('DIR_CONFIG', $root . 'system/config/');
define('DIR_CACHE', $root . 'system/storage/cache/');
define('DIR_DOWNLOAD', $root . 'system/storage/download/');
define('DIR_LOGS', $root . 'system/storage/logs/');
define('DIR_MODIFICATION', $root . 'system/storage/modification/');
define('DIR_UPLOAD', $root . 'system/storage/upload/');
define('DIR_CATALOG', $root . 'catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'shopxinh');
define('DB_PORT', '3306');
define('DB_PREFIX', 'bxs_');
