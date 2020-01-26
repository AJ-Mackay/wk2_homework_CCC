class Bar

attr_accessor :till

def initialize(till)
  @till = till
end

def from_guest_to_till(guest, fee)
  guest.wallet - fee
  till_total = @till += fee
  return till_total
end

end
