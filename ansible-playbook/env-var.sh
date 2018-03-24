a() { docker exec -it ansible bash -c "echo 'PS1='\''ansible# '\' >> /root/.bashrc; bash"; }
t() {  docker exec -it target bash -c "echo 'PS1='\''target# '\' >> /root/.bashrc; bash";  }