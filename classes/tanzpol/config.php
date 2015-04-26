<?php

class tanzpol_config extends bors_config
{
	function object_data()
	{
		return array_merge(parent::object_data(), array(
			'access_engine' => 'bors_access_public',
//			'template' => 'xfile:tanzpol/bootstrap.tpl',
//			'theme_class' => 'tanzpol_theme_newsreporter_index',
			'theme_class' => 'tanzpol_theme_magexpress_index',
		));
	}

	function page_data()
	{
		return array_merge(parent::page_data(), array(
			'bottom_counters' => 'xfile:tanzpol/yandex-metrika.html',
		));
	}
}