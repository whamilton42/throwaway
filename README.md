throwaway
=========

Ruby gem which validates email addresses are not from a throwaway address provider. The list of providers is simply hardcoded - I'm unaware of any external service which will provide an up-to-date list of such providers. If one becomes available, I will slot it in to the gem.


usage
=====

	validates :email, :throwaway => false
	validates :email, :throwaway => true, :message => "emails from disposable providers are not allowed at Woof.com. Sorry."

 If, for some bizarre reason, you want to validate that address *are* from a throwaway provider, you can do that too.
	validates :email, :throwaway => true