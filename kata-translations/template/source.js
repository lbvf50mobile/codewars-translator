let shapeArea = x => Math.pow(x,2) + Math.pow(x-1,2);
function shapeArea(n) {
    //coding and coding...
    
    
}
Test Cases
function an(n) {
  return n*n+(n-1)*(n-1);
}
function rndc(){
  var allc="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  return allc[~~(allc.length*Math.random())]; 
}
function rndc1(){
  var allc="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_ !@#$%^&*_(),.?|{}[]-=+\\/"
  return allc[~~(allc.length*Math.random())]; 
}
function rndclo(){
  var allc="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  return allc[~~(allc.length*Math.random())]; 
}
function rndcn(){
  var allc="1234567890"
  return allc[~~(allc.length*Math.random())]; 
}
function rndcl(){
  var allc="abcdefghijklmnopqrstuvwxyz"
  return allc[~~(allc.length*Math.random())]; 
}
function rndcno(){
  var allc="1234567890_ !@#$%^&*_(),.?|{}[]-=+"
  return allc[~~(allc.length*Math.random())]; 
}
function rndch(){
  var allc="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  return allc[~~(allc.length*Math.random())]; 
}
function rnd9(){
  var allc="123456789";
  return allc[~~(allc.length*Math.random())]; 
}
function rnd10(){
  var allc="0123456789";
  return allc[~~(allc.length*Math.random())]; 
}
function rnds(n){
  var len= n||rand(5,11)
  for (var i=0,rs=[];i<len;i++) rs[i]=rndcl();
  return rs.join("");
}
function rndss(n){
  var len= n||rand(2,5)
  for (var i=0,rs=[];i<len;i++) rs[i]=rnds();
  return rs.join(" ")+".?!,"[rand(0,3)]
}
function rndsss(n){
  var len= n||rand(5,15)
  for (var i=0,rs=[];i<len;i++) rs[i]=rnds();
  return rndch()+rs.join(" ")
}

function shuff(arr){
  for(var i=0;i<50;i++){
    var idx1=rand(0,arr.length-1),idx2=rand(0,arr.length-1)
    var t=arr[idx1]
    arr[idx1]=arr[idx2]
    arr[idx2]=t
  }
}
function rnds2(n){
  var len= n||~~(15*Math.random())+4;
  for (var i=0,rs=[];i<len;i++) rs[i]=rndcl();
  return rs.join("");
}
function rand(from,to){
  return Math.floor((to-from+1)*Math.random()+from)
}

var maxlen=50,maxtt=20
function rndtest(){
  var w=rand(2,10),h=rand(2,10),r=Array.from({length:h},()=>Array.from({length:w},()=>rndcl())),
      x1=rand(0,~~(h/2)-1),x2=rand(x1+1,h-1),y1=rand(0,~~(w/2)-1),y2=rand(y1+1,w-1)
  return [r,[y1,x1,y2,x2]]
}
function rndcc(n){
  var c="abcdefg",len=n||1,r=[]
  for(var i=0;i<len;i++) r.push(c[rand(0,c.length-1)])
  return r.join("")
}
function rndname(){
  var len=3
  for(var r=rndch(),i=0;i<len;i++) r+=rndcl()
  return r
}
function rndarr(){
  var len=rand(10,50),r1=[]
  for (var i=0;i<len;i++) {
    r1[i]=rand(1,99)
  }
  return r1
}
function rndarr2(){
  var len=100000,len1=len+1,add=110000,r1=[],r2=[]
  for (var i=0;i<len;i++) {
    var t=rand(0,1000)%4?rand(1,len):rand(len1,add)
    r1[i]=t
    r2[i]=t
  }
  return [r1,r2]
}

function showResult(s,color="00cc00",who="Your"){
  console.log("<font face='sans-serif' color='#"+color+"' size=3><b>"+who+" result is:</b></font><font face='sans-serif' color='#cccc00' size=3>"+
      "\n"+s+"</font>","")
}

describe("Basic Tests", function(){
it("It should works for basic tests.", function(){

Test.assertEquals(shapeArea(2),5)

Test.assertEquals(shapeArea(3),13)

Test.assertEquals(shapeArea(1),1)

Test.assertEquals(shapeArea(5),41)

})})

var failed=0,recfailed=[]

describe("100 Random Tests --- Testing for correctness of solution", function(){
  it("It should works for random tests.", function(){

    for(var iii=0;iii<100;iii++){
      var ddd=rand(1,10000),
      //eee=rand(1,50)*2,
      //fff=rand(0,5),
      //ggg=rand(2,30),hhh=rand(1,50),
      ans=an(ddd)
      console.log("<font face='sans-serif' color='#00cc00' size=3><b>Testing for:</b></font><font face='sans-serif' color='#eeee00' size=3>"+
      "\nn = "+JSON.stringify(ddd)
      //+"\nrectangle = "+JSON.stringify(eee)
      //+", b = "+JSON.stringify(fff)
      //+",  weight2 = "+JSON.stringify(ggg)+",  maxW = "+JSON.stringify(hhh)
      +"</font>","")
      var useran=shapeArea(ddd)
      if(JSON.stringify(useran)!=JSON.stringify(ans)) {
        failed++  
      }
      Test.assertEquals(useran,ans)
    }
  });
  
});
//console.log(recfailed)
if(!failed){
describe("Congratulations! You have passed all the tests!", function(){
  console.log("<font color='#00aa00' size=2><b>I'm waiting for your <font color='#dddd00'>feedback, rank and vote.<font color='#00aa00'>many thanks! ;-)</b></font>","")  
});
}