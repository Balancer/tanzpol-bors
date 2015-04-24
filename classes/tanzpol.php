<?php

class tanzpol extends bors_object
{
	function url() { return '/'; }
	function nav_name() { return 'Танцпол'; }
	static function register_url() { return 'http://www.balancer.ru/forum/punbb/register.php'; }

	static function run()
	{
		define('BORS_SITE', dirname(__DIR__));

		bors::init();
		require_once(BORS_CORE.'/main.php');
	}
}
