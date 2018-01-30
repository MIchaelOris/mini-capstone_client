class Supplier
  attr_accessor :name, :email, :phone_number
  def initialize(input_options)
    @supplier_id = input_options["supplier_id"]
    @name = input_options["name"]
    @email = input_options["email"]
    @phone_number = input_options["phone_number"]
  end

  def self.convert_hashs(supplier_hashs)
    supplier_collection = []

    supplier_hashs.each do |supplier_hash|
      supplier_collection << Supplier.new(supplier_hash)
    end

    supplier_collection
  end
end