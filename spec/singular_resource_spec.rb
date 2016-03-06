# resources :invitations, only [:new, :create] do
#   #Note: Instead of having the InvitationsController have an accept
#   # action, it's pulled out to a separate, nested resource appropriately.
#   resource :acceptance, only: [:create]
#   resource :rejection, only: [:create]
# end
