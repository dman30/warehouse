class Article
  include Mongoid::Document

  # belongs_to :producer
  # belongs_to :distributor
  # belongs_to :employee

  # validates_presence_of :category, :name, :serial_no, :barcode, :producer, :distributor,
  # 	:purchase_date, :warranty_expiration

  def category
  	@category
  end

  def name
  	@name
  end

  def serial_no
  	@serial_no
  end

  def barcode
  	@barcode
  end

  def purchase_date
  	@purchase_date
  end

  def warranty_expiration
  	@warranty_expiration
  end

  def note
  	@note
  end

end
