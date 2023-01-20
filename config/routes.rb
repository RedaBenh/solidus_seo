# frozen_string_literal: true

Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  resources :products
  # route globbing for pretty nested taxon and product paths
  get '/t/*id', to: 'taxons#show', as: :nested_taxons
end
