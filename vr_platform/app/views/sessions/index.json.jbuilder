json.array! @sessions do |event|
  json.extract! event, :id, :patient_id, :appointment_date, :number
  json.title "Session No. #{event.number}, #{event.patient.first_name} #{event.patient.last_name}"
  json.start event.created_at
  json.url session_path(session.id)
end