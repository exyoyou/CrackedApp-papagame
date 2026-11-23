package com.join.mgps.Util;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes4.dex */
public class m {
    public static String a() {
        return Build.MODEL;
    }

    public static int b(Context context, String drawableName) {
        return context.getResources().getIdentifier(drawableName, "drawable", context.getPackageName());
    }

    public static String c(Exception ex) {
        StringBuffer stringBuffer = new StringBuffer();
        for (StackTraceElement stackTraceElement : ex.getStackTrace()) {
            try {
                stringBuffer.append(stackTraceElement.toString());
            } catch (Exception unused) {
            }
        }
        return stringBuffer.toString();
    }

    public static int d(String paramString) {
        try {
            return Color.parseColor(paramString.trim());
        } catch (Exception unused) {
            return Long.decode("0xff626262").intValue();
        }
    }

    public static DisplayMetrics e(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }
}
