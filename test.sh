#!bin/sh
for project in `cat test`;
do
    gcloud projects get-iam-policy $project --flatten=bindings --filter=bindings.role:roles --format="value(bindings.role)")`
    gcloud projects get-iam-policy $project --flatten=bindings --filter=bindings.role:roles --format="value(bindings.members)")| sed 's/;/\n/g'`
    echo $member > member
    echo $role > role
    for i in $member;
    do
        for j in $role
            do 
            echo "$i, $j"
            done
    done
    echo "break"
    #gcloud projects remove-iam-policy-binding $project --role=$role --member=$member
done