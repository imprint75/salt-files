mysql-server:
  pkg:
    - installed
    - pkgs:
      - mysql-server
      - MySQL-python
  service:
    - running
    - name: mysql
    - enable: True
    - require:
      - pkg: mysql-server
  mysql_user:
    - present
    - name: root
    - password: beautiful
    - require:
      - service: mysql
