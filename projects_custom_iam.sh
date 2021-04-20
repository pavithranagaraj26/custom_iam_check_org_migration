#!bin/sh
for project in `cat test`;
do
    export role=`(gcloud projects get-iam-policy $project --flatten=bindings --filter=bindings.role:roles --format="value(bindings.role)")`
    export member=`(gcloud projects get-iam-policy $project --flatten=bindings --filter=bindings.role:roles --format="value(bindings.members)")`
    echo $member > member
    echo $role > role
    for i in `cat member`;
    dozž
        for j in `cat role`
            do 
            #echo "$i,$j"
            echo " deleting the org iam custom role $j with the service/user account $i"
            #gcloud projects remove-iam-policy-binding $project --role=$i --member=$j
            done
    done
    echo "break"
done