require 'sales_tax_problem/version'

require 'sales_tax_problem/command'
require 'sales_tax_problem/ticket'
require 'sales_tax_problem/command_item'
require 'sales_tax_problem/type'
require 'sales_tax_problem/type_with_tax'
require 'sales_tax_problem/type_without_tax'
require 'sales_tax_problem/import_type'
require 'sales_tax_problem/product'
require 'sales_tax_problem/round_util'
require 'sales_tax_problem/ticket_printer'
require 'sales_tax_problem/text_ticket_printer'

module SalesTaxProblem
  class Error < StandardError; end
  # Your code goes here...
end
