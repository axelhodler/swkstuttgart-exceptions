Exceptions. Stacktrace loggen?, ignorieren?, dem user zeigen?, recovern?, gar Maybe und Either types verwenden oder in den handle block einfach '#should not happen' schreiben?

In einem lockeren Erfahrungsaustausch wollen wir uns mit dem oftmals leidigen Thema auseinandersetzen. Bringt eure Erfahrungen und auch gerne Codebeispiele mit.


```javascript
function get(address, onSuccess, onFailure) {
  const request = new XMLHttpRequest()
  request.onreadystatechange = function() {
    if (this.readyState === 4) {
      if (this.status === 200) {
        onSuccess(this.responseText)
      } else {
        onFailure(new Error('Request failed.'), this)
      }
    }
  }
  request.open('GET', address, true)
  request.send(null)
}
```

# Einstieg:


https://twitter.com/mfeathers/status/739521637876277248

# Effective Java

"use checked exceptions for recoverable conditions and runtime exceptions for programming errors"


# From Maybe to Either

`Maybe` tells us the error has happenened. nothing else (we only hold `Nothing`).

-> Haskellbook either
