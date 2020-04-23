#!/usr/bin/env python3.7

import iterm2
# This script was created with the "basic" environment which does not support adding dependencies
# with pip.

async def main(connection):
    # Your code goes here. Here's a bit of example code that adds a tab to the current window:
    app = await iterm2.async_get_app(connection)
    window = app.current_window
    if window is not None:
        print('A')
        tab = window.current_tab
        if tab is not None:
            print('B')
            session = tab.current_session
            if session is not None:
                print('C')
                await session.async_send_text('alias "ls=ls -al --color"\n')
                await session.async_send_text('set -o vi\n')
                await session.async_send_text('echo "\C-l": clear-screen > ~/.inputrc\n')
                await session.async_send_text('bind -f ~/.inputrc\n')
    else:
        # You can view this message in the script console.
        print("No current window")

iterm2.run_until_complete(main)
