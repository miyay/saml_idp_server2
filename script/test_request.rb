require 'ruby-saml'

class TestRequest
  OneLoginAppId = "saml_idp_server2"

  def make_saml_request(requested_saml_acs_host)
    auth_request = ::OneLogin::RubySaml::Authrequest.new
    auth_url = auth_request.create(saml_settings(requested_saml_acs_host))
    CGI.unescape(auth_url.split("=").last)
  end

  private

  def saml_settings(acs_host)
    settings = OneLogin::RubySaml::Settings.new

    settings.assertion_consumer_service_url = "http://#{acs_host}/saml/consume"
    settings.sp_entity_id                   = "http://#{acs_host}/saml/metadata"
    settings.idp_entity_id                  = "https://app.onelogin.com/saml/metadata/#{OneLoginAppId}"
    settings.idp_sso_target_url             = "https://app.onelogin.com/trust/saml2/http-post/sso/#{OneLoginAppId}"
    settings.idp_slo_target_url             = "https://app.onelogin.com/trust/saml2/http-redirect/slo/#{OneLoginAppId}"
    settings.idp_cert_fingerprint           = "ふぃんがー"
    settings.idp_cert_fingerprint_algorithm = "http://www.w3.org/2000/09/xmldsig#sha1"
    settings.name_identifier_format         = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"

    # Optional for most SAML IdPs
    settings.authn_context = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"
    # or as an array
    settings.authn_context = [
      "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport",
      "urn:oasis:names:tc:SAML:2.0:ac:classes:Password"
    ]

    # Optional bindings (defaults to Redirect for logout POST for acs)
    settings.single_logout_service_binding      = "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect"
    settings.assertion_consumer_service_binding = "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST"

    settings
  end
end

saml_request = TestRequest.new.make_saml_request("http://foo.example.com/saml/consume")
puts "saml/auth?SAMLRequest=#{CGI.escape(saml_request)}"
