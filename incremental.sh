testspace ?start

for (( i=1; i<=20; i++))
do
  testspace[JOB-$i]results.xml ?add
done

testspace ?finish