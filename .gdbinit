set logging file output.txt
set logging on

define jprint
   printf "%s\n", $arg0.dump(2, ' ', true, nlohmann::detail::error_handler_t::strict).c_str()
end
document jprint
    pretty print for nlohmann json lib
end

#TODO: implementar watch points e display saves

define bsave
    #set logging off
    #shell rm -f brestore.txt
    #set logging file brestore.txt
    #set logging on
    #info break
    #set logging off
    #set logging file output.txt
    #set logging on
    # Reformat on-the-fly to a valid GDB command file
    #shell perl -n -e 'print "break $1\n" if /^\d+.+?(\S+)$/g' brestore.txt > brestore.gdb
    save breakpoints brestore.gdb
end
document bsave
  store actual breakpoints
end

define brestore
  source brestore.gdb
end
document brestore
  restore breakpoints saved by bsave
end

#info threads  # see all threads and currently debugging
#thread <id># changing thread to step though the code
#break <function or line or whatever > thread < id>
#thread apply all bt
