# Throwaway

This is a very simple Ruby gem which validates that email addresses are not from a disposable email address provider. The list of providers is simply hardcoded, so no network time is required. I'll try and keep it up to date, but such an endeavour is pretty impossible. Catching the most common providers does help with fraud prevention etc though.


## Usage

### Query

	Throwaway.is_throwaway?(email)
	=> true/false

### Validator

	validates :email, :throwaway => false

Default message: *is from a disposable email provider*

	validates :email, :throwaway => false, :message => "emails from disposable providers are not allowed here. Sorry."

 If, for some bizarre reason, you want to validate that address *are* from a throwaway provider, you can do that too.

	validates :email, :throwaway => true