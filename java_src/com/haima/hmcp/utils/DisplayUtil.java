package com.haima.hmcp.utils;

import android.content.Context;
import android.view.WindowManager;
import com.haima.hmcp.business.ResourceManager;

/* JADX INFO: loaded from: classes5.dex */
public class DisplayUtil {
    public static int dp2px(Context context, int i10) {
        return Math.round(i10 * ResourceManager.getInstance().getResources().getDisplayMetrics().density);
    }

    public static int getSystemDisplayRotation(Context context) {
        if (context == null) {
            return -1;
        }
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    public static int sp2px(Context context, int i10) {
        return Math.round(i10 * ResourceManager.getInstance().getResources().getDisplayMetrics().scaledDensity);
    }
}
