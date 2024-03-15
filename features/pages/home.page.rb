class LoggedPage < SitePrism::Page

    element :user, :xpath, "//span[@class='m-auto']"
    element :inbox, :xpath, "//span[@title='Inbox [G] [I]']"

    def checkLoginSuccesful
        expect(user.text).to eql "OG"
        expect(inbox.text).to eql "Inbox"
    end
end
