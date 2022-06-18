/*
Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email.
Output the library code.
https://platform.stratascratch.com/coding/9924-find-libraries-who-havent-provided-the-email-address-in-2016-but-their-notice-preference-definition-is-set-to-email
*/

SELECT 
  home_library_code
FROM library_usage
WHERE circulation_active_year = 2016
  AND provided_email_address is FALSE
  AND notice_preference_definition = 'email'
