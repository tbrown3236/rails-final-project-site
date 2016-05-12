module ApplicationHelper

  def calendar(month, year)

    day_of_week = Time.now.strftime("%w").to_i
    cal_str = "<table border='1'>\n\t<tr>\n"


    now = Time.now
    prev_month = month - 1
    prev_year = year - 1
    if (prev_month <= 0)
      prev_month = 12
      prev_year = year - 1
    end
    next_month = month + 1
    next_year = year + 1
    if (next_month >= 12)
      next_month = 1
      next_year = year + 1
    end


    display_time = Time.new(year, month)
    cal_str = ""


    cal_str += link_to( "Previous Month", page_calendar_path(:year => prev_year, :month => prev_month ) )
    cal_str += link_to( "Next Month", page_calendar_path(:year => next_year, :month => next_month))
    cal_str += "<h2> #{display_time.strftime("%B ")} #{year.to_s}</h2>"
    cal_str += "Month: #{month} Year: #{year}"



    return cal_str.html_safe
    end
    end




#"#{<table border="1">
#         <tr>
#        <% @first_day_of_month.times do %>
#     <td>&nbsp;</td>
# <% end %>
# <% (7 - @first_day_of_month).times do |day| %>
#    <td><%= day +1 %></td>
#<% end %>
#</tr>
#</table>}"