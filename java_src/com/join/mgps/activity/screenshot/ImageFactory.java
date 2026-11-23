package com.join.mgps.activity.screenshot;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public class ImageFactory {
    /* JADX WARN: Code duplicated, block: B:32:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    public static Bitmap loadImageFromAssets(Context context, String fileName) throws Throwable {
        InputStream inputStreamOpen;
        AssetManager assets = context.getAssets();
        ?? r10 = 0;
        try {
            try {
                inputStreamOpen = assets.open(fileName);
                try {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = false;
                    options.inPurgeable = true;
                    options.inInputShareable = true;
                    options.inSampleSize = 1;
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen, null, options);
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                    return bitmapDecodeStream;
                } catch (IOException e11) {
                    e = e11;
                    e.printStackTrace();
                    if (inputStreamOpen != null) {
                        try {
                            inputStreamOpen.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                r10 = assets;
                if (r10 != 0) {
                    try {
                        r10.close();
                    } catch (IOException e13) {
                        e13.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e14) {
            e = e14;
            inputStreamOpen = null;
        } catch (Throwable th2) {
            th = th2;
            if (r10 != 0) {
                r10.close();
            }
            throw th;
        }
    }

    public void compressAndGenImage(Bitmap image, String outPath, int maxSize) throws IOException {
        if (image == null) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 100;
        image.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        while (byteArrayOutputStream.toByteArray().length / 1024 > maxSize) {
            byteArrayOutputStream.reset();
            i10 -= 10;
            image.compress(Bitmap.CompressFormat.JPEG, i10, byteArrayOutputStream);
        }
        FileOutputStream fileOutputStream = new FileOutputStream(outPath);
        fileOutputStream.write(byteArrayOutputStream.toByteArray());
        fileOutputStream.flush();
        fileOutputStream.close();
    }

    public Bitmap getBitmap(String imgPath) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = 1;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return BitmapFactory.decodeFile(imgPath, options);
    }

    public Bitmap ratio(String imgPath, float pixelW, float pixelH) {
        int i10;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        BitmapFactory.decodeFile(imgPath, options);
        options.inJustDecodeBounds = false;
        int i11 = options.outWidth;
        int i12 = options.outHeight;
        if (i11 <= i12 || i11 <= pixelW) {
            i10 = (i11 >= i12 || ((float) i12) <= pixelH) ? 1 : (int) (i12 / pixelH);
        } else {
            i10 = (int) (i11 / pixelW);
        }
        options.inSampleSize = i10 > 0 ? i10 : 1;
        return BitmapFactory.decodeFile(imgPath, options);
    }

    public void ratioAndGenThumb(Bitmap image, String outPath, float pixelW, float pixelH) throws FileNotFoundException {
        storeImage(ratio(image, pixelW, pixelH), outPath);
    }

    public void storeImage(Bitmap bitmap, String outPath) throws FileNotFoundException {
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(outPath));
    }

    public void ratioAndGenThumb(String imgPath, String outPath, float pixelW, float pixelH, boolean needsDelete) throws FileNotFoundException {
        storeImage(ratio(imgPath, pixelW, pixelH), outPath);
        if (needsDelete) {
            File file = new File(imgPath);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public void compressAndGenImage(String imgPath, String outPath, int maxSize, boolean needsDelete) throws IOException {
        compressAndGenImage(getBitmap(imgPath), outPath, maxSize);
        if (needsDelete) {
            File file = new File(imgPath);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0059  */
    public Bitmap ratio(Bitmap image, float pixelW, float pixelH) {
        int i10;
        float f10;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        image.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        if (byteArrayOutputStream.toByteArray().length / 1024 > 1024) {
            byteArrayOutputStream.reset();
            image.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        BitmapFactory.decodeStream(byteArrayInputStream, null, options);
        options.inJustDecodeBounds = false;
        int i11 = options.outWidth;
        int i12 = options.outHeight;
        if (i11 <= i12 || i11 <= pixelW) {
            if (i11 >= i12 || i12 <= pixelH) {
                i10 = 1;
            } else {
                f10 = i12 / pixelH;
            }
            options.inSampleSize = i10 > 0 ? i10 : 1;
            return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, options);
        }
        f10 = i11 / pixelW;
        i10 = (int) f10;
        options.inSampleSize = i10 > 0 ? i10 : 1;
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, options);
    }

    public void compressAndGenImage(String imgPath, String outPath, int maxSize, boolean needsDelete, Context context) throws Throwable {
        Bitmap bitmap;
        if (imgPath.startsWith("content://")) {
            compressAndGenImage(MediaStore.Images.Media.getBitmap(context.getContentResolver(), Uri.parse(imgPath)), outPath, maxSize);
        } else {
            if (context != null && imgPath.startsWith("/android_asset/")) {
                bitmap = loadImageFromAssets(context, imgPath.replace("/android_asset/", ""));
            } else {
                bitmap = getBitmap(imgPath);
            }
            compressAndGenImage(bitmap, outPath, maxSize);
        }
        if (needsDelete) {
            File file = new File(imgPath);
            if (file.exists()) {
                file.delete();
            }
        }
    }
}
