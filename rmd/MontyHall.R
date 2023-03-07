#Comment Line: This script simulates the Monty Hall Problem

#A helper function to open doors.
open_door = function(pick, doors) {
  # masters choices are limited: do not reveal "win" and do not reveal "pick"
  choices = doors[ doors != "W" & doors != pick ]
  return (sample(choices,1))
}


# Inititalization
doors=c("W","L1","L2")                            # three doors containing one win "W" and two losses "L1, L2"
N=10000                                           # Number of trials
success=0                                         # Number of successes when switching

# A loop over N trials
for (i in 1:N){
  doors  = sample(doors)                           # shuffle doors
  pick   = sample(doors,1)                         # candidate picks one door at random
  open   = open_door(pick,doors)                   # show master picks one other door (!= pick != win)
  switch = doors[ doors != pick & doors != open]   # candidate has (one) choice to switch
  if (switch=="W") { success=success+1}            # count if switching strategy is successful (= "win")
}

# ouput message of successes
cat("successes with switching= ",success, "success_rate: ", success/N, "\n")

########################
# improvements: without for & if
# replace by replicate() and but create boolean vector of switch success
switch = replicate(N, {
  doors  = sample(doors)
  pick   = sample(doors, 1)
  open   = open_door(pick,doors)
  switch = doors[ doors != pick & doors != open]
  switch == "W"              # TRUE if switching strategy was successful
})

cat("successes with switching= ",sum(switch), "success_rate: ", mean(switch), "\n")


