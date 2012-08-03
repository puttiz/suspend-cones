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

  def popup(x=0, y=0, trigger = ".dropdown-toggle", srcNode = ".dropdown-menu")
    {
      :'data-widget-type' => "Popup",
      :'data-widget-config' => "{
        'srcNode' : '#{srcNode}',
        'trigger' : '#{trigger}',
        'triggerType' : 'mouse',
        'effect' : {
          'effect' : 'slide',
          'easing' : 'easeBoth',
          'duration' : '0.5'
        },
        'align' : {
          'node' : '#{trigger}',
          'offset' : [#{x},#{y}],
          'points' : ['bl', 'tl']
        }
      }"
    }
  end
end