FROM netboxcommunity/netbox:v4.3-3.3.0

# topology views
RUN mkdir -p /opt/netbox/netbox/static/netbox_topology_views/img

# common
COPY ./requirements.txt /opt/netbox/
RUN /usr/local/bin/uv pip install -r /opt/netbox/requirements.txt
COPY configuration/plugins.py /etc/netbox/config/plugins.py
RUN DEBUG="true" SECRET_KEY="dummydummydummydummydummydummydummydummydummydummy" \
    /opt/netbox/venv/bin/python /opt/netbox/netbox/manage.py collectstatic --no-input
