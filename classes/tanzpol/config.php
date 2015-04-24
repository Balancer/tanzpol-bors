<?php

class tanzpol_config extends bors_config
{
	function object_data()
	{
		return array_merge(parent::object_data(), array(
			'access_engine' => 'bors_access_public',
			'template' => 'xfile:tanzpol/bootstrap.tpl',
		));
	}

	function page_data()
	{
		return array_merge(parent::page_data(), array(
			'bottom_counters' => 'xfile:tanzpol/yandex-metrika.html',
		));
	}
}