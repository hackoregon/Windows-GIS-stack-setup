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
5. Now you have PostgreSQL and PostGIS. The final component of the GIS stack is OSGeo4W (<http://trac.osgeo.org/osgeo4w/>). Like the previous two open source installers, this one is loaded with stop points and you'll be accepting the defaults for most of them.
    1. For a 32-bit Windows, download <http://download.osgeo.org/osgeo4w/osgeo4w-setup-x86.exe>. For 64-bit Windows, download <http://download.osgeo.org/osgeo4w/osgeo4w-setup-x86_64.exe>. Double-click the installer to start.
    2. After authorizing the install, you'll get this screen. Accept the default "Express Desktop Install" and press "Next".
    3. In the "Choose A Download Site", you will need to highlight the default site with the mouse. Then press "Next".
    4. In the "Select Packages" sreen, accept the defaults (QGIS, GDAL and GRASS GIS) and press "Next".
    5. "Warning! Unmet Dependencies Found": make sure the "install these packages" checkbox at the bottom is checked and press "Next".
    6. "Agreement of Restrictive Packge" - ECW Raster Plugin: You have to accept this or the install will not proceed. :-( Check the "I agreed" checkbox and press "Next".
    7. "Agreement of Restrictive Packge" - MrSID Raster Plugin: You have to accept this or the install will not proceed. :-( Check the "I agreed" checkbox and press "Next".
    8. "Agreement of Restrictive Packge" - Oracle Instant Client: You have to accept this or the install will not proceed. :-( Check the "I agreed" checkbox and press "Next".
    9. "Agreement of Restrictive Packge" - SZIP compression library: You have to accept this or the install will not proceed. :-( Check the "I agreed" checkbox and press "Next".
    10. Finally, the install will start. I filed an issue with OSGeo4W about the installs requiring non-free components but nothing ever happened. I should check back on that; IMHO it's a deal-breaker. In any event, the OSGeo4W install will take some time to download and install everything.
6. Now you have PostgreSQL, PostGIS and OSGeo4W installed. The final step is to connect QGIS to PostGIS so you can manage your data, make maps, etc.
