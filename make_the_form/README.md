# Create the forms

1. A Recipe has_many ingredients. Using the controller's existing create action:

```ruby
# POST /recipes
# POST /recipes.json
def create
  @recipe = Recipe.new(params[:recipe])
  @recipe.ingredients.build(params[:ingredients])

  respond_to do |format|
    if @recipe.save
      format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
      format.json { render json: @recipe, status: :created, location: @recipe }
    else
      format.html { render action: "new" }
      format.json { render json: @recipe.errors, status: :unprocessable_entity }
    end
  end
  end
```

Create the recipes form in the recipes/_form partial, so that it will allow you to create a recipe and add multiple ingredients.

2. An Ingredient belongs_to a Recipe. Using the controller's existing created action:

```ruby
def create
  @ingredient = Ingredient.new(params[:ingredient])
  @ingredient.recipe = Recipe.find(params[:recipe_id])

  respond_to do |format|
    if @ingredient.save
      format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
      format.json { render json: @ingredienet, status: :created, location: @ingredient }
    else
      format.html { render action: "new" }
      format.json { render json: @ingredient.errors, status: :unprocessable_entity }
    end
  end
```

Create the ingredients form in the ingredients/_form partial so that it will allow you to create an ingredient and associate its recipe.