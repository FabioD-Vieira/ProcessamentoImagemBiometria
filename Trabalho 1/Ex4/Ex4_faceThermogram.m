function Ex4_faceThermogram()

handler = ImageHandler('../NoisyImages/');


original = handler.readImage('face_thermogram.png');
noisy = handler.readImage('face_thermogram_1.png');


improved = medfilt2(noisy);


handler.show(original, noisy, improved);
handler.brightness(original, noisy, improved);
handler.contrast(original, noisy, improved);
handler.entropy(original, noisy, improved);
handler.mse(original, noisy, improved);
handler.mae(original, noisy, improved);


end