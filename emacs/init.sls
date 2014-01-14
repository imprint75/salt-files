{% if grains['os'] == 'Ubuntu' %}
ppa-emacs:
  pkgrepo.managed:
    # Emacs
    - ppa: cassou/emacs
    - require_in:
      - pkg: emacs24
{% endif %}

{% for name in ['emacs24', 'emacs24-el'] %}
{{ name }}:
  pkg.latest:
  {% if grains['os'] == 'Ubuntu' %}
    - require:
      - pkgrepo: ppa-emacs
  {% endif %}
{% endfor %}
