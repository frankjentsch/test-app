@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_FJ_EA
  as select from zfj_event as Event
{
  key event_uuid,
      event_id,
      event_name,
      location,
      is_online,
      date_from,
      date_to
}
