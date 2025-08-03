#!/usr/bin/env python3
"""
    simple yet comprehensive "Hello World" pgrogram for buildozer

    NOTE: this is not working yet!

    author: JCZD
    date:   2023-06-03 (start project)
    milestones:
            2025-07-29  simle build succeeded and executed (commit 5a0a4c59e89287a1e5854e1c9bc066a7989a1c72)
"""

from kivy import require as kivy_require
kivy_require('2.1.0')

import sys
import traceback
import threading
from kivy.app import App
from kivy.uix.label import Label
from kivy.clock import Clock

class HelloWorld(App):
    def build(self):
        self.title = 'Hello World!'

        txt = "Alice says hi :-)"

        return Label(text=txt)

if __name__ == '__main__':
    HelloWorld().run()
