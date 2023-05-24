#!/usr/bin/env ruby

require 'tty-prompt'

def branches
  `git branch  --format="%(refname:short)"`.split("\n").reject { |b| ["master", "main", "staging", "test"].include?(b) }
end

def delete_branches
  prompt = TTY::Prompt.new

  loop do
    choices = branches
    break if choices.empty?

    selected_branch = prompt.select('Select branch to delete:', choices, per_page: 10, filter: true)

    break if selected_branch.nil?

    confirm = prompt.yes?("Are you sure you want to delete branch '#{selected_branch}'? (Press Enter to confirm, any other key to cancel)")

    if confirm
      puts "Deleting branch '#{selected_branch}'..."
      `git branch -D #{selected_branch}`
      puts "Branch '#{selected_branch}' deleted successfully."
    else
      puts "Branch deletion canceled."
    end
  end
end

delete_branches
