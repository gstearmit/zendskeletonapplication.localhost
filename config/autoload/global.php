<?php
/**
 * Global Configuration Override
 *
 * You can use this file for overriding configuration values from modules, etc.
 * You would place values in here that are agnostic to the environment and not
 * sensitive to security.
 *
 * @NOTE: In practice, this file will typically be INCLUDED in your source
 * control, so do not include passwords or other sensitive information in this
 * file.
 */

return array(
     'db' => array(
         'driver'         => 'Pdo',
         'dsn'            => 'mysql:dbname=zf2oauthen2;host=localhost',
         'driver_options' => array(
             PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''
         ),
     ),
     'service_manager' => array(
         'factories' => array(
             'Zend\Db\Adapter\Adapter'=> 'Zend\Db\Adapter\AdapterServiceFactory',
         		'CacheFile' => function($sm) {
         			return \Zend\Cache\StorageFactory::factory(array(
         					'plugins' => array('serializer'),
         					'adapter' => array(
         							'name' => 'filesystem',
         							'options' => array(
         									'dirLevel' => 1,
         									'cacheDir' => __DIR__ . '/../../../data/cache',//noi luu cache
         									'dirPermission' => '0755',
         									'filePermission' => '0666',
         									'namespaceSeparator' => '-zf2-',
         									'ttl' => 10, //10 phut cache het han
         							),
         					),
         					));
         					}
         		
         ),
     ),
 );