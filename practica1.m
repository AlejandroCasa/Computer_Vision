%%
% RESUMEN

% Analizar adaptadores instalados
imaqhwinfo;

% Obtener ID de la cámara
info = imaqhwinfo('winvideo');

% Crear objeto de video
vid = videoinput('winvideo,1');

% Comprobar que se adquieren imágenes
preview(vid)
stoppreview(vid)
closepreview(vid)

% Adquirir una imagen
frame = getsnapshot(vid);

% Obtener tamaño de la imagen
size(frame);

% Visualizar la imagen adquirida
figure;
imshow(frame);

% Visualizar un canal en particular
figure;
imshow(frame(:,:,2));

% Conversion de color
frameRGB = ycbcr2rgb(frame);
figure;
imshow(frameRGB);

% Subplot imagenes
subplot(2,2,1),imshow(img)
subplot(2,2,2),imshow(img(:,:,1))
subplot(2,2,3),imshow(img(:,:,2))
subplot(2,2,4),imshow(img(:,:,3))

% Almacenar imagenes
imwrite (img, 'img.jpg')

% Capturar imagenes con IP Webcam
camera = ipcam('http://192.168.1.131:8056/video');
%%
