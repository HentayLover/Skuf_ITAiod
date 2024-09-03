#1.1.2
st1<-3
st2<-3
st3<-3
#Функция для расчёта формулы герона
f_geron<-function(st1,st2,st3){
  perimetr<-(st1+st2+st3)/2
  S<-perimetr*(perimetr-st1)*(perimetr-st2)*(perimetr-st3)
  S1<- sqrt(S)
  return(S1)
}
s<-f_geron(st1,st2,st3)
print(s)
#1.2.5


check_box_door <- function(A,B,C,M,K) {
 
  
  
  if ((A <= M && B <= K) || (A <= K && B <= M) ||
      (A <= M && C <= K) || (A <= K && C <= M) ||
      (B <= M && C <= K) || (B <= K && C <= M)) {
    print("Коробка пройдёт в дверь")
  } else {
    print("Коробка не пройдёт в дверь")
  }
}

# Вызов функции
check_box_door(12,32,53,12,89)


#1.2.17
x<-5
y<-6
if(x>y){
  z<-sqrt(x*y)
}else{
  z<-log(x+y)
}
print(z)

#1.2.18


check_rectangles <- function(a,b,c,d) {
  
  if ((a <= c && b <= d) || (a <= d && b <= c)) {
    print("Первый прямоугольник может уместиться во втором")
  } else {
    print("Первый прямоугольник не может уместиться во втором")
  }
}
check_rectangles(3,4,2,1)


#1.2.21
f_ot_a<-function(a){
  if(a<=0){
    result<-0
  }else{
    result<-NAN
  }
  print(result)
}
f_ot_a(-5)

#1.3.2


rotate_right <- function(arr) {
  
  if (length(arr) == 0) {
    return(arr)
  }
  last_element <- arr[length(arr)]
  arr[2:length(arr)] <- arr[1:(length(arr) - 1)]
  arr[1] <- last_element
  return(arr)
}

# Пример использования функции
original_array <- c(1, 2, 3, 4, 5)
rotated_array <- rotate_right(original_array)
cat("Полученный массив:", rotated_array, "\n")

#1.3.20

#Количество строк
M<-4
str_array<-character(M)
maxchar=-1000
for(i in 1:M){
  str<-as.character(readline(""))
  str_array[i]<-str
  if(maxchar<nchar(str)){
    maxchar=nchar(str)
  }
}
str_array
for(i in 1:M){
  str_array[i]<-paste0(strrep("*", maxchar-nchar(str_array[i])), str_array[i])
}
str_array



#1.3.28
M<-4
str_array<-character(M)
col_space<-integer(M)
for(i in 1:M){
  str<-as.character(readline(""))
  str_array[i]<-str
  col_space[i]<-nchar(str_array[i]) - nchar(gsub(" ", "", str_array[i]))
}
cat("Строки:",str_array,"\n")
cat("Количество пробелов:",col_space,"\n")

#1.3.30














