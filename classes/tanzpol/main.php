<?php

class tanzpol_main extends tanzpol_page
{
	var $title_ec = 'Tanzpol';
	var $nav_name_ec = 'политика';
	var $description = 'Политические дискуссии';

	function create_time() { return 1343759827; }

	function cache_static() { return 600; }

	static function cat_names() { return "tanzpol"; }

	function body_data()
	{
		$data = json_decode(blib_http::get_cached('http://www.balancer.ru/rpc/json/tanzpol', 600), true);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=новости&fields=body,title,snip&thumb=550x330(up,crop)&img=550&limit=10';
		$big_pics = json_decode(blib_http::get_cached($url, 600), true);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=новости&fields=body,title,snip&thumb=567x330(up,crop)&img=567&limit=3';
		$big_pics_mid = json_decode(blib_http::get_cached($url, 600), true);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=новости&fields=body,title,snip&thumb=300x215(up,crop)&limit=4'
			.'&id_not='.join(',', array_keys($big_pics));
		$top_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_keys($top_news);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=Россия/новости&fields=body,title,snip&thumb=390x240(up,crop)&limit=1'
			.'&id_not='.join(',', array_keys($used_keys));
		$russia_news1 = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($russia_news1));
		$russia_news1 = array_pop($russia_news1);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=Россия/новости&fields=body,title,snip&thumb=112x112(up,crop)&limit=3'
			.'&id_not='.join(',', $used_keys);
		$russian_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($russian_news));

/*		Украина */
		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=Украина/новости&fields=body,title,snip&thumb=390x240(up,crop)&limit=1'
			.'&id_not='.join(',', array_keys($used_keys));
		$ua_news1 = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($ua_news1));
		$ua_news1 = array_pop($ua_news1);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=Украина/новости&fields=body,title,snip&thumb=112x112(up,crop)&limit=2'
			.'&id_not='.join(',', $used_keys);
		$ua_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($ua_news));

/*		Происшествия */
		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=происшествия,события,аварии,катастрофы,стихийные+бедствия&fields=body,title,snip&thumb=390x240(up,crop)&limit=1'
			.'&id_not='.join(',', array_keys($used_keys));
		$event_news1 = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($event_news1));
		$event_news1 = array_pop($event_news1);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=происшествия,события,аварии,катастрофы,стихийные+бедствия&fields=body,title,snip&thumb=112x112(up,crop)&limit=2'
			.'&id_not='.join(',', $used_keys);
		$event_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($event_news));

/*		Общество, экономика */
		$tags='новости/общество,экономика,социум,протесты';
		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags='.$tags.'&fields=body,title,snip&thumb=390x240(up,crop)&limit=1'
			.'&id_not='.join(',', array_keys($used_keys));
		$social_news1 = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($social_news1));
		$social_news1 = array_pop($social_news1);

		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags='.$tags.'&fields=body,title,snip&thumb=112x112(up,crop)&limit=3'
			.'&id_not='.join(',', $used_keys);
		$social_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($social_news));

/*		Флот */
		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=новости/флот&fields=body,title,snip&thumb=292x150(up,crop)&limit=2'
			.'&id_not='.join(',', $used_keys);
		$navy_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($navy_news));

/*		Авиация */
		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=новости/авиация&fields=body,title,snip&thumb=292x150(up,crop)&limit=2'
			.'&id_not='.join(',', $used_keys);
		$avia_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($avia_news));

/* Прочее */
		$url = 'http://www.balancer.ru/rpc/json/find/balancer_board_post?tags=новости&fields=body,title,snip&thumb=112x112(up,crop)&limit=3'
			.'&id_not='.join(',', $used_keys);
		$latest_news = json_decode(blib_http::get_cached($url, 600), true);
		$used_keys = array_merge($used_keys, array_keys($latest_news));

		return array_merge(parent::body_data(), compact('avia_news', 'big_pics', 'big_pics_mid', 'event_news', 'event_news1',
			'latest_news', 'navy_news', 'russia_news1', 'russian_news',
			'social_news1', 'social_news',
			'ua_news', 'ua_news1', 'top_news'), array(
			'asset_path' => '/magexpress',
		), $data);
//		return json_decode(blib_http::get_cached('http://www.wrk.ru/news/tags/политика/last.json', 600), true);
	}
}
