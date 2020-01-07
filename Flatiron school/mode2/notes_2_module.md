App:

- Create new app: corneal new app_name
- Create migrations and migrate
- Create models and inherit with ActiveRecord
- Add: use "Rack::MethodOverride" to config.ru
- Create routs in controller - http://www.restular.com
- Create views (.erb files)
- Connect routs with views in controller


## Create rake console task:
```ruby
task :console do
  Pry.start
end
```


# Rails

- rails new app
- rails g scaffold (create migrations + controllers, models and views)
- rails db:migrate
- rails d scaffold (destroy all scaffold generations)
- rails db:drop

- rails generators: rails g

---------
- rails g model: generate migrations and models
- rails g controller: generate controllers and views
- rails g resource model_name item item:integer model_name:belongs_to
- rails g resource model_name item item:integer related_model_name:references
--------
path helpers
```
- _path: use that!
- _url
```
--------
routs: items#name_method
items_controller: name_method
views: name_method.erb
----
routs: resources

resources :items - all methods
resources :items only: [:index, :show] - customized
resources :items except: [:index, :show] - customized

----

## Forms

This forms methods by default will use POST method

```
form_for
form_tag
```

## Permissions
```
params.require(:item).permit(:something, :something)
```

## Validation

Example with presence
```
validates :date, :patient_id, :doctor_id, presence: true
```

## Dependency

```
has_many :items, dependent :destroy
has_many :items, through: :other_items, dependent :destroy

```
## Migrations

remove:
```
rails g migration RemoveReviewRaitingClubFromCustomers review reiting:integer club_id:belongs_to
```
add:
```
$ rails g migration AddPartNumberToProducts part:string number:integer
```

## Rails cookies

session[:something]

## Rails authorization/authentication

authentication = identification
authorization = permission

"password" -> "ekrjgheriugheiru"
"password" + "salt" -> "salt_rkjngwoghqwgiohq43g0q2h4[3gq23]"


## Rails app creation sequence

- generate resources (migrations, models, controllers, views dir)
- migrate
- write has_many associations
- Controller: create methods - index, show, new, create, edit, update, destroy
- Views: create html.erb files -  index, show, edit, new
- Validations (in models, controller, view (flash - error message)
- Routs (only:)


