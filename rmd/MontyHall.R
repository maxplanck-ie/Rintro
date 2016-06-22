#Comment Line: An Rscript to simulate the Monty Hall Problem
doors=c("W","L1","L2")
N=10000

success_swit=0
for (i in 1:N) {
  doors=sample(doors)                     # shuffle doors
  pick=sample(doors,1)                    # candidate picks one door at random
  cs=which(doors != "W" & doors != pick)  # show master picks one other (non-win)
  open=sample(doors[cs],1)                # content of this door   
  cc=which(doors != open & doors != pick) # candidates second choice
  swit=sample(doors[cc],1)                # content of that door  
  
  # if the switched door contains the win, increase the number of successes
  if (swit=="W") { success_swit=success_swit+1 }
}

success_stay = N - success_swit
cat("N= ",N, "successes with stay= ", success_stay, " successes with switching= ",success_swit,"\n")


