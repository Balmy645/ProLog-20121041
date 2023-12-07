[[ProLog]]
Se basa en la base de conocimientos para buscar las misma concurrencia de hechos. 

```java
factorial(int n){

	if(n == 0){
		return 1;
	}else{
		return (n*(factorial(n-1)));
	}
}
```

```swipl
fact(0,1).
fact(N,M):- N>0, N1 is N-1, fact(N1, M1), M is M1 * N.
```



