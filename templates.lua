--     
-- File: templates.lua
--

function google_app(domain)
  -- Configure mail exchangers
  mx(domain, "aspmx.l.google.com", 5)
  mx(domain, "alt1.aspmx.l.google.com", 10)
  mx(domain, "alt2.aspmx.l.google.com", 10)
  mx(domain, "aspmx2.googlemail.com", 20)
  mx(domain, "aspmx3.googlemail.com", 20)
  
  
  -- Configure SPF
  txt(domain, "v=spf1 a mx include:_spf.google.com ~all")
end
