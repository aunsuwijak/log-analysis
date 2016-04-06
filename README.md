# log-analysis

This program is created as a developer challenge application for PlayLab.

# Usage
```
ruby app.rb
```
** Note that I did not put sample.log file inside the repo, please make sure that you put it in project root directory.

# Output
```
"GET /api/users/{user_id}/count_pending_messages"
"The number of times the URL was called : 2430"
"The mean (average) of the response time : 25.99670781893004"
"The median of the response time : 15.0"
"The mode of the response time : 11"
"The \"dyno\" that responded the most : web.2"
"GET /api/users/{user_id}/get_messages"
"The number of times the URL was called : 652"
"The mean (average) of the response time : 62.170245398773005"
"The median of the response time : 32.0"
"The mode of the response time : 23"
"The \"dyno\" that responded the most : web.11"
"GET /api/users/{user_id}/get_friends_progress"
"The number of times the URL was called : 1117"
"The mean (average) of the response time : 111.89704565801253"
"The median of the response time : 51"
"The mode of the response time : 35"
"The \"dyno\" that responded the most : web.5"
"GET /api/users/{user_id}/get_friends_score"
"The number of times the URL was called : 1533"
"The mean (average) of the response time : 228.7651663405088"
"The median of the response time : 143"
"The mode of the response time : 67"
"The \"dyno\" that responded the most : web.7"
"POST /api/users/{user_id}"
"The number of times the URL was called : 2022"
"The mean (average) of the response time : 82.77546983184965"
"The median of the response time : 46.0"
"The mode of the response time : 23"
"The \"dyno\" that responded the most : web.11"
"GET /api/users/{user_id}"
"The number of times the URL was called : 0"
"The mean (average) of the response time : "
"The median of the response time : "
"The mode of the response time : "
"The \"dyno\" that responded the most : "
```
