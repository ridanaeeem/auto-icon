# Automated Icon Changer

For my desktop, I have a wallpaper of a room in the game Club Penguin, a game I enjoyed a lot growing up. The folders on my desktop are penguins from the game and I had the idea to change the specific penguin every couple of hours so it would be like different penguins are joining the game throughout the day.

![auto-icon/public/desktopScreenShot.png](https://github.com/ridanaeeem/auto-icon/blob/main/public/desktopScreenShot.png)

I achieved this by:

1. Finding some penguin sprite images and giving them transparent backgrounds, placing them into the `icons` folder. I have seven folders on my desktop, so I made groupings of seven penguins each.
2. Turning them into squares by adding transparent bars to whichever axis of the image is smaller, using `resize_all.sh` which uses the code in `resize.py`.
3. Using the [fileicon](https://github.com/mklement0/fileicon) CLI in the `change_icon.sh` script to change the icon to each folder depending on the time of day.
4. I created a `cronjob` to run `change_icon.sh` every two hours, which is when the penguins are supposed to change. To do the same, in the terminal enter `crontab -e` and then write the following: `0 */2 * * * /full/path/to/file/change_icon.sh`

Now, here are some examples of what I see on my desktop every few hours:
![a penguin wearing glasses changing into another penguin wearing a hoddie, and a penguin with rainbow hair changing into another penguin with a tuba](public/penguin2.gif)
