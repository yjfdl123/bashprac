#!/bin/awk -f
function tj(){
    awk -F'\t' 'BEGIN{
    	print "-----begin---------";
    	cate[101];
    	cate[106];
    	cate[202];
    	cate[203];
    	cate[204];
    	cate[205];
    	cate[207];
    	cate[208];
    	cate[109];
    	cate[110];
    	cate[211];
    	cate[212];
    	cate[113];
    	cate[114];
    	cate[115];
    	cate[216];
    	cate[217];
    
    	}
    {
    	if (FILENAME ~/ie_log_*/)
    	{
    	    split($58,arr,";");
    	    split($46,brr,",");
			pvhash[$18]=$6;
    	    if(and(rshift(arr[1],1),1)==1){
    	    	head = int(brr[1]/10000)
				if (head in cate)
				{
					cate[head]++;
				}
    	    }
    	}else{
		    pvid=substr($17,1,16);
		    if  (pvid in pvhash)
			{
				split(pvhash[pvid], adids, ",");
				adid  = $6;
				ret   = $13;
				split( $66, newstyles, ",");
				newstyle = newstyles[1];
				if (and(rshift(newstyle,1),1)==1)
				{
					for (i=1; i<=length(adids); i++)
					{
						if (ret==0 && adid == adids[i])
						{
						    price = $15;
							ca=int($41/10000);
							if (ca in cate)
							{
								consume[ca]+=price;
								click[ca]++;
								break;
							}
						}
					}
				}
			}
		}
    }
    END{
    	for ( caa in cate )
    	{
			print caa"\t"cate[caa]"\t"click[caa]"\t"consume[caa]/100;
    	}
    	print "-----end------"
   	}' $* 
} 

tj $*
