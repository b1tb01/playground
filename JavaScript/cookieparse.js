//read a cookie and find the value that corresponds with it's key
function findVal(variable) {
   variable = ('; ' + document.cookie)
   .split('; ' + key + '=')
   .pop()
   .split(';')
   .shift()
   return variable;
   }