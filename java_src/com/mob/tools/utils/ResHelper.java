package com.mob.tools.utils;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.mob.tools.network.KVPair;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes2.dex */
public class ResHelper implements PublicMemberKeeper {
    public static void clearCache(Context context) throws Throwable {
        deleteFileAndFolder(new File(getCachePath(context, null)));
    }

    public static void closeIOs(Closeable... closeableArr) {
        com.mob.commons.a.a(closeableArr);
    }

    public static boolean copyFile(String str, String str2) {
        return cn.fly.tools.utils.ResHelper.copyFile(str, str2);
    }

    @Deprecated
    public static long dateStrToLong(String str) {
        return cn.fly.tools.utils.ResHelper.dateStrToLong(str);
    }

    @Deprecated
    public static long dateToLong(String str) {
        return cn.fly.tools.utils.ResHelper.dateToLong(str);
    }

    @Deprecated
    public static Bundle decodeUrl(String str) {
        return cn.fly.tools.utils.ResHelper.decodeUrl(str);
    }

    public static void deleteFileAndFolder(File file) {
        cn.fly.tools.utils.ResHelper.deleteFileAndFolder(file);
    }

    public static int designToDevice(Context context, int i10, int i11) {
        return cn.fly.tools.utils.ResHelper.designToDevice(context, i10, i11);
    }

    public static int dipToPx(Context context, int i10) {
        return cn.fly.tools.utils.ResHelper.dipToPx(context, i10);
    }

    @Deprecated
    public static String encodeUrl(Bundle bundle) {
        return cn.fly.tools.utils.ResHelper.encodeUrl(bundle);
    }

    public static <T> T forceCast(Object obj) {
        return (T) forceCast(obj, null);
    }

