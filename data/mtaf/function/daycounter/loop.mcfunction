#execute store result score $daycounter _vars run time query day

#title @a actionbar ["Day: ",{"score":{"name":"$daycounter","objective":"_vars"}}]


#schedule function mtaf:daycounter/loop 1s