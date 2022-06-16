#! /bin/sh

run (){
    /usr/sbin/smbd -i
}

while : ; do
        if ! run; then
            break
        fi
done

exit 0
