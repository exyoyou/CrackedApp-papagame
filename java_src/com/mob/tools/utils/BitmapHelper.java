package com.mob.tools.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.opengl.GLES10;
import android.text.TextUtils;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import cn.fly.tools.network.HttpConnection;
import cn.fly.tools.network.HttpResponseCallback;
import cn.fly.tools.network.NetworkHelper;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import com.mob.tools.MobLog;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import com.sigmob.sdk.downloader.core.c;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapHelper implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f75531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f75532b;

    static {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        int iMax = Math.max(iArr[0], 2048);
        f75531a = iMax;
        f75532b = iMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(HttpConnection httpConnection, String str) throws Throwable {
        String strSubstring;
        List<String> list;
        int iLastIndexOf;
        List<String> list2;
        Map<String, List<String>> headerFields = httpConnection.getHeaderFields();
        if (headerFields == null || (list2 = headerFields.get(c.f80446j)) == null || list2.size() <= 0) {
            strSubstring = null;
        } else {
            strSubstring = null;
            for (String str2 : list2.get(0).split(";")) {
                if (str2.trim().startsWith(f.f80402e)) {
                    String[] strArrSplit = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
                    if (strArrSplit.length >= 2) {
                        strSubstring = strArrSplit[1];
                        if (!TextUtils.isEmpty(strSubstring) && strSubstring.startsWith(x.a.f97579g) && strSubstring.endsWith(x.a.f97579g)) {
                            strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                        }
                    }
                }
            }
        }
        if (strSubstring != null) {
            return strSubstring;
        }
        String strMD5 = Data.MD5(str);
        if (headerFields == null || (list = headerFields.get("Content-Type")) == null || list.size() <= 0) {
            return strMD5;
        }
        String str3 = list.get(0);
        String strTrim = str3 == null ? "" : str3.trim();
        if (strTrim.startsWith("image/")) {
            String strSubstring2 = strTrim.substring(6);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strMD5);
            sb2.append(o0.f49827a);
            if ("jpeg".equals(strSubstring2)) {
                strSubstring2 = "jpg";
            }
            sb2.append(strSubstring2);
            return sb2.toString();
        }
        int iLastIndexOf2 = str.lastIndexOf(47);
        String strSubstring3 = iLastIndexOf2 > 0 ? str.substring(iLastIndexOf2 + 1) : null;
        if (strSubstring3 == null || strSubstring3.length() <= 0 || (iLastIndexOf = strSubstring3.lastIndexOf(46)) <= 0 || strSubstring3.length() - iLastIndexOf >= 10) {
            return strMD5;
        }
        return strMD5 + strSubstring3.substring(iLastIndexOf);
    }

    public static Bitmap blur(Bitmap bitmap, int i10, int i11) {
        float f10 = i11;
        int i12 = (int) ((i10 / f10) + 0.5f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) ((bitmap.getWidth() / f10) + 0.5f), (int) ((bitmap.getHeight() / f10) + 0.5f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f11 = 1.0f / f10;
        canvas.scale(f11, f11);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        a(bitmapCreateBitmap, i12, true);
        return bitmapCreateBitmap;
    }

    public static Bitmap captureView(View view, int i10, int i11) throws Throwable {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    public static Bitmap compressByQuality(Bitmap bitmap, int i10) {
        return compressByQuality(bitmap, i10, false);
    }

    public static Bitmap cropBitmap(Bitmap bitmap, int i10, int i11, int i12, int i13) {
        int width = (bitmap.getWidth() - i10) - i12;
        int height = (bitmap.getHeight() - i11) - i13;
        if (width == bitmap.getWidth() && height == bitmap.getHeight()) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, -i10, -i11, new Paint());
        return bitmapCreateBitmap;
    }

    public static String downloadBitmap(Context context, final String str) throws Throwable {
        final String cachePath = cn.fly.tools.utils.ResHelper.getCachePath(context, "images");
        File file = new File(cachePath, Data.MD5(str));
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        final HashMap map = new HashMap();
        new NetworkHelper().rawGet(str, new HttpResponseCallback() { // from class: com.mob.tools.utils.BitmapHelper.1
            @Override // cn.fly.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                int responseCode = httpConnection.getResponseCode();
                Closeable closeable = null;
                if (responseCode == 200) {
                    String strB = BitmapHelper.b(httpConnection, str);
                    File file2 = new File(cachePath, strB);
                    if (!file2.getParentFile().exists()) {
                        file2.getParentFile().mkdirs();
                    }
                    if (file2.exists()) {
                        file2.delete();
                    }
                    try {
                        FilterInputStream filterInputStream = new FilterInputStream(httpConnection.getInputStream()) { // from class: com.mob.tools.utils.BitmapHelper.1.1
                            @Override // java.io.FilterInputStream, java.io.InputStream
                            public long skip(long j10) throws IOException {
                                long j11 = 0;
                                while (j11 < j10) {
                                    long jSkip = ((FilterInputStream) this).in.skip(j10 - j11);
                                    if (jSkip == 0) {
                                        break;
                                    }
                                    j11 += jSkip;
                                }
                                return j11;
                            }
                        };
                        try {
                            Bitmap bitmap = BitmapHelper.getBitmap(filterInputStream, 1);
                            if (bitmap == null || bitmap.isRecycled()) {
                                return;
                            }
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                                try {
                                    if (strB.toLowerCase().endsWith(".gif") || strB.toLowerCase().endsWith(".png")) {
                                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                                    } else {
                                        bitmap.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
                                    }
                                    fileOutputStream.flush();
                                    map.put("bitmap", file2.getAbsolutePath());
                                    com.mob.commons.a.a(fileOutputStream);
                                } catch (Throwable th) {
                                    th = th;
                                    closeable = fileOutputStream;
                                    com.mob.commons.a.a(closeable);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            closeable = filterInputStream;
                            com.mob.commons.a.a(closeable);
                            if (file2.exists()) {
                                file2.delete();
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } else {
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        inputStreamReader = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                            try {
                                for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(line);
                                }
                                HashMap map2 = new HashMap();
                                map2.put("error", sb2.toString());
                                map2.put("status", Integer.valueOf(responseCode));
                                throw new Throwable(HashonHelper.fromHashMap(map2));
                            } catch (Throwable th5) {
                                th = th5;
                                closeable = bufferedReader;
                                com.mob.commons.a.a(closeable, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        inputStreamReader = null;
                    }
                }
            }
        }, (NetworkHelper.NetworkTimeOut) null);
        return (String) map.get("bitmap");
    }

    public static int[] fixRect(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[2];
        int i10 = iArr[0];
        int i11 = iArr[1];
        float f10 = i10 / i11;
        int i12 = iArr2[0];
        int i13 = iArr2[1];
        if (f10 > i12 / i13) {
            iArr3[0] = i12;
            iArr3[1] = (int) (((i11 * iArr2[0]) / iArr[0]) + 0.5f);
        } else {
            iArr3[1] = i13;
            iArr3[0] = (int) (((i10 * iArr2[1]) / iArr[1]) + 0.5f);
        }
        return iArr3;
    }

    public static int[] fixRect_2(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[2];
        int i10 = iArr[0];
        int i11 = iArr[1];
        float f10 = i10 / i11;
        int i12 = iArr2[0];
        int i13 = iArr2[1];
        if (f10 > i12 / i13) {
            iArr3[1] = i13;
            iArr3[0] = (int) (((i10 * iArr2[1]) / iArr[1]) + 0.5f);
        } else {
            iArr3[0] = i12;
            iArr3[1] = (int) (((i11 * iArr2[0]) / iArr[0]) + 0.5f);
        }
        return iArr3;
    }

    public static Bitmap getBitmap(String str, int i10) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return getBitmap(new File(str), i10);
    }

    public static Bitmap getBitmapByCompressQuality(String str, int i10, int i11, int i12, long j10) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            Bitmap bitmapByCompressSize = getBitmapByCompressSize(str, i10, i11);
            if (i12 < 10 || i12 > 100) {
                i12 = 100;
            }
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                Bitmap.CompressFormat bmpFormat = getBmpFormat(str);
                bitmapByCompressSize.compress(bmpFormat, i12, byteArrayOutputStream2);
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (j10 < 10240) {
                    Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                    com.mob.commons.a.a(byteArrayOutputStream2);
                    return bitmapDecodeByteArray;
                }
                while (byteArray.length > j10 && i12 >= 11) {
                    byteArrayOutputStream2.reset();
                    i12 -= 6;
                    bitmapByCompressSize.compress(bmpFormat, i12, byteArrayOutputStream2);
                    byteArray = byteArrayOutputStream2.toByteArray();
                }
                if (i12 != 100) {
                    bitmapByCompressSize = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                }
                com.mob.commons.a.a(byteArrayOutputStream2);
                return bitmapByCompressSize;
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                com.mob.commons.a.a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Bitmap getBitmapByCompressSize(String str, int i10, int i11) throws Throwable {
        int i12;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i13 = options.outWidth;
        int i14 = options.outHeight;
        if (i10 <= 1 || i11 <= 1) {
            i12 = 1;
        } else {
            float f10 = 1.0f;
            float fMin = (Math.min(i13, i14) * 1.0f) / Math.min(i10, i11);
            float fMax = (Math.max(i13, i14) * 1.0f) / Math.max(i10, i11);
            float f11 = i13 / i14;
            if (f11 <= 2.0f && f11 >= 0.5d) {
                float fMin2 = Math.min(fMin, fMax);
                while (true) {
                    float f12 = f10 * 2.0f;
                    if (f12 > fMin2) {
                        break;
                    }
                    f10 = f12;
                }
            } else {
                while (true) {
                    float f13 = f10 * 2.0f;
                    if (f13 > fMin) {
                        break;
                    }
                    f10 = f13;
                }
            }
            i12 = (int) f10;
        }
        int i15 = i12 >= 1 ? i12 : 1;
        while (true) {
            if (i13 / i15 <= f75531a && i14 / i15 <= f75532b) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inPreferredConfig = Bitmap.Config.RGB_565;
                options2.inSampleSize = i15;
                return BitmapFactory.decodeFile(str, options2);
            }
            i15++;
        }
    }

    public static Bitmap.CompressFormat getBmpFormat(byte[] bArr) {
        String strA = a(bArr);
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        if (strA != null) {
            return (strA.endsWith("png") || strA.endsWith("gif")) ? Bitmap.CompressFormat.PNG : compressFormat;
        }
        return compressFormat;
    }

    public static String getMime(String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[8];
                    fileInputStream2.read(bArr);
                    String strA = a(bArr);
                    com.mob.commons.a.a(fileInputStream2);
                    return strA;
                } catch (Exception e10) {
                    e = e10;
                    fileInputStream = fileInputStream2;
                    MobLog.getInstance().w(e);
                    com.mob.commons.a.a(fileInputStream);
                    return "";
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    com.mob.commons.a.a(fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public static boolean isBlackBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return true;
        }
        int width = bitmap.getWidth() * bitmap.getHeight();
        int[] iArr = new int[width];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        boolean z10 = false;
        for (int i10 = 0; i10 < width; i10++) {
            if ((iArr[i10] & 16777215) != 0) {
                z10 = true;
                break;
            }
        }
        return !z10;
    }

    public static int mixAlpha(int i10, int i11) {
        int i12 = i10 >>> 24;
        int i13 = 255 - i12;
        return ((((((i10 & 16711680) >>> 16) * i12) + (((16711680 & i11) >>> 16) * i13)) / 255) << 16) | (-16777216) | ((((((i10 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8) * i12) + (((65280 & i11) >>> 8) * i13)) / 255) << 8) | (((i12 * (i10 & 255)) + (i13 * (i11 & 255))) / 255);
    }

    public static Bitmap roundBitmap(Bitmap bitmap, int i10, int i11, float f10, float f11, float f12, float f13) throws Throwable {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Rect rect = new Rect(0, 0, width, height);
        Bitmap bitmapCreateBitmap = (width == i10 && height == i11) ? Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect2 = new Rect(0, 0, i10, i11);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        float[] fArr = {f10, f10, f11, f11, f12, f12, f13, f13};
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, new RectF(0.0f, 0.0f, 0.0f, 0.0f), fArr));
        shapeDrawable.setBounds(rect2);
        shapeDrawable.draw(canvas);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return bitmapCreateBitmap;
    }

    public static boolean save(Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat) {
        return save(bitmap, cn.fly.tools.utils.FileUtils.getFileByPath(str), compressFormat, false);
    }

    public static String saveBitmap(Context context, Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i10) throws Throwable {
        File file = new File(cn.fly.tools.utils.ResHelper.getCachePath(context, "images"), String.valueOf(System.currentTimeMillis()) + (compressFormat == Bitmap.CompressFormat.PNG ? ".png" : ".jpg"));
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                bitmap.compress(compressFormat, i10, fileOutputStream2);
                fileOutputStream2.flush();
                com.mob.commons.a.a(fileOutputStream2);
                return file.getAbsolutePath();
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                com.mob.commons.a.a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String saveBitmapByCompress(String str, int i10, int i11, int i12) throws Throwable {
        Bitmap bitmapByCompressSize = getBitmapByCompressSize(str, i10, i11);
        if (i12 > 100) {
            i12 = 100;
        } else if (i12 < 10) {
            i12 = 10;
        }
        Bitmap.CompressFormat bmpFormat = getBmpFormat(str);
        String str2 = bmpFormat == Bitmap.CompressFormat.PNG ? ".png" : ".jpg";
        File file = new File(new File(str).getParent(), String.valueOf(System.currentTimeMillis()) + str2);
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                bitmapByCompressSize.compress(bmpFormat, i12, fileOutputStream2);
                fileOutputStream2.flush();
                com.mob.commons.a.a(fileOutputStream2);
                return file.getAbsolutePath();
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                com.mob.commons.a.a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String saveViewToImage(View view) throws Throwable {
        if (view == null) {
            return null;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        if (width <= 0 || height <= 0) {
            return null;
        }
        return saveViewToImage(view, width, height);
    }

    public static Bitmap scaleBitmapByHeight(Context context, int i10, int i11) throws Throwable {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i10);
        boolean z10 = i11 != bitmapDecodeResource.getHeight();
        Bitmap bitmapScaleBitmapByHeight = scaleBitmapByHeight(bitmapDecodeResource, i11);
        if (z10) {
            bitmapDecodeResource.recycle();
        }
        return bitmapScaleBitmapByHeight;
    }

    private static Bitmap a(Bitmap bitmap, int i10, boolean z10) {
        int i11 = i10;
        Bitmap bitmapCopy = z10 ? bitmap : bitmap.copy(bitmap.getConfig(), true);
        if (i11 < 1) {
            return null;
        }
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i12 = width * height;
        int[] iArr = new int[i12];
        bitmapCopy.getPixels(iArr, 0, width, 0, 0, width, height);
        int i13 = width - 1;
        int i14 = height - 1;
        int i15 = i11 + i11 + 1;
        int[] iArr2 = new int[i12];
        int[] iArr3 = new int[i12];
        int[] iArr4 = new int[i12];
        int[] iArr5 = new int[Math.max(width, height)];
        int i16 = (i15 + 1) >> 1;
        int i17 = i16 * i16;
        int i18 = i17 * 256;
        int[] iArr6 = new int[i18];
        for (int i19 = 0; i19 < i18; i19++) {
            iArr6[i19] = i19 / i17;
        }
        int[][] iArr7 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i15, 3);
        int i20 = i11 + 1;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        while (i21 < height) {
            Bitmap bitmap2 = bitmapCopy;
            int i24 = height;
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            int i31 = 0;
            int i32 = 0;
            int i33 = -i11;
            int i34 = 0;
            while (i33 <= i11) {
                int i35 = i14;
                int[] iArr8 = iArr5;
                int i36 = iArr[i22 + Math.min(i13, Math.max(i33, 0))];
                int[] iArr9 = iArr7[i33 + i11];
                iArr9[0] = (i36 & 16711680) >> 16;
                iArr9[1] = (i36 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr9[2] = i36 & 255;
                int iAbs = i20 - Math.abs(i33);
                int i37 = iArr9[0];
                i34 += i37 * iAbs;
                int i38 = iArr9[1];
                i25 += i38 * iAbs;
                int i39 = iArr9[2];
                i26 += iAbs * i39;
                if (i33 > 0) {
                    i30 += i37;
                    i31 += i38;
                    i32 += i39;
                } else {
                    i27 += i37;
                    i28 += i38;
                    i29 += i39;
                }
                i33++;
                i14 = i35;
                iArr5 = iArr8;
            }
            int i40 = i14;
            int[] iArr10 = iArr5;
            int i41 = i11;
            int i42 = i34;
            int i43 = 0;
            while (i43 < width) {
                iArr2[i22] = iArr6[i42];
                iArr3[i22] = iArr6[i25];
                iArr4[i22] = iArr6[i26];
                int i44 = i42 - i27;
                int i45 = i25 - i28;
                int i46 = i26 - i29;
                int[] iArr11 = iArr7[((i41 - i11) + i15) % i15];
                int i47 = i27 - iArr11[0];
                int i48 = i28 - iArr11[1];
                int i49 = i29 - iArr11[2];
                if (i21 == 0) {
                    iArr10[i43] = Math.min(i43 + i11 + 1, i13);
                }
                int i50 = iArr[i23 + iArr10[i43]];
                int i51 = (i50 & 16711680) >> 16;
                iArr11[0] = i51;
                int i52 = (i50 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                iArr11[1] = i52;
                int i53 = i50 & 255;
                iArr11[2] = i53;
                int i54 = i30 + i51;
                int i55 = i31 + i52;
                int i56 = i32 + i53;
                i42 = i44 + i54;
                i25 = i45 + i55;
                i26 = i46 + i56;
                i41 = (i41 + 1) % i15;
                int[] iArr12 = iArr7[i41 % i15];
                int i57 = iArr12[0];
                i27 = i47 + i57;
                int i58 = iArr12[1];
                i28 = i48 + i58;
                int i59 = iArr12[2];
                i29 = i49 + i59;
                i30 = i54 - i57;
                i31 = i55 - i58;
                i32 = i56 - i59;
                i22++;
                i43++;
                iArr6 = iArr6;
            }
            i23 += width;
            i21++;
            bitmapCopy = bitmap2;
            height = i24;
            i14 = i40;
            iArr5 = iArr10;
        }
        Bitmap bitmap3 = bitmapCopy;
        int i60 = i14;
        int[] iArr13 = iArr5;
        int i61 = height;
        int[] iArr14 = iArr6;
        int i62 = 0;
        while (i62 < width) {
            int i63 = -i11;
            int i64 = i15;
            int[] iArr15 = iArr;
            int i65 = 0;
            int i66 = 0;
            int i67 = 0;
            int i68 = 0;
            int i69 = 0;
            int i70 = 0;
            int i71 = 0;
            int i72 = i63;
            int i73 = i63 * width;
            int i74 = 0;
            int i75 = 0;
            while (i72 <= i11) {
                int i76 = width;
                int iMax = Math.max(0, i73) + i62;
                int[] iArr16 = iArr7[i72 + i11];
                iArr16[0] = iArr2[iMax];
                iArr16[1] = iArr3[iMax];
                iArr16[2] = iArr4[iMax];
                int iAbs2 = i20 - Math.abs(i72);
                i74 += iArr2[iMax] * iAbs2;
                i75 += iArr3[iMax] * iAbs2;
                i65 += iArr4[iMax] * iAbs2;
                if (i72 > 0) {
                    i69 += iArr16[0];
                    i70 += iArr16[1];
                    i71 += iArr16[2];
                } else {
                    i66 += iArr16[0];
                    i67 += iArr16[1];
                    i68 += iArr16[2];
                }
                int i77 = i60;
                if (i72 < i77) {
                    i73 += i76;
                }
                i72++;
                i60 = i77;
                width = i76;
            }
            int i78 = width;
            int i79 = i60;
            int i80 = i11;
            int i81 = i62;
            int i82 = i61;
            int i83 = 0;
            while (i83 < i82) {
                iArr15[i81] = (iArr15[i81] & (-16777216)) | (iArr14[i74] << 16) | (iArr14[i75] << 8) | iArr14[i65];
                int i84 = i74 - i66;
                int i85 = i75 - i67;
                int i86 = i65 - i68;
                int[] iArr17 = iArr7[((i80 - i11) + i64) % i64];
                int i87 = i66 - iArr17[0];
                int i88 = i67 - iArr17[1];
                int i89 = i68 - iArr17[2];
                if (i62 == 0) {
                    iArr13[i83] = Math.min(i83 + i20, i79) * i78;
                }
                int i90 = iArr13[i83] + i62;
                int i91 = iArr2[i90];
                iArr17[0] = i91;
                int i92 = iArr3[i90];
                iArr17[1] = i92;
                int i93 = iArr4[i90];
                iArr17[2] = i93;
                int i94 = i69 + i91;
                int i95 = i70 + i92;
                int i96 = i71 + i93;
                i74 = i84 + i94;
                i75 = i85 + i95;
                i65 = i86 + i96;
                i80 = (i80 + 1) % i64;
                int[] iArr18 = iArr7[i80];
                int i97 = iArr18[0];
                i66 = i87 + i97;
                int i98 = iArr18[1];
                i67 = i88 + i98;
                int i99 = iArr18[2];
                i68 = i89 + i99;
                i69 = i94 - i97;
                i70 = i95 - i98;
                i71 = i96 - i99;
                i81 += i78;
                i83++;
                i11 = i10;
            }
            i62++;
            i11 = i10;
            i60 = i79;
            i61 = i82;
            i15 = i64;
            iArr = iArr15;
            width = i78;
        }
        int i100 = width;
        bitmap3.setPixels(iArr, 0, i100, 0, 0, i100, i61);
        return bitmap3;
    }

    public static Bitmap compressByQuality(Bitmap bitmap, int i10, boolean z10) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = null;
        if (a(bitmap)) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, i10, byteArrayOutputStream2);
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (z10 && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                com.mob.commons.a.a(byteArrayOutputStream2);
                return bitmapDecodeByteArray;
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                com.mob.commons.a.a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean save(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, boolean z10) {
        boolean zCompress;
        if (a(bitmap) || !cn.fly.tools.utils.FileUtils.createFileByDeleteOldFile(file)) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
            try {
                zCompress = bitmap.compress(compressFormat, 100, bufferedOutputStream2);
                if (z10) {
                    try {
                        if (!bitmap.isRecycled()) {
                            bitmap.recycle();
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        try {
                            MobLog.getInstance().d(th);
                            com.mob.commons.a.a(bufferedOutputStream);
                        } catch (Throwable th2) {
                            com.mob.commons.a.a(bufferedOutputStream);
                            throw th2;
                        }
                    }
                }
                com.mob.commons.a.a(bufferedOutputStream2);
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream = bufferedOutputStream2;
                zCompress = false;
                MobLog.getInstance().d(th);
                com.mob.commons.a.a(bufferedOutputStream);
                return zCompress;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return zCompress;
    }

    public static Bitmap getBitmap(File file, int i10) throws Throwable {
        FileInputStream fileInputStream = null;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                Bitmap bitmap = getBitmap(fileInputStream2, i10);
                com.mob.commons.a.a(fileInputStream2);
                return bitmap;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                com.mob.commons.a.a(fileInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String saveViewToImage(View view, int i10, int i11) throws Throwable {
        Bitmap bitmapCaptureView = captureView(view, i10, i11);
        FileOutputStream fileOutputStream = null;
        if (bitmapCaptureView == null || bitmapCaptureView.isRecycled()) {
            return null;
        }
        File file = new File(cn.fly.tools.utils.ResHelper.getCachePath(view.getContext(), "screenshot"), String.valueOf(System.currentTimeMillis()) + ".jpg");
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                bitmapCaptureView.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream2);
                fileOutputStream2.flush();
                com.mob.commons.a.a(fileOutputStream2);
                return file.getAbsolutePath();
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                com.mob.commons.a.a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Bitmap.CompressFormat getBmpFormat(String str) throws Throwable {
        String lowerCase = str.toLowerCase();
        if (!lowerCase.endsWith("png") && !lowerCase.endsWith("gif")) {
            if (!lowerCase.endsWith("jpg") && !lowerCase.endsWith("jpeg") && !lowerCase.endsWith("bmp") && !lowerCase.endsWith("tif")) {
                String mime = getMime(str);
                if (!mime.endsWith("png") && !mime.endsWith("gif")) {
                    return Bitmap.CompressFormat.JPEG;
                }
                return Bitmap.CompressFormat.PNG;
            }
            return Bitmap.CompressFormat.JPEG;
        }
        return Bitmap.CompressFormat.PNG;
    }

    public static Bitmap scaleBitmapByHeight(Bitmap bitmap, int i10) {
        return Bitmap.createScaledBitmap(bitmap, (bitmap.getWidth() * i10) / bitmap.getHeight(), i10, true);
    }

    public static Bitmap getBitmap(InputStream inputStream, int i10) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i10;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    public static Bitmap compressByQuality(Bitmap bitmap, long j10) {
        return compressByQuality(bitmap, j10, false);
    }

    public static String saveBitmap(Context context, Bitmap bitmap) throws Throwable {
        return saveBitmap(context, bitmap, Bitmap.CompressFormat.JPEG, 80);
    }

    public static Bitmap compressByQuality(Bitmap bitmap, long j10, boolean z10) throws Throwable {
        byte[] byteArray;
        ByteArrayOutputStream byteArrayOutputStream = null;
        if (a(bitmap) || j10 <= 0) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                int i10 = 100;
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream2);
                if (byteArrayOutputStream2.size() <= j10) {
                    byteArray = byteArrayOutputStream2.toByteArray();
                } else {
                    byteArrayOutputStream2.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 0, byteArrayOutputStream2);
                    if (byteArrayOutputStream2.size() >= j10) {
                        byteArray = byteArrayOutputStream2.toByteArray();
                    } else {
                        int i11 = 0;
                        int i12 = 0;
                        while (i11 < i10) {
                            i12 = (i11 + i10) / 2;
                            byteArrayOutputStream2.reset();
                            bitmap.compress(Bitmap.CompressFormat.JPEG, i12, byteArrayOutputStream2);
                            long size = byteArrayOutputStream2.size();
                            if (size == j10) {
                                break;
                            }
                            if (size > j10) {
                                i10 = i12 - 1;
                            } else {
                                i11 = i12 + 1;
                            }
                        }
                        if (i10 == i12 - 1) {
                            byteArrayOutputStream2.reset();
                            bitmap.compress(Bitmap.CompressFormat.JPEG, i11, byteArrayOutputStream2);
                        }
                        byteArray = byteArrayOutputStream2.toByteArray();
                    }
                }
                if (z10 && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                com.mob.commons.a.a(byteArrayOutputStream2);
                return bitmapDecodeByteArray;
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                com.mob.commons.a.a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Bitmap getBitmap(String str) throws Throwable {
        return getBitmap(str, 1);
    }

    public static Bitmap getBitmap(Context context, String str) throws Throwable {
        return getBitmap(downloadBitmap(context, str));
    }

    private static String a(byte[] bArr) {
        byte[] bArr2 = {-1, -40, -1, -31};
        if (a(bArr, new byte[]{-1, -40, -1, -32}) || a(bArr, bArr2)) {
            return "jpg";
        }
        if (a(bArr, new byte[]{-119, 80, 78, 71})) {
            return "png";
        }
        if (a(bArr, "GIF".getBytes())) {
            return "gif";
        }
        if (a(bArr, "BM".getBytes())) {
            return "bmp";
        }
        return (a(bArr, new byte[]{73, 73, 42}) || a(bArr, new byte[]{77, 77, 42})) ? "tif" : "";
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Bitmap bitmap) {
        return bitmap == null || bitmap.getWidth() == 0 || bitmap.getHeight() == 0;
    }
}
