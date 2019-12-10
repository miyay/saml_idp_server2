# https://github.com/lawrencepit/ruby-saml-idp/blob/master/README.md

class SamlIdpController < SamlIdp::IdpController
  def idp_authenticate(email, password)
    true
  end

  def idp_make_saml_response(user)
    encode_SAMLResponse("you@example.com")
  end
end
