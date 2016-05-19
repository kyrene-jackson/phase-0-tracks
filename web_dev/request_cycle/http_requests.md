## 9.1 Release 0: How the Web Works
#### What are some common HTTP status codes?
  * 200 - OK
  * 304 - Not modified
  * 404 - Not found
  * 302 - Found
  * 204 - No content
  * 400 - Bad request
  * 401 - Unauthorized
  * 403 - Forbidden
  * 500 - Internal server error
  * 502 - Bad gateway
  * 503 - Service unavailable
  * 504 - Gateway timeout



#### What is the difference between a GET request and a POST request? When might each be used?
  * GET:
      * Requests data from a specified resource and should only be used to retrieve data. GET requests should never be used when dealing with sensitive data or used for actions that have side effects.
      * Examples of use include: entering a url through your browser to load a webpage, using the back button your browser, refreshing a page.
  * POST
      * Submits data to be processed to a specified resource. POST is slightly safer than GET in that data is not visible through the URL or stored in browser history/ logs.
      * Examples of use include: Uploading a file, inserting data through a form.
