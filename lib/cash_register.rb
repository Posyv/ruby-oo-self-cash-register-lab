class CashRegister

attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = [] 
        @itemprices = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times{@items.push(title)}
        quantity.times{@itemprices.push(price*quantity)}
    end

    def apply_discount
        if @discount == 0
        "There is no discount to apply."
        else
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        # total + discount
        "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction

        if @items == []
            @total = 0.0
            return @total
        else 
            self.total = self.total - @itemprices[-1]
        end
    end
end
    # def items
    #     quantity.times{@items.push(title)}
    # end

# cart = CashRegister.new(20)