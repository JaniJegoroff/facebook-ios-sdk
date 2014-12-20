module FacebookUtils
  def login_to_facebook
    tap_element('Log in with Facebook')
    sleep 3
    execute_sikuli_fb_login('facebook-login.sikuli')
    wait_for_element('mainScreen')
  end

  def logout_from_facebook
    tap_element('profilePictureButton')
    wait_for_element('loginScreen')
    tap_element('Log out')
    touch_element("view:'_UIAlertControllerActionView' label marked:'Log out'")
  end

  def given_logged_in_to_facebook
    tap_element('profilePictureButton')
    wait_for_element('loginScreen')
    login_to_facebook
  end

  private

  def execute_sikuli_fb_login(aPathToScript)
    Kernel.fail('You must set SIKULIX_HOME') if `echo $SIKULIX_HOME`.strip.empty?
    `$SIKULIX_HOME/runsikulix -r #{aPathToScript}`
  end
end

module CommonUtils
  def tap_element(aElement)
    wait_for_element(aElement)
    sleep 2
    tap_mark(aElement)
  end

  def touch_element(aQuery)
    wait_for { !query(aQuery).empty? }
    sleep 2
    touch(aQuery)
  end

  def wait_for_element(aElement)
    wait_for_element_exists("view marked:'#{aElement}'")
  end

  def main_screen_is_displayed
    wait_for_element('mainScreen')
  end

  def given_login_screen_is_opened
    tap_element('profilePictureButton')
    wait_for_element('loginScreen')
  end
end

World(FacebookUtils, CommonUtils)