    public static int getAnimRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, "anim", str);
    }

    public static int getBitmapRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getBitmapRes(context, str);
    }

    public static String getCachePath(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getCachePath(context, str);
    }

    public static String getCacheRoot(Context context) {
        return getCacheRoot(context, false);
    }

    public static File getCacheRootFile(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getCacheRootFile(context, str);
    }

    public static long getCaliSysTime() {
        return cn.fly.tools.utils.ResHelper.getCaliSysTime();
    }

    public static int getColorRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, TypedValues.Custom.S_COLOR, str);
    }

    public static String getDataCache(Context context) {
        return cn.fly.tools.utils.ResHelper.getDataCache(context);
    }

    public static File getDataCacheFile(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getDataCacheFile(context, str);
    }

    public static float getDensity(Context context) {
        return cn.fly.tools.utils.ResHelper.getDensity(context);
    }

    public static int getDensityDpi(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static float[] getDensityXYDpi(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return new float[]{displayMetrics.xdpi, displayMetrics.ydpi};
    }

    public static long getFLT() {
        return cn.fly.tools.utils.ResHelper.getFLT();
    }

    @Deprecated
    public static long getFileSize(String str) throws Throwable {
        return cn.fly.tools.utils.ResHelper.getFileSize(str);
    }

    public static int getIdRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, "id", str);
    }

    public static String getImageCachePath(Context context) {
        return getCachePath(context, "images");
    }

    public static int getLayoutRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, "layout", str);
    }

    @Deprecated
    public static synchronized Uri getMediaUri(Context context, String str, String str2) {
        return cn.fly.tools.utils.ResHelper.getMediaUri(context, str, str2);
    }

    public static int getRawRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, "raw", str);
    }

    public static int getResId(Context context, String str, String str2) {
        return cn.fly.tools.utils.ResHelper.getResId(context, str, str2);
    }

    public static int getScreenHeight(Context context) {
        return cn.fly.tools.utils.ResHelper.getScreenHeight(context);
    }

    public static double getScreenInch(Context context) {
        return cn.fly.tools.utils.ResHelper.getScreenInch(context);
    }

    public static int getScreenPpi(Context context) {
        return cn.fly.tools.utils.ResHelper.getScreenPpi(context);
    }

    public static int[] getScreenSize(Context context) {
        return cn.fly.tools.utils.ResHelper.getScreenSize(context);
    }

    public static int getScreenWidth(Context context) {
        return cn.fly.tools.utils.ResHelper.getScreenWidth(context);
    }

    public static int getStringArrayRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, "array", str);
    }

    public static int getStringRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, TypedValues.Custom.S_STRING, str);
    }

    public static int getStyleRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getResId(context, "style", str);
    }

    public static int[] getStyleableRes(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.getStyleableRes(context, str);
    }

    public static <T> boolean isEqual(T t10, T t11) {
        return !((t10 == null && t11 != null) || !(t10 == null || t10.equals(t11)));
    }

    @Deprecated
    public static int parseInt(String str) throws Throwable {
        return cn.fly.tools.utils.ResHelper.parseInt(str);
    }

    @Deprecated
    public static long parseLong(String str) throws Throwable {
        return parseLong(str, 10);
    }

    @Deprecated
    public static Uri pathToContentUri(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.pathToContentUri(context, str);
    }

    public static int pxToDip(Context context, int i10) {
        return cn.fly.tools.utils.ResHelper.pxToDip(context, i10);
    }

    public static ArrayList<HashMap<String, String>> readArrayListFromFile(String str) {
        return readArrayListFromFile(str, false);
    }

    public static byte[] readFromFileNoCompress(File file) {
        return cn.fly.tools.utils.ResHelper.readFromFileNoCompress(file);
    }

    public static Object readObjectFromFile(String str) {
        return cn.fly.tools.utils.ResHelper.readObjectFromFile(str);
    }

    public static void saveArrayListToFile(ArrayList<HashMap<String, String>> arrayList, String str) {
        saveArrayListToFile(arrayList, str, false);
    }

    public static boolean saveObjectToFile(String str, Object obj) {
        return cn.fly.tools.utils.ResHelper.saveObjectToFile(str, obj);
    }

    @Deprecated
    public static long strToDate(String str) {
        return cn.fly.tools.utils.ResHelper.strToDate(str);
    }

    @Deprecated
    public static Bundle urlToBundle(String str) {
        return cn.fly.tools.utils.ResHelper.urlToBundle(str);
    }

    @Deprecated
    public static Uri videoPathToContentUri(Context context, String str) {
        return cn.fly.tools.utils.ResHelper.videoPathToContentUri(context, str);
    }

    public static void writeToFileNoCompress(File file, byte[] bArr) {
        cn.fly.tools.utils.ResHelper.writeToFileNoCompress(file, bArr);
    }

    public static void copyFile(FileInputStream fileInputStream, FileOutputStream fileOutputStream) throws Throwable {
        cn.fly.tools.utils.ResHelper.copyFile(fileInputStream, fileOutputStream);
    }

    public static int designToDevice(Context context, float f10, int i10) {
        return cn.fly.tools.utils.ResHelper.designToDevice(context, f10, i10);
    }

    @Deprecated
    public static String encodeUrl(ArrayList<KVPair<String>> arrayList) {
        if (arrayList == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (KVPair<String> kVPair : arrayList) {
            if (i10 > 0) {
                sb2.append(Typography.amp);
            }
            String str = kVPair.name;
            String str2 = kVPair.value;
            if (str != null) {
                if (str2 == null) {
                    str2 = "";
                }
                sb2.append(cn.fly.tools.utils.Data.urlEncode(str) + SimpleComparison.EQUAL_TO_OPERATION + Data.urlEncode(str2));
                i10++;
            }
        }
        return sb2.toString();
    }

    public static <T> T forceCast(Object obj, T t10) {
        return (T) cn.fly.tools.utils.ResHelper.forceCast(obj, t10);
    }

    public static String getCacheRoot(Context context, boolean z10) {
        return cn.fly.tools.utils.ResHelper.getCacheRoot(context, z10);
    }

    public static File getDataCacheFile(Context context, String str, boolean z10) {
        return cn.fly.tools.utils.ResHelper.getDataCacheFile(context, str, z10);
    }

    @Deprecated
    public static long getFileSize(File file) throws Throwable {
        return cn.fly.tools.utils.ResHelper.getFileSize(file);
    }

    @Deprecated
    public static int parseInt(String str, int i10) throws Throwable {
        return Integer.parseInt(str, i10);
    }

    @Deprecated
    public static long parseLong(String str, int i10) throws Throwable {
        return Long.parseLong(str, i10);
    }

    public static ArrayList<HashMap<String, String>> readArrayListFromFile(String str, boolean z10) {
        return cn.fly.tools.utils.ResHelper.readArrayListFromFile(str, z10);
    }

    public static void saveArrayListToFile(ArrayList<HashMap<String, String>> arrayList, String str, boolean z10) {
        cn.fly.tools.utils.ResHelper.saveArrayListToFile(arrayList, str, z10);
    }
}
