class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Bus < Car   #子クラス「<」 親クラス                             #class Bus
end                                                                   #  def run(distance)
                                                                      #    puts "車で#{distance}キロ走ります。"
bus = Bus.new                                                         #  end
bus.run(5)                                                            #end
                                                                      #
# Busクラス(子クラス)には、何もメソッドが書かれていないが、　　　　 　#bus = Bus.new
#継承をしているためCarクラス(親クラス)のrunメソッドが読み込まれる     #bus.run(5)


#CarクラスとBusクラスに書かれているメソッドの内容が重複 こういう時に使うのが「継承」
#既にクラスで定義したメソッドを別のクラスでも受け継ぐことを継承という

puts Bus.superclass
#親クラスを調べるときは「.superclass」を使用

#継承するべきか迷った時は、「A は B の一種である」が成立するか、によって判断
#このような関係のことをis-aの関係と言う