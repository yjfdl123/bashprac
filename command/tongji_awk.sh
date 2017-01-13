#!/bin/awk -f
awk -F'\t' 'BEGIN{
	print "-----begin---------";
	cate[101];
	}
{
	split($58,arr,";");
	split($46,brr,",");
	if(and(rshift(arr[1],1),1)==1){
		head = int(brr[1]/10000)
		for ( ca in cate)
		{
			if (head==ca) cate[ca]++
		}
		#print arr[1],head;
	}
}
END{
	for ( ca in cate )
	{
		print ca, cate[ca];
	}
	print "-----end------"
	}' -
