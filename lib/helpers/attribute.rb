module AttributeHelper
  def rbgc(color = "<?= $colors[rand(0, $length)] ?>")
    { style: "background-color: #{color};" }
  end

  def phref(url)
    { href: "<?= #{url} ?>"}
  end

  def psrc(url)
    { src: "<?= #{url} ?>"}
  end

  def zhref
    { rel: "nofollow"}
  end

  def carousel(content = "carousel-items", nav = "carousel-switch")
    {
      :'data-widget-type'   => "Carousel",
      :'data-widget-config' => "{
        'contentCls'      : '#{content}',
        'navCls'          : '#{nav}',
        'activeTriggerCls': 'active',
        'prevBtnCls'      : 'left',
        'nextBtnCls'      : 'right',
        'effect'          : '<?=$_MODULE['effect']?>',
        'easing'          : 'easeBoth',
        'triggerType'     : 'click',
        'duration'        : '1.2',
        'autoplay'        : '',
        'interval'        : '3'
      }"
    }
  end
end