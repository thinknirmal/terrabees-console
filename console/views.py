from pyramid.view import view_config

@view_config(route_name='home', renderer='templates/index.mako')
@view_config(route_name='dashboard', renderer='templates/dashboard.mako')
@view_config(route_name='login', renderer='templates/login.mako')
@view_config(route_name='consignors', renderer='templates/consignors.mako')
@view_config(route_name='create-consignor', renderer='templates/create-consignor.mako')
@view_config(route_name='pickups', renderer='templates/pickups.mako')
@view_config(route_name='create-pickup', renderer='templates/create-pickup.mako')
@view_config(route_name='test', renderer='templates/test.mako')

def my_view(request):
    return {'project': 'Console'}
