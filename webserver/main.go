package main

import(
	"io"
	"net/http"
)

func firstPage(w http.ResponseWriter , r *http.Request){
	io.WriteString(w,"my first page change2")
}
func main(){
	http.HandleFunc("/",firstPage)
	http.ListenAndServe(":8080",nil)
}