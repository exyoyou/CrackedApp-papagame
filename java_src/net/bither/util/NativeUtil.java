package net.bither.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.o3;
import com.kwad.sdk.collector.AppStatusRules;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes.dex */
public class NativeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f94530a = 95;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f94531b = 314572;

    public interface a {
        void onFailed(String src);

        void onSuccess(String src);
    }

    static {
        System.loadLibrary("jpegbither");
        System.loadLibrary("bitherjni");
    }

    public static void a(Bitmap bit, int quality, String fileName, boolean optimize) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bit.getWidth() / 3, bit.getHeight() / 3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        new Rect(0, 0, bit.getWidth(), bit.getHeight());
        canvas.drawBitmap(bit, (Rect) null, new Rect(0, 0, bit.getWidth() / 3, bit.getHeight() / 3), (Paint) null);
        g(bitmapCreateBitmap, quality, fileName, optimize);
        bitmapCreateBitmap.recycle();
    }

    public static void b(Bitmap bit, String fileName, boolean optimize) {
        a(bit, f94530a, fileName, optimize);
    }

    public static void c(Context context, String str, String str2, int i10, boolean z10, a aVar) throws Throwable {
        Exception exc;
        Bitmap bitmap;
        try {
            h1.e("NativeUtil", "compressImage", "-->start");
            File fileP = str2.contains("content://") ? o3.p(Uri.parse(str2), context) : new File(str2);
            if (!fileP.getParentFile().exists()) {
                fileP.getParentFile().mkdirs();
            }
            if (f(new File(str)) < f94531b) {
                h1.e("Na  tiveUtil", "compressImage", "-->smaller");
                d(str, str2);
                if (aVar != null) {
                    aVar.onSuccess(str);
                    return;
                }
                return;
            }
            h1.e("NativeUtil", "compressImage", "-->need compress");
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inDither = false;
            options.inPurgeable = true;
            options.inInputShareable = true;
            options.inTempStorage = new byte[AppStatusRules.UploadConfig.DEFAULT_FILE_MAX_SIZE];
            options.inJustDecodeBounds = false;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            File file = new File(str);
            FileInputStream fileInputStream = null;
            Bitmap bitmapDecodeFileDescriptor = null;
            fileInputStream = null;
            try {
                try {
                    h1.e("NativeUtil", "compressImage", "-->get bitmap");
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream2.getFD(), null, options);
                        h1.e("NativeUtil", "compressImage", "-->get bitmap finished");
                        fileInputStream2.close();
                    } catch (Exception e10) {
                        exc = e10;
                        bitmap = bitmapDecodeFileDescriptor;
                        fileInputStream = fileInputStream2;
                        exc.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        bitmapDecodeFileDescriptor = bitmap;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        throw th;
                    }
                } catch (Exception e11) {
                    exc = e11;
                    bitmap = null;
                }
                if (bitmapDecodeFileDescriptor == null) {
                    h1.e("NativeUtil", "compressImage", "-->bitmap is null");
                    return;
                }
                h1.e("NativeUtil", "compressImage", "-->do native compress");
                a(bitmapDecodeFileDescriptor, i10, str2, z10);
                h1.e("NativeUtil", "compressImage", "-->do native compress finished");
                if (!bitmapDecodeFileDescriptor.isRecycled()) {
                    bitmapDecodeFileDescriptor.recycle();
                    System.gc();
                    h1.e("NativeUtil", "compressImage", "-->compress finished, notify gc");
                }
                if (aVar != null) {
                    aVar.onSuccess(str);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            if (aVar != null) {
                aVar.onFailed(str);
            }
        }
    }

    private static native String compressBitmap(Bitmap bit, int w10, int h10, int quality, byte[] fileNameBytes, boolean optimize);

    public static void d(String oldPath, String newPath) {
        try {
            if (!new File(oldPath).exists()) {
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(oldPath);
            FileOutputStream fileOutputStream = new FileOutputStream(newPath);
            byte[] bArr = new byte[1444];
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 == -1) {
                    fileInputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (Exception e10) {
            System.out.println("复制单个文件操作出错");
            e10.printStackTrace();
        }
    }

    public static void e(String oldPath, String newPath) {
        try {
            new File(newPath).mkdirs();
            String[] list = new File(oldPath).list();
            for (int i10 = 0; i10 < list.length; i10++) {
                String str = File.separator;
                File file = oldPath.endsWith(str) ? new File(oldPath + list[i10]) : new File(oldPath + str + list[i10]);
                if (file.isFile()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    FileOutputStream fileOutputStream = new FileOutputStream(newPath + e.F0 + file.getName().toString());
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int i11 = fileInputStream.read(bArr);
                        if (i11 == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, i11);
                        }
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                }
                if (file.isDirectory()) {
                    e(oldPath + e.F0 + list[i10], newPath + e.F0 + list[i10]);
                }
            }
        } catch (Exception e10) {
            System.out.println("fail to copy all files of dir.");
            e10.printStackTrace();
        }
    }

    public static long f(File file) throws Exception {
        if (!file.exists()) {
            file.createNewFile();
            return 0L;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    long jAvailable = fileInputStream2.available();
                    fileInputStream2.close();
                    return jAvailable;
                } catch (Exception e10) {
                    e = e10;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    if (fileInputStream == null) {
                        return 0L;
                    }
                    fileInputStream.close();
                    return 0L;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static void g(Bitmap bit, int quality, String fileName, boolean optimize) {
        compressBitmap(bit, bit.getWidth(), bit.getHeight(), quality, fileName.getBytes(), optimize);
    }
}
