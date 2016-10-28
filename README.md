# Setting up an open source GIS stack on Windows

## What you will need
1. Git ... since the Hack Oregon repositories live on GitHub, install the GitHub Desktop from <https://desktop.github.com/>.
2. If you need to capture screenshots, install Sizer (<http://www.brianapps.net/sizer/>) and Greenshot (<http://getgreenshot.org/>). I captured the screenshots for this tutorial with them.
3. First, you need to install PostgreSQL. I recommend the EnterpriseDB installer. It includes an installer for PostGIS.
    1. Go to <http://www.enterprisedb.com/products-services-training/pgdownload> and download the installer. I'm using the most recent, 9.6.1, on 64-bit Windows.
    2. When the download finishes, double-click the downloaded installer. You'll need to authorize the install, then after a few operations you'll get this screen. Press "Next".
    3. Accept the default install location on this screen with "Next".
    4. Accept the default data directory on this screen with "Next".
    5. ***This screen is important! Here you will set the password for the PostgreSQL super-user, named "postgres". As usual, you need a strong password, something easy for you to remember and impossible for anyone else to figure out. Enter your password twice and press "Next".***
    6. On the "Port" screen, accept the default port "5432" with "Next".
    7. On the "Advanced Options" screen, accept the default locale with "Next".
    8. Press "Next" on the "Ready to Install" screen to install PostgreSQL.
    9. When the PostgreSQL install is done, you'll get this screen. If you're not doing any GIS work, just PostgreSQL database work, you can stop here. Otherwise, you'll need to continue and install PostGIS using the Stack Builder.

        To exit now, uncheck the Stack Builder checkbox and press "Finish".
	To proceed to PostGIS, check the Stack Builder checkbox and press "Finish".
4. PostGIS via Stack Builder
    1. This is the first screen you'll get from Stack Builder. Pull down the drop-down and select the PostgreSQL database you just installed. Then press "Next".
    2. You will get a screen with a menu of available add-ons. Expand the "Spatial Extensions" item with the plus sign. Choose 32-bit or 64-bit depending on whether you installed 32-bit or 64-bit PostgreSQL. Then press "Next".
    3. On the review screen, accept the default download location and press "Next".
    4. When the download is finished, you'll get this screen. Make sure the "Skip Installation" checkbox is ***cleared*** and press "Next".
    5. On this screen, press "I Agree" to accept the license.
    6. On the "Choose Components" screen, make sure PostGIS is checked and "Create spatial database" is cleared. Then press "Next".
    7. On the "Choose Install Location", accept the default with "Next".
    8. When you get this "GDAL_DATA" question, answer "Yes".
    9. When you get this "raster drivers" question, answer "Yes".
    10. When you get this "raster out of db" question, answer "Yes".
    11. When you get this "Installation Complete" screen, press "Close".
    12. Now you'll get an "Installation Completed" screen from Stack Builder. Press "Finish".

