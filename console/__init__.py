from pyramid.config import Configurator


def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    config = Configurator(settings=settings)
    config.include('pyramid_mako')
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('home', '/')
<<<<<<< HEAD
    config.add_route('dashboard', '/dashboard')
    config.add_route('login', '/login')
    config.add_route('consignors', '/consignors')
    config.add_route('create-consignor', '/create-consignor')
    config.add_route('pickups', '/pickups')
    config.add_route('create-pickup', '/create-pickup')
    config.add_route('test', '/test')
=======
>>>>>>> 0e40e8b6b4532fbb4c163f08b9eeff5702b95d16
    config.scan()
    return config.make_wsgi_app()
