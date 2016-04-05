Fabricator(:log, class_name: Log) do
  created_at { Date.today }
  at 'info'
  method 'GET'
  path '/api/online/platforms/facebook_canvas/users/100002266342173/add_ticket'
  host 'services.pocketplaylab.com'
  fwd '\"94.66.255.106\"'
  dyno 'web.12'
  connect '12ms'
  service '21ms'
  status '200'
  bytes '78'
end

Fabricator(:user_counting_pending_messages_log, class_name: Log) do
  created_at { Date.today }
  at 'info'
  method 'GET'
  path '/api/users/12/count_pending_messages'
  host 'services.pocketplaylab.com'
  fwd '\"94.66.255.106\"'
  dyno 'web.12'
  connect '12ms'
  service '21ms'
  status '200'
  bytes '78'
end
