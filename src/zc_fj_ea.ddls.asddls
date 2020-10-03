@EndUserText.label: 'Event'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@UI: { headerInfo: { typeName: 'Event', typeNamePlural: 'Events', title: { type: #STANDARD, value: 'EventName' } } }
@Search.searchable: true

define root view entity ZC_FJ_EA
  as projection on ZI_FJ_EA
{
      @UI.facet: [ { id:              'Event',
                     purpose:         #STANDARD,
                     type:            #IDENTIFICATION_REFERENCE,
                     label:           'Event',
                     position:        10 } ]
      @UI.hidden: true
  key event_uuid as EventUUID,


      @UI: {
          lineItem:       [ { position: 10, importance: #HIGH } ],
          identification: [ { position: 10, label: 'Event ID [1,...,99999999]' } ] }
      @Search.defaultSearchElement: true
      event_id   as EventID,

      @UI: {
          lineItem:       [ { position: 20, importance: #HIGH } ],
          identification: [ { position: 20 } ],
          selectionField: [ { position: 20 } ] }

      @ObjectModel.text.element: ['EventName'] ----meaning?
      @Search.defaultSearchElement: true
      event_name as EventName,

      @UI.identification: [ { position: 70, label: 'Remarks' } ]
      location   as Location,

      @UI: {
          lineItem:       [ { position: 40, importance: #MEDIUM } ],
          identification: [ { position: 40 } ] }
      date_from  as DateFrom,

      @UI: {
          lineItem:       [ { position: 41, importance: #MEDIUM } ],
          identification: [ { position: 41 } ] }
      date_to    as DateTo
}
