package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public class c2 {
    public static String a(String filePath) {
        Bitmap bitmapJ = j(filePath);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapJ.compress(Bitmap.CompressFormat.JPEG, 40, byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    }

    public static int b(BitmapFactory.Options options, int reqWidth, int reqHeight) {
        int i10 = options.outHeight;
        int i11 = options.outWidth;
        if (i10 <= reqHeight && i11 <= reqWidth) {
            return 1;
        }
        int iRound = Math.round(i10 / reqHeight);
        int iRound2 = Math.round(i11 / reqWidth);
        return iRound < iRound2 ? iRound : iRound2;
    }

    private Bitmap c(Bitmap image) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 100;
        image.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        while (byteArrayOutputStream.toByteArray().length > 102400) {
            byteArrayOutputStream.reset();
            image.compress(Bitmap.CompressFormat.JPEG, i10, byteArrayOutputStream);
            i10 -= 10;
        }
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
    }

    public static void d(String path) {
        File file = new File(path);
        if (file.exists()) {
            file.delete();
        }
    }

    public static Bitmap e(Drawable drawable) {
        Bitmap bitmapCreateBitmap = null;
        try {
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                if (bitmapDrawable.getBitmap() != null) {
                    return bitmapDrawable.getBitmap();
                }
            }
            bitmapCreateBitmap = (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) ? Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return bitmapCreateBitmap;
    }

    public static void f(Context context, String path) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(path)));
        context.sendBroadcast(intent);
    }

    public static String g(InputStream is) {
        String str;
        try {
            byte[] bArr = new byte[10];
            if (is.read(bArr) != 10) {
                return "";
            }
            byte b10 = bArr[0];
            byte b11 = bArr[1];
            byte b12 = bArr[2];
            byte b13 = bArr[3];
            byte b14 = bArr[6];
            byte b15 = bArr[7];
            byte b16 = bArr[8];
            byte b17 = bArr[9];
            if (b10 == 71 && b11 == 73 && b12 == 70) {
                str = "GIF";
            } else if (b11 == 80 && b12 == 78 && b13 == 71) {
                str = "PNG";
            } else {
                if (b14 != 74 || b15 != 70 || b16 != 73 || b17 != 70) {
                    return "";
                }
                str = "JPEG";
            }
            return str;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static Bitmap h(Bitmap bitmap) {
        return i(bitmap, 14.0f);
    }

    public static Bitmap i(Bitmap bitmap, final float roundPx) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            RectF rectF = new RectF(new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()));
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-16777216);
            canvas.drawRoundRect(rectF, roundPx, roundPx, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rect, paint);
            return bitmapCreateBitmap;
        } catch (Exception unused) {
            return bitmap;
        }
    }

    public static Bitmap j(String filePath) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(filePath, options);
        options.inSampleSize = b(options, 480, 800);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(filePath, options);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    public static Bitmap k(String srcPath) {
        int i10;
        float f10;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(srcPath, options);
        options.inJustDecodeBounds = false;
        int i11 = options.outWidth;
        int i12 = options.outHeight;
        if (i11 <= i12 || i11 <= 768.0f) {
            if (i11 >= i12 || i12 <= 1024.0f) {
                i10 = 1;
            } else {
                f10 = i12 / 1024.0f;
            }
            options.inSampleSize = i10 > 0 ? i10 : 1;
            return BitmapFactory.decodeFile(srcPath, options);
        }
        f10 = i11 / 768.0f;
        i10 = (int) f10;
        options.inSampleSize = i10 > 0 ? i10 : 1;
        return BitmapFactory.decodeFile(srcPath, options);
    }

    public static Bitmap l(String path, int inSampleSize) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        File file = new File(path);
        FileInputStream fileInputStream2 = new FileInputStream(file);
        Bitmap bitmapDecodeStream = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream2, null, options);
            fileInputStream2.close();
            fileInputStream = new FileInputStream(file);
            try {
                options.inSampleSize = inSampleSize;
                options.inJustDecodeBounds = false;
                bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
            } catch (Exception unused) {
                fileInputStream2 = fileInputStream;
                fileInputStream2.close();
            } catch (Throwable th2) {
                th = th2;
                fileInputStream.close();
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            fileInputStream = fileInputStream2;
            th = th3;
        }
        return bitmapDecodeStream;
    }

    public static Bitmap m(String path, int sizeW, int sizeH) throws IOException {
        File file = new File(path);
        FileInputStream fileInputStream = new FileInputStream(file);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(fileInputStream, null, options);
        fileInputStream.close();
        int i10 = 0;
        while (true) {
            if ((options.outWidth >> i10) <= sizeW && (options.outHeight >> i10) <= sizeH) {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                options.inSampleSize = (int) Math.pow(2.0d, i10);
                options.inJustDecodeBounds = false;
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream2, null, options);
                fileInputStream2.close();
                return bitmapDecodeStream;
            }
            i10++;
        }
    }

    public static void n(Bitmap bitmap, String outPath) throws Throwable {
        o(bitmap, outPath, 100);
    }

    public static void o(Bitmap bitmap, String outPath, int quality) throws Throwable {
        p(bitmap, outPath, Bitmap.CompressFormat.JPEG, quality);
    }

    /* JADX INFO: Removed unreachable split cross block B:38:0x0050 */
    public static void p(Bitmap bitmap, String outPath, Bitmap.CompressFormat format, int quality) throws Throwable {
        File file = new File(outPath);
        if (file.exists()) {
            file.delete();
        }
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (bitmap != null) {
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(outPath);
                        try {
                            bitmap.compress(format, quality, fileOutputStream2);
                            fileOutputStream2.close();
                        } catch (Exception e10) {
                            e = e10;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (IOException e13) {
                e13.printStackTrace();
            }
        }
    }

    public static void q(Bitmap bitmap, String outPath) throws Throwable {
        p(bitmap, outPath, Bitmap.CompressFormat.PNG, 100);
    }

    public static void r(String path, String outPath) throws Throwable {
        if (path == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    Bitmap bitmapL = l(path, 1);
                    FileOutputStream fileOutputStream2 = new FileOutputStream(outPath);
                    try {
                        bitmapL.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2);
                        fileOutputStream2.close();
                    } catch (Exception e10) {
                        e = e10;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        if (fileOutputStream == null) {
                        } else {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
    }
}
