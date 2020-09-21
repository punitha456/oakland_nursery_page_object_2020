class OakErrorPage
  include PageObject

  div(:error_message, class: 'NetPS-MessageBlock')

  def verify_wishlist_is_empty_message_displayed message
    fail "Wish list Empty message is not shown - #{error_message_element.strong.text}" unless error_message_element.strong.text == message
  end
end