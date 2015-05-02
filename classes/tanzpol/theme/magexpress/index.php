<?php

class tanzpol_theme_magexpress_index extends bors_themes_bootstrap3
{
	var $layout_class = 'tanzpol_theme_magexpress_layout';

	function page_data()
	{
		return array_merge(parent::page_data(), array(
			'asset_path' => '/magexpress',
		));
	}
}
