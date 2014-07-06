local wibox = require("wibox")
bashets = require("bashets")
batterystatus = wibox.widget.textbox()
bashets.register("/home/deper29/.config/awesome/battery.sh",
        {
            widget = batterystatus,
            update_time = 30,
            separator = '|',
            format = "  Battery: $1"
        })
        
bashets.start()
