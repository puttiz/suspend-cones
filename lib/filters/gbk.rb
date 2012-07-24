class GBKFilter < Nanoc::Filter
  identifier :gbk
  type :text => :text

  def run(content, params={})
    content.encode!('gbk', 'utf-8')
  end
end