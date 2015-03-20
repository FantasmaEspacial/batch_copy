# Batch Copy
This is a KDE Service Menu for batch copying files.

## Functionality 
- Create a queue by adding files and/or directories from all over the file system.
- Start batch by selecting target destination.
- Drink a beer.

In addition you can list the content in the queue or clean it. 

### Menu Entrys
Each action it's a different bash script.
- "Add to Batch Queue": Add a file or directory to the queue.
- "Start Batch Copy": Propmt for destination directory (yes, only one for all) and begins copying.
- "List Batch Queue": Show a textbox with the list of added files.
- "Clean Batch Queue": Clean all the content of the queue (no confirmation be aware)

## Installation
I "arbitrarily" decided to use the the next directories:
/usr/share/kde4/services/ServiceMenus/ for the .desktop
/usr/share/kde4/services/batch_copy/ for .sh scripts

```bash
git clone https://github.com/FantasmaEspacial/batch_copy.git
chmod u+x INSTALL.sh
sudo ./INSTALL.sh
```

## Dependencies
- Bash: 4.XX
- KDE: 4.X
- kdialog
- kde-cp

## ToDo
- Selective deletion.
- Remote copy (scp, ftp).

## Author
Julian Cañada <julian.inc@gmail.com>