#!/usr/bin/env python
import kivy
kivy.require('2.1.0')

from kivy.app import App
from kivy.uix.label import Label


class MyApp(App):
    def build(self):
        self.title = 'Hello World!'
        return Label(text='Alice says hi')


if __name__ == '__main__':
    MyApp().run()
