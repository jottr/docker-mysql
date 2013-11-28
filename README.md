# A MySQL Server Dockerfile

There wasn't a trusted build for MySQL, so here's one that should do the job.

If you want a root password then you'll need to set one, and its probably a good
idea to map `/var/lib/mysql` as a volume to your actual disk to avoid the copy on
write overhead otherwise incurred.
