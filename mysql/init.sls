mysql-server:
  pkg:
    - installed
    - pkgs:
      - mysql-server
      - MySQL-python
  service:
    - running
    - name: mysqld
    - enable: True
    - require:
      - pkg: mysql-server
  mysql_user:
    - present
    - name: root
    - password: beautiful
    - require:
      - service: mysqld
