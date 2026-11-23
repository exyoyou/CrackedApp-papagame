package m.framework.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.Locale;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    private static float density;

    public static int dipToPx(Context context, int i10) {
        if (density <= 0.0f) {
            density = context.getResources().getDisplayMetrics().density;
        }
        return (int) ((i10 * density) + 0.5f);
    }

    public static Bitmap getBitmap(String str) throws Throwable {
        return getBitmap(str, 1);
    }

    public static String getCachePath(Context context, String str) {
        String str2 = String.valueOf(context.getFilesDir().getAbsolutePath()) + "/mFramework/cache/";
        DeviceHelper deviceHelper = new DeviceHelper(context);
        if (deviceHelper.getSdcardState()) {
            str2 = String.valueOf(deviceHelper.getSdcardPath()) + "/mFramework/" + deviceHelper.getPackageName() + "/cache/";
        }
        if (!TextUtils.isEmpty(str)) {
            str2 = String.valueOf(str2) + str + e.F0;
        }
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdir();
        }
        return str2;
    }

    public static String getFileMime(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        if (contentTypeFor != null && contentTypeFor.length() > 0) {
            return contentTypeFor;
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        if (lowerCase.endsWith("jpg") || lowerCase.endsWith("jepg")) {
            return "image/jpeg";
        }
        if (lowerCase.endsWith("png")) {
            return "image/png";
        }
        if (lowerCase.endsWith("gif")) {
            return "image/gif";
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            contentTypeFor = URLConnection.guessContentTypeFromStream(fileInputStream);
            fileInputStream.close();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return (contentTypeFor == null || contentTypeFor.length() <= 0) ? "application/octet-stream" : contentTypeFor;
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.trim().length() <= 0 || "null".equals(str.trim().toLowerCase(Locale.getDefault()));
    }

    public static Bitmap getBitmap(InputStream inputStream) {
        return getBitmap(inputStream, 1);
    }

    public static Bitmap getBitmap(String str, int i10) throws Throwable {
        return getBitmap(new File(str), i10);
    }

    public static Bitmap getBitmap(File file, int i10) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(file);
        Bitmap bitmap = getBitmap(fileInputStream, i10);
        fileInputStream.close();
        return bitmap;
    }

    private static Bitmap getBitmap(InputStream inputStream, int i10) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        options.inSampleSize = i10;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }
}
