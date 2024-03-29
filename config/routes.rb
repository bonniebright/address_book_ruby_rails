Wikipages::Application.routes.draw do
  match('contacts', {:via => :get, :to => 'contacts#index'})
  match('contacts', {:via => :post, :to => 'contacts#create'})
  match('contacts/new', {:via => :get, :to => 'contacts#new'})
  match('contacts/:id', {:via => :get, :to => 'contacts#show'})
  match('contacts/:id/edit', {:via => :get, :to => 'contacts#edit'})
  match('contacts/:id', {:via => [:patch, :put], :to => 'contacts#update'})
  match('contacts/:id', {:via => :delete, :to => 'contacts#destroy'})
  match('/', {:via => :get, :to => 'contacts#index'})

  match('contacts/:contact_id/phones/:id/edit', {:via => :get, :to => 'phones#edit'})
  match('contacts/:contact_id/phones/:id', {:via => :delete, :to => 'phones#destroy'})
  match('contacts/:contact_id/phones/new', {:via => :get, :to => 'phones#new'})
  match('contacts/:contact_id/phones', {:via => :post, :to => 'phones#create'})
  match('phones/:id', {:via => [:patch, :put], :to => 'phones#update'})

  match('contacts/:contact_id/emails/new', {:via => :get, :to => 'emails#new'})
  match('contacts/:contact_id/emails', {:via => :post, :to => 'emails#create'})
  match('contacts/:contact_id/emails/:id/edit', {:via => :get, :to => 'emails#edit'})
  match('emails/:id', {:via => [:patch, :put], :to => 'emails#update'})
  match('contacts/:contact_id/emails/:id', {:via => :delete, :to => 'emails#destroy'})

  match('contacts/:contact_id/addresses/new', {:via => :get, :to => 'addresses#new'})
  match('contacts/:contact_id/addresses', {:via => :post, :to => 'addresses#create'})
  match('contacts/:contact_id/addresses/:id/edit', {:via => :get, :to => 'addresses#edit'})
  match('addresses/:id', {:via => [:patch, :put], :to => 'addresses#update'})
  match('contacts/:contact_id/addresses/:id', {:via => :delete, :to => 'addresses#destroy'})
end
