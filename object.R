objects <- ls()
for (obj in objects) {
  cat(obj, ": ", object.size(get(obj)), "bytes\n")
}