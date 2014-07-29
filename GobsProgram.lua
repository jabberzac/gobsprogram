local line = ""
for i = 1, 5 do
  line = line .. "Penus  "
end
line = line .. "Penus"
local s = nil
while s ~= "n" and s~= "no" do
  print("Gob's Program:  Y/N?")
  io.write("? ")
  s = string.lower(io.read("*l"))
  if s == "y" or s == "yes" then
    while true do
      print(line)
    end
  end
end
