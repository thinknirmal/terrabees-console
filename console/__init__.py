from pyramid.config import Configurator


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    config = Configurator(settings=settings)
    config.include('pyramid_mako')
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('home', '/')
    config.add_route('dashboard', '/dashboard')
    config.add_route('login', '/login')
    config.add_route('consignors', '/consignors')
    config.add_route('create-consignor', '/create-consignor')
    config.add_route('pickups', '/pickups')
    config.add_route('create-pickup', '/create-pickup')
    config.add_route('test', '/test')
    config.scan()
    return config.make_wsgi_app()
