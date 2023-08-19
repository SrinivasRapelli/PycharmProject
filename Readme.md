1  Open Browser  <url>      <browser>
2  Maximize Browser Window
3  Click Element  <locator>
4  Input Text    <locator>
5  Sleep    4
6  Close Browser    #closing single window
   Close all browsers   #closing all windows
7  title should be      <title of the page>

# Selecting dropdowns

8  Select from list by value   <locator>    <value>          
9   Select from list by index   <locator>    <index>
10  Select from list by label   <locator>    <labelname>

# Handling Alerts
11   Handle alert   accept
12   handle alert   dismiss
13   alert should be present      <msg in the allert>    <accepts>
14   alert should not be present   <msg in the allert>    <dismiss>

# Browser commands
15   go to <url2>     #navigates to url2 from the current page(url1)
16   go back         #navigates back to the page

# get the text
17   ${variable}    Get Text     <locator>

# Mouse actions
18   drag and drop    <locator draggable element>       <locator of droppable element>
19   scroll element into view   <locator>   #scrools to the element
20   execute javascript  window.scrollTo(0,1500)    #scrolls to the perticular pixals
21   execute javascript   window.scrollTo(0,document.body.scrollHeight)    #scrolls to the end of the page
22   execute javascript   window.scrollTo(0,document.body.scrollHeight)     #scrolls to the top of the page                              

# Screen shots
23  capture element screenshot      <locator>       /path/to/save
24  capture page screenshot       /path/to/save

# Switch Window
25  Switch window   <title of the page>

# Wait commands
26  sleep   <no. of seconds>
27  Selenium speed     3   #it waits 3 seconds for every step
28  wait until page contains     <some text in the page>
29  set selenium implicit wait      <seconds>

# selecting radio button
30  Select Radio Button  <name>     <radioButton name>  
# Selecting Checkbox
31  Select Checkbox     <name>