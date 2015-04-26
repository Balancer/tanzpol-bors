<?php

class tanzpol_theme_magexpress_index extends bors_themes_bootstrap3
{
	function page_data()
	{
		return array_merge(parent::page_data(), array(
			'asset_path' => '/magexpress',
		));
	}
}
