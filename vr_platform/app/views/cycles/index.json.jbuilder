json.blsexposures @blsexposures do |loop|
  json.run loop.loop_no
  json.score loop.score
  json.annotation loop.annotation
end