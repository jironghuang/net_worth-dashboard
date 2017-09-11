# net_worth-dashboard

Just a simple shiny dashboard that I include in my anonymised blog for my own reference. It's just a simple way to keep track of my personal financial milestones.

In my own local computer, I've a spreadsheet that pulls the financial data from Yahoo. Then R will derive the 'current live' net worth and save it in a folder. 

Then when I run the code (usually on a daily basis), it will extract the data from the csv saved in the folder and create a shiny dashboard. Using an <iframe> tag, I could embed it in my blog via html.

All these steps take just 2 clicks of buttons (vba, then R run). If I've a server dedicated for this, I can automate and make it run on a daily basis or even host it online. But oh well...

Perhaps when I've more bandwidth, I will include asset allocation pie/doughnut charts just for completeness sake.

Cheers!

Jirong
