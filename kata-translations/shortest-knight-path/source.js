let convert = s => [s[0].charCodeAt(0) - 'a'.charCodeAt(0), parseInt(s[1]) -1];
let c2 = ([x,y]) => `${String.fromCharCode(x+'a'.charCodeAt(0))}${y+1}` 
let board = ([x,y]) => x <= 7 && x >= 0 && y <= 7 && y >= 0;
function knight(start, finish) {  
 let [s,f] = [convert(start),convert(finish)];
 pos = {};
 q = [[s,0,[start]]]
 pos[c2(s)] = true
 for(;q.length != 0;){
   mv = q.shift()
   let [x,y] = mv[0];
   let step = mv[1];
   let story = mv[2];
   
   if(finish == c2(mv[0])){
     console.log('start-finish:',[start,finish])
     console.log('story:',story)
     return step;
   }
   [[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1],[-1,2]].forEach(
     ([dx,dy]) =>{
       let ar = [x+dx,y+dy]
       let move = undefined == pos[c2(ar)]
        
       if(move && board(ar)){
         pos[c2(ar)] = true
         let nstory = story.slice();
         nstory.push(c2(ar))
         q.push([ar,step+1,nstory])
       }
     }
   );
 }
}
let arr = [['a1', 'c1', 2], ['a1', 'f1', 3], ['a1', 'f3', 3], ['a1', 'f4', 4], ['a1', 'f7', 5]];

for (let i of arr) Test.assertEquals(knight(i[0], i[1]), i[2])