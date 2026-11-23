package q6;

import android.R;
import android.annotation.TargetApi;
import android.content.ContentUris;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import com.google.android.material.color.utilities.d;
import com.sdk.base.module.manager.SDKManager;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f96558a = 1073741824;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f96559b = 1048576;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f96560c = 1024;

    public static String A(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : str.getBytes()) {
            sb2.append(Integer.toHexString(b10 & 255));
            sb2.append(" ");
        }
        return sb2.toString();
    }

    public static String B(byte... bytes) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bytes.length * 2];
        int i10 = 0;
        for (int i11 : bytes) {
            if (i11 < 0) {
                i11 += 256;
            }
            int i12 = i10 + 1;
            cArr2[i10] = cArr[i11 >>> 4];
            i10 = i12 + 1;
            cArr2[i12] = cArr[i11 & 15];
        }
        return new String(cArr2);
    }

    public static int C(Object obj) {
        try {
            return Integer.parseInt(obj.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public static int D(byte[] bytes) {
        int i10 = 0;
        for (int i11 = 0; i11 < bytes.length; i11++) {
            i10 += (bytes[i11] & 255) << (i11 * 8);
        }
        return i10;
    }

    public static <T> List<T> E(T[] array) {
        return Arrays.asList(array);
    }

    public static long F(Object obj) {
        try {
            return Long.parseLong(obj.toString());
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:9:0x0031  */
    @TargetApi(19)
    public static String G(Context context, Uri uri) {
        if (uri == null) {
            return "";
        }
        String path = uri.getPath();
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            String documentId = DocumentsContract.getDocumentId(uri);
            String[] strArrSplit = documentId.split(":");
            byte b10 = 0;
            String str = strArrSplit[0];
            authority.hashCode();
            switch (authority.hashCode()) {
                case 320699453:
                    if (!authority.equals("com.android.providers.downloads.documents")) {
                        b10 = -1;
                    }
                    break;
                case 596745902:
                    if (!authority.equals("com.android.externalstorage.documents")) {
                        b10 = -1;
                    } else {
                        b10 = 1;
                    }
                    break;
                case 1734583286:
                    if (!authority.equals("com.android.providers.media.documents")) {
                        b10 = -1;
                    } else {
                        b10 = 2;
                    }
                    break;
                default:
                    b10 = -1;
                    break;
            }
            switch (b10) {
                case 0:
                    return a(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(documentId).longValue()), null, null);
                case 1:
                    if ("primary".equalsIgnoreCase(str)) {
                        return Environment.getExternalStorageDirectory() + e.F0 + strArrSplit[1];
                    }
                    break;
                case 2:
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return a(context, uri2, "_id=?", new String[]{strArrSplit[1]});
            }
        } else {
            if ("content".equalsIgnoreCase(scheme)) {
                return authority.equals("com.google.android.apps.photos.content") ? uri.getLastPathSegment() : a(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(scheme)) {
                return uri.getPath();
            }
        }
        return path;
    }

    public static int H(Context context, float dpValue) {
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int I(byte first, byte second) {
        return (first << 8) + (second & 255);
    }

    public static String J(String str) {
        String str2 = "";
        for (char c10 : str.toCharArray()) {
            if (c10 == '\"' || c10 == '\'' || c10 == '\\') {
                str2 = str2 + "\\";
            }
            str2 = str2 + c10;
        }
        return str2;
    }

    public static int K(Context context, float pxValue) {
        return (int) ((pxValue / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static String L(InputStream is) {
        return M(is, "utf-8");
    }

    public static String M(InputStream is, String charset) {
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is, charset));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
                sb2.append("\n");
            }
            bufferedReader.close();
            is.close();
        } catch (IOException unused) {
        }
        return sb2.toString();
    }

    public static String N(Object[] objects) {
        return Arrays.deepToString(objects);
    }

    public static String O(Object[] objects, String tag) {
        StringBuilder sb2 = new StringBuilder();
        for (Object obj : objects) {
            sb2.append(obj);
            sb2.append(tag);
        }
        return sb2.toString();
    }

    private static String a(Context context, Uri uri, String selection, String[] selectionArgs) {
        String string = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, selection, selectionArgs, null);
            if (cursorQuery == null) {
                return null;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
            cursorQuery.moveToFirst();
            string = cursorQuery.getString(columnIndexOrThrow);
            cursorQuery.close();
            return string;
        } catch (IllegalArgumentException unused) {
            return string;
        }
    }

    public static <T> T[] b(List<T> list) {
        return (T[]) list.toArray();
    }

    public static String c(int num) {
        return Integer.toBinaryString(num);
    }

    public static String d(byte... bytes) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bytes.length * 8];
        int i10 = 0;
        for (int i11 : bytes) {
            if (i11 < 0) {
                i11 += 256;
            }
            int i12 = i10 + 1;
            cArr2[i10] = cArr[(i11 >>> 7) & 1];
            int i13 = i12 + 1;
            cArr2[i12] = cArr[(i11 >>> 6) & 1];
            int i14 = i13 + 1;
            cArr2[i13] = cArr[(i11 >>> 5) & 1];
            int i15 = i14 + 1;
            cArr2[i14] = cArr[(i11 >>> 4) & 1];
            int i16 = i15 + 1;
            cArr2[i15] = cArr[(i11 >>> 3) & 1];
            int i17 = i16 + 1;
            cArr2[i16] = cArr[(i11 >>> 2) & 1];
            int i18 = i17 + 1;
            cArr2[i17] = cArr[(i11 >>> 1) & 1];
            i10 = i18 + 1;
            cArr2[i18] = cArr[i11 & 1];
        }
        return new String(cArr2);
    }

    public static Bitmap e(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        if (drawable instanceof ColorDrawable) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(32, 32, Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawColor(((ColorDrawable) drawable).getColor());
            return bitmapCreateBitmap;
        }
        if (!(drawable instanceof NinePatchDrawable)) {
            return null;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap2;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0068 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    /* JADX WARN: Code duplicated, block: B:23:0x0084  */
    public static Bitmap f(View view) {
        int height;
        boolean zWillNotCacheDrawing;
        int drawingCacheBackgroundColor;
        Bitmap drawingCache;
        Bitmap bitmapCreateBitmap;
        int width = view.getWidth();
        int height2 = view.getHeight();
        if (!(view instanceof ListView)) {
            if (view instanceof ScrollView) {
                ScrollView scrollView = (ScrollView) view;
                height = 0;
                for (int i10 = 0; i10 < scrollView.getChildCount(); i10++) {
                    height += scrollView.getChildAt(i10).getHeight();
                }
            }
            view.setDrawingCacheEnabled(true);
            view.clearFocus();
            view.setPressed(false);
            zWillNotCacheDrawing = view.willNotCacheDrawing();
            view.setWillNotCacheDrawing(false);
            drawingCacheBackgroundColor = view.getDrawingCacheBackgroundColor();
            view.setDrawingCacheBackgroundColor(-1);
            if (drawingCacheBackgroundColor != -1) {
                view.destroyDrawingCache();
            }
            view.buildDrawingCache();
            drawingCache = view.getDrawingCache();
            if (drawingCache == null) {
                return null;
            }
            bitmapCreateBitmap = Bitmap.createBitmap(width, height2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawBitmap(drawingCache, 0.0f, 0.0f, (Paint) null);
            canvas.save();
            canvas.restore();
            if (!bitmapCreateBitmap.isRecycled()) {
                bitmapCreateBitmap.recycle();
            }
            view.destroyDrawingCache();
            view.setWillNotCacheDrawing(zWillNotCacheDrawing);
            view.setDrawingCacheBackgroundColor(drawingCacheBackgroundColor);
            return bitmapCreateBitmap;
        }
        ListView listView = (ListView) view;
        height = 0;
        for (int i11 = 0; i11 < listView.getChildCount(); i11++) {
            height += listView.getChildAt(i11).getHeight();
        }
        height2 = height;
        view.setDrawingCacheEnabled(true);
        view.clearFocus();
        view.setPressed(false);
        zWillNotCacheDrawing = view.willNotCacheDrawing();
        view.setWillNotCacheDrawing(false);
        drawingCacheBackgroundColor = view.getDrawingCacheBackgroundColor();
        view.setDrawingCacheBackgroundColor(-1);
        if (drawingCacheBackgroundColor != -1) {
            view.destroyDrawingCache();
        }
        view.buildDrawingCache();
        drawingCache = view.getDrawingCache();
        if (drawingCache == null) {
            return null;
        }
        bitmapCreateBitmap = Bitmap.createBitmap(width, height2, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
        canvas2.drawBitmap(drawingCache, 0.0f, 0.0f, (Paint) null);
        canvas2.save();
        canvas2.restore();
        if (!bitmapCreateBitmap.isRecycled()) {
            bitmapCreateBitmap.recycle();
        }
        view.destroyDrawingCache();
        view.setWillNotCacheDrawing(zWillNotCacheDrawing);
        view.setDrawingCacheBackgroundColor(drawingCacheBackgroundColor);
        return bitmapCreateBitmap;
    }

    public static Bitmap g(byte[] bytes) {
        return h(bytes, -1, -1);
    }

    public static Bitmap h(byte[] bytes, int width, int height) {
        Bitmap bitmapDecodeByteArray = null;
        if (bytes.length == 0) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inDither = false;
            options.inPreferredConfig = null;
            if (width > 0 && height > 0) {
                options.outWidth = width;
                options.outHeight = height;
            }
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options);
            bitmapDecodeByteArray.setDensity(96);
            return bitmapDecodeByteArray;
        } catch (Exception unused) {
            return bitmapDecodeByteArray;
        }
    }

    public static byte[] i(int i10) {
        return ByteBuffer.allocate(4).putInt(i10).array();
    }

    public static byte[] j(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException unused) {
        }
        return byteArray;
    }

    public static byte[] k(Drawable drawable) {
        return j(e(drawable));
    }

    public static byte[] l(InputStream is) {
        if (is == null) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[100];
            while (true) {
                int i10 = is.read(bArr, 0, 100);
                if (i10 == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    is.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static byte[] m(String hexData, boolean isHex) {
        if (hexData == null || hexData.equals("")) {
            return null;
        }
        if (!isHex) {
            return hexData.getBytes();
        }
        String strReplaceAll = hexData.replaceAll("\\s+", "");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(strReplaceAll.length() / 2);
        for (int i10 = 0; i10 < strReplaceAll.length(); i10 += 2) {
            byteArrayOutputStream.write((net.lingala.zip4j.crypto.PBKDF2.a.f94571a.indexOf(strReplaceAll.charAt(i10)) << 4) | net.lingala.zip4j.crypto.PBKDF2.a.f94571a.indexOf(strReplaceAll.charAt(i10 + 1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException unused) {
        }
        return byteArray;
    }

    public static ColorStateList n(@ColorInt int normalColor, @ColorInt int pressedColor) {
        return o(normalColor, pressedColor, pressedColor, normalColor);
    }

    public static ColorStateList o(@ColorInt int normalColor, @ColorInt int pressedColor, @ColorInt int focusedColor, @ColorInt int unableColor) {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_pressed, R.attr.state_enabled}, new int[]{R.attr.state_enabled, R.attr.state_focused}, new int[]{R.attr.state_enabled}, new int[]{R.attr.state_focused}, new int[]{R.attr.state_window_focused}, new int[0]}, new int[]{pressedColor, focusedColor, normalColor, focusedColor, unableColor, normalColor});
    }

    public static String p(@ColorInt int color) {
        return q(color, false);
    }

    public static String q(@ColorInt int color, boolean includeAlpha) {
        String hexString = Integer.toHexString(Color.alpha(color));
        String hexString2 = Integer.toHexString(Color.red(color));
        String hexString3 = Integer.toHexString(Color.green(color));
        String hexString4 = Integer.toHexString(Color.blue(color));
        if (hexString.length() == 1) {
            hexString = "0" + hexString;
        }
        if (hexString2.length() == 1) {
            hexString2 = "0" + hexString2;
        }
        if (hexString3.length() == 1) {
            hexString3 = "0" + hexString3;
        }
        if (hexString4.length() == 1) {
            hexString4 = "0" + hexString4;
        }
        if (!includeAlpha) {
            return hexString2 + hexString3 + hexString4;
        }
        return hexString + hexString2 + hexString3 + hexString4;
    }

    public static int r(@ColorInt int color) {
        return s(color, 0.8f);
    }

    public static int s(@ColorInt int color, @FloatRange(from = 0.0d, to = d.f30216a) float value) {
        float[] fArr = new float[3];
        Color.colorToHSV(color, fArr);
        fArr[2] = fArr[2] * value;
        return Color.HSVToColor(fArr);
    }

    public static int t(Context context, float pxValue) {
        return (int) ((pxValue / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Drawable u(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapDrawable(Resources.getSystem(), bitmap);
    }

    public static Drawable v(byte[] bytes) {
        return u(g(bytes));
    }

    public static String w(long fileSize) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        if (fileSize < 1024) {
            return fileSize + SDKManager.ALGO_B_AES_SHA256_RSA;
        }
        if (fileSize < 1048576) {
            return decimalFormat.format(fileSize / 1024.0d) + "K";
        }
        if (fileSize < 1073741824) {
            return decimalFormat.format(fileSize / 1048576.0d) + "M";
        }
        return decimalFormat.format(fileSize / 1.073741824E9d) + "G";
    }

    public static float x(Object obj) {
        try {
            return Float.parseFloat(obj.toString());
        } catch (NumberFormatException unused) {
            return -1.0f;
        }
    }

    public static String y(String str) {
        try {
            return new String(str.getBytes("utf-8"), "gbk");
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    public static String z(int num) {
        return Integer.toHexString(num);
    }
}
