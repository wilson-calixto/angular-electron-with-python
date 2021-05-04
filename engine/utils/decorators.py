""" This package contains all decorators used in UATU project """

class Singleton:
    """
    Singleton Decorator
    Example How to use:

    @Singleton
    class MySingletonClass:
        pass
    """

    def __init__(self, klass):
        self.klass = klass
        self.instance = None

    def __call__(self, *args, **kwds):
        if self.instance is None:
            self.instance = self.klass(*args, **kwds)
        return self.instance
