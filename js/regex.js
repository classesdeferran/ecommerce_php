let nombre = "María José"
// nombre = "Pep"
// nombre = "anna"

const pattern = /^[a-zA-ZáéíóúàèìòùüñÑçÇÁÉÍÓÚÀÈÌÒÙÜ\s]+$/

console.log(nombre.match(pattern))
console.log(nombre.search(pattern));
console.log(nombre.replace(pattern, "A"));
console.log(pattern.test(nombre));