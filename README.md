# Throwaway

This is a very simple Ruby gem which validates that email addresses are not from a throwaway address provider. 

The list of providers is simply hardcoded - I'm unaware of any external service which will provide an up-to-date list of such providers. If one becomes available, I will slot it in to the gem.


## Usage

### Query

Throwaway.is_throwaway?(email)
=> true/false

### Validator

	validates :email, :throwaway => false

Default message: "*is from a disposable email provider*"

	validates :email, :throwaway => false, :message => "emails from disposable providers are not allowed here. Sorry."

 If, for some bizarre reason, you want to validate that address *are* from a throwaway provider, you can do that too.

	validates :email, :throwaway => true