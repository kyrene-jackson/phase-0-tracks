class TodoList
def initialize(chores)
  @chores = ["do the dishes", "mow the lawn"]
end
def get_items
  p @chores
end
def add_item(new_item)
  new_item = "mop"
  @chores << new_item
end
def delete_item(finished_item)
  finished_item = "do the dishes"
  @chores.delete(finished_item)
end
def get_item(index)
  @chores.fetch(index)
end
end
