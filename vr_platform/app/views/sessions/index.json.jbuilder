json.array! @sessions do |event|
  json.extract! event, :id, :patient_id, :appointment_date, :number
  json.title event.session_label
  json.start event.appointment_date
  json.url session_path(event.id)
end