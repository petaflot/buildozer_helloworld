#!/usr/bin/env python3

from kivy import require as kivy_require
kivy_require('2.1.0')

import sys
import traceback
import threading
from kivy.app import App
from kivy.uix.label import Label
from kivy.clock import Clock

#try:
#    from android import mActivity
#    from jnius import autoclass
#    ANDROID = True
#except ImportError:
#    mActivity = None
#    autoclass = lambda name: None
#    ANDROID = False
#
## Logger Android (niveau ERROR)
#def android_log(tag, message):
#    if ANDROID:
#        Log = autoclass('android.util.Log')
#        if Log:
#            Log.e(tag, message)
#    else:
#        print(f"{tag}: {message}")
#
#
## Gestion globale des exceptions du thread principal
#def global_exception_handler(exc_type, exc_value, exc_traceback):
#    if issubclass(exc_type, KeyboardInterrupt):
#        return  # Laisse le SIGINT se comporter normalement
#    tb = ''.join(traceback.format_exception(exc_type, exc_value, exc_traceback))
#    android_log("PythonError", tb)
#
## Gestion des exceptions dans les threads (Python 3.8+)
#def threading_exception_handler(args):
#    tb = ''.join(traceback.format_exception(args.exc_type, args.exc_value, args.exc_traceback))
#    android_log("ThreadError", tb)
#
## Décorateur pour sécuriser les callbacks
#def safe_callback(func):
#    def wrapper(*args, **kwargs):
#        try:
#            return func(*args, **kwargs)
#        except Exception:
#            tb = traceback.format_exc()
#            android_log("CallbackError", tb)
#    return wrapper

# Application principale
class HelloWorld(App):
    def build(self):
        # Exemple de callback dangereux
#        Clock.schedule_once(safe_callback(self.crashy_function), 1)
        self.title = 'Hello World!'

#        if ANDROID:
#            PythonActivity = autoclass('org.kivy.android.PythonActivity')
#            Context = autoclass('android.content.Context')
#            vibrator = PythonActivity.mActivity.getSystemService(Context.VIBRATOR_SERVICE)
#            vibrator.vibrate(1000)
#        else:
#            print("NOT testing vibrator on non-android platform")
        return Label(text='Alice says hi')

#    def crashy_function(self, dt):
#        raise RuntimeError("Ceci est une exception test dans une callback Clock.")
#
#    def on_start(self):
#        sys.excepthook = global_exception_handler
#        if hasattr(threading, "excepthook"):
#            threading.excepthook = threading_exception_handler
#        android_log("HelloWorld", "Application démarrée avec gestionnaire d'exception installé.")

if __name__ == '__main__':
    HelloWorld().run()

