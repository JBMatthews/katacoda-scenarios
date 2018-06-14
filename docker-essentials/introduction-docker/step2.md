<pre class="file" data-filename="playbook.yml" data-target="replace"><blockquote>

---
- hosts: all
  tasks:
    - ping:

</blockquote></pre>

4\. Now, "provision" your newest changes to Ansible on the machine by executing:

`ansible-playbook -i 'localhost,' -c local playbook.yml`{{execute HOST1}}