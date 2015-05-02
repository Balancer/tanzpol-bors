<h2>Последние новости</h2>
<ul class="small_catg popular_catg wow fadeInDown">
{foreach $news as $x}
  <li>
    <div class="media wow fadeInDown">
      <a href="{$x.thumbnail_url}" class="media-left">
        <img alt="img" src="{$x.thumbnail_url}" style="xwidth: 112px!important; xheight:112px!important" />
      </a>
      <div class="media-body">
        <h4 class="media-heading"><a href="{$x.url}">{$x.topic_title}</a></h4>
        <p class="snip">{$x.snip}</p>
      </div>
    </div>
  </li>
{/foreach}
</ul>
