if tup.getconfig("NO_FASM") ~= "" then return end
tup.rule("sntp.asm", "fasm %f %o " .. tup.getconfig("KPACK_CMD"), "sntp")
