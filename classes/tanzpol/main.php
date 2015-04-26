<?php

class tanzpol_main extends tanzpol_page
{
	var $title_ec = 'Tanzpol';
	var $nav_name_ec = 'политика';
	var $description = 'Политические дискуссии';

	function create_time() { return 1343759827; }

	static function cat_names() { return "tanzpol"; }

	function body_data()
	{
		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tag=политика&fields=body,title,snip&thumb=176x122(up,crop)&limit=3';
		$world_news = json_decode(file_get_contents($url), true);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tag=политика&fields=body,title,snip&thumb=176x122(up,crop)&limit=3&id_not='
			.join(',', array_keys($world_news));
		$latest_news = json_decode(file_get_contents($url), true);

		return array_merge(parent::body_data(), compact('latest_news', 'world_news'), array(
		));
//		return json_decode(file_get_contents('http://www.wrk.ru/news/tags/политика/last.json'), true);
	}
}
