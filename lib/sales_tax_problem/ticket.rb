# frozen_string_literal: true

class Ticket
  def initialize(command)
    @command = command
  end

  def afficher
    lines = []
    @command.command_items.each do |command_item|
      lines << "#{command_item.quantity} #{command_item.product.name}: #{format('%.2f', command_item.total_ttc)}"
    end

    lines << "Sales Taxes: #{format('%.2f', @command.taxes)}"
    lines << "Total: #{format('%.2f', @command.total_ttc)}"

    lines.join("\n")
  end
end
