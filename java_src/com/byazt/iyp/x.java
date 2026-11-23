package com.byazt.iyp;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import external.org.apache.commons.lang3.d;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 71})
public final class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile String f15676c;
    public static volatile String tt;
    public static final String[] uj = {"android.app", "android.os", "android.view.Choreographer", "android.view.View.perform", "android.view.ViewRootImpl", "androidx.compose", "androidx.activity.compose", "androidx.recyclerview.widget.LinearLayoutManager", "androidx.recyclerview.widget.GridLayoutManager", "androidx.recyclerview.widget.StaggeredGridLayoutManager", "androidx.recyclerview.widget.LinearLayoutManager", "androidx.recyclerview.widget.GridLayoutManager", "androidx.recyclerview.widget.StaggeredGridLayoutManager"};
    public static volatile String ve;

    private x() {
    }

    private static boolean c(String str) {
        if (str == null) {
            return true;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == 'd') {
            if (str.startsWith("dalvik.")) {
                return true;
            }
        } else if (cCharAt == 'j') {
            if (str.startsWith("java.lang.Thread") || str.startsWith("java.lang.reflect.") || str.startsWith("javax")) {
                return true;
            }
        } else if (cCharAt == 'c') {
            if (str.startsWith("com.android.")) {
                return true;
            }
        } else {
            if (cCharAt != 'a') {
                if (cCharAt != 'k' || (!str.startsWith("kotlin.") && !str.startsWith("kotlinx."))) {
                    break;
                }
                return true;
            }
            int i10 = 0;
            while (true) {
                String[] strArr = uj;
                if (i10 >= strArr.length) {
                    break;
                }
                if (str.startsWith(strArr[i10])) {
                    return true;
                }
                i10++;
            }
        }
        return false;
    }

    private static String tt() {
        return c(1, x.class.getName(), 2);
    }

    private static String c(int i10) {
        if (i10 == 1) {
            return f15676c;
        }
        if (i10 != 2) {
            return i10 != 3 ? "" : ve;
        }
        return tt;
    }

    private static void c(int i10, String str) {
        if (i10 == 1) {
            f15676c = str;
        } else if (i10 == 2) {
            tt = str;
        } else {
            if (i10 != 3) {
                return;
            }
            ve = str;
        }
    }

    private static String c(int i10, String str, int i11) {
        String strC = c(i10);
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        String strC2 = c(str, i11);
        c(i10, strC2);
        return strC2;
    }

    private static String c(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length < 2) {
            return "";
        }
        if (strArrSplit.length < i10 || !"com".equals(strArrSplit[0])) {
            i10 = Math.min(i10, strArrSplit.length - 1);
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(d.f90941a);
            }
            sb2.append(strArrSplit[i11]);
        }
        return sb2.toString();
    }

    private static boolean c(String str, String str2) {
        int length;
        int length2;
        if (TextUtils.isEmpty(str2) || (length = str.length()) < (length2 = str2.length()) || str.charAt(0) != str2.charAt(0)) {
            return false;
        }
        if (length2 <= 1 || length <= 1 || str.charAt(1) == str2.charAt(1)) {
            return str.startsWith(str2);
        }
        return false;
    }

    public static boolean c(float f10, String str) {
        if (f10 <= 0.0f) {
            return false;
        }
        if (f10 >= 1.0f) {
            return true;
        }
        return ((str != null ? str.hashCode() : (int) System.nanoTime()) & Integer.MAX_VALUE) % 1000000 < ((int) (f10 * 1000000.0f));
    }

    public static StackTraceElement[] c() {
        return Thread.currentThread().getStackTrace();
    }

    public static JSONArray c(StackTraceElement[] stackTraceElementArr, int i10) {
        return c(stackTraceElementArr, i10, false, true);
    }

    public static String c(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        return com.byazt.nr.a.tt(jSONArray.toString());
    }

    private static JSONArray c(StackTraceElement[] stackTraceElementArr, int i10, boolean z10, boolean z11) {
        String className;
        StringBuilder sb2;
        JSONArray jSONArray = new JSONArray();
        if (i10 > 0 && stackTraceElementArr != null && stackTraceElementArr.length != 0) {
            String strTt = tt();
            boolean z12 = !TextUtils.isEmpty(strTt);
            int i11 = 0;
            for (int i12 = 0; i12 < stackTraceElementArr.length && i11 < i10; i12++) {
                StackTraceElement stackTraceElement = stackTraceElementArr[i12];
                if (stackTraceElement != null && (className = stackTraceElement.getClassName()) != null && className.length() != 0 && !c(className) && ((!z12 || !c(className, strTt) || c(stackTraceElement)) && !c(className, "com.byazt"))) {
                    if (z10) {
                        String fileName = stackTraceElement.getFileName();
                        int lineNumber = stackTraceElement.getLineNumber();
                        sb2 = new StringBuilder(className.length() + 24);
                        sb2.append(className);
                        sb2.append(d.f90941a);
                        sb2.append(stackTraceElement.getMethodName());
                        sb2.append('(');
                        if (fileName != null) {
                            sb2.append(fileName);
                        }
                        sb2.append(':');
                        sb2.append(lineNumber);
                        sb2.append(')');
                    } else {
                        sb2 = new StringBuilder(className.length() + 8);
                        sb2.append(className);
                        sb2.append(d.f90941a);
                        sb2.append(stackTraceElement.getMethodName());
                    }
                    jSONArray.put(sb2.toString());
                    i11++;
                }
            }
        }
        return jSONArray;
    }

    private static boolean c(StackTraceElement stackTraceElement) {
        if (stackTraceElement == null) {
            return false;
        }
        String methodName = stackTraceElement.getMethodName();
        if (TextUtils.isEmpty(methodName)) {
            return false;
        }
        if (methodName.startsWith("load")) {
            return methodName.endsWith("Ad") || "loadStream".equals(methodName);
        }
        return "showRewardVideoAd".equals(methodName) || "showFullScreenVideoAd".equals(methodName) || "showSplashView".equals(methodName) || "getAdView".equals(methodName) || "getExpressAdView".equals(methodName) || "getSplashView".equals(methodName) || "getSplashCardView".equals(methodName);
    }
}
