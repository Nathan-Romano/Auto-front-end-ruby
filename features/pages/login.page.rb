class LoginPage < SitePrism::Page

  set_url ''
  element :emailField, :id, "username"
  element :passwordField, :id, "password"
  element :loginButton, :xpath, "/html/body/div[1]/div[4]/div[1]/main/div[1]/div[2]/form/button"
  element :alert, :xpath, ".//div[@class='alert-block--danger mb-4 bg-weak w-full border-none pl-3 pr-4 py-3 gap-3 rounded-lg flex items-start flex-nowrap']"

  def userLogin(email, password)
      emailField.set (email)
      passwordField.set (password)
      loginButton.click
  end

  def alert_message
      alert.text
  end

end
