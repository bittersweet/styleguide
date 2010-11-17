class Project < ActiveRecord::Base
  # Include eerst andere modules
  include andere_module

  # Daarna rails macros
  acts_as_tree

  # Associaties, op alfabet
  belongs_to :client

  # Validaties
  validates_presence_of :name

  # Scopes
  scope :active, where(:status => "active")
  scope :latest, limit(10)

  # Daarna andere declaraties zoals attr_protected of alias etc
  attr_protected :client_id

  # Callbacks
  after_save :update_lists

  # Define eerst class methods
  def self.class_method1
  end

  def self.class_method2
  end

  # Daarna instance methods
  def instance_method1(arg1)
  end

  def instance_method2(arg2)
  end

# Protected en private methods worden niet extra geindent
protected

  def protected_method
  end

private

  def private_method
  end

end

