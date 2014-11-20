raster2pgsql -s 21781 -d -I -C -M -R -l 4 /home/duncan/rasters/andes/altglob2a.tif -F -t 100x100 dtm | psql -d latam2

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/gdal/gdal-dev/lib

raster2pgsql -l 4 -s 21781 -I -C -M -F -r /opt/Geodaten/ch/so/kva/hoehen/2014/dtm/*.tif -t 100x100 av_lidar_2014.dtm > dtm_lidar_2014.sql
raster2pgsql -d -l 2,16 -s 21781 -I -C -M -F -r /opt/Geodaten/ch/so/kva/hoehen/2014/dtm/*.tif -t 1000x1000 av_lidar_2014.dtm > dtm_lidar_2014.sql

raster2pgsql -d -s 21781 -I -C -M -F -r /opt/Geodaten/ch/so/kva/hoehen/2014/dtm/*.tif -t 1000x1000 av_lidar_2014.dtm | psql -d rosebud2

raster2pgsql -d -s 21781 -I -C -M -F -r /opt/Geodaten/ch/so/kva/hoehen/2014/dom/*.tif -t 1000x1000 av_lidar_2014.dom | psql -d rosebud2



python raster2pgsql.py -r vietnam/dted/*/*.dt0 -t ch13.vietelev
➥ -s 4326 -k 50x50 -F -I -o vietelev.sql







raster2pgsql -d  -s 21781 -I -C -M -F -r /opt/Geodaten/ch/so/kva/hoehen/2014/dtm/*.tif -t 100x100 av_lidar_2014.dtm | psql -d rosebud2
raster2pgsql -d  -s 21781 -I -C -M -F -r /opt/Geodaten/ch/so/kva/hoehen/2014/dom/*.tif -t 100x100 av_lidar_2014.dom | psql -d rosebud2

