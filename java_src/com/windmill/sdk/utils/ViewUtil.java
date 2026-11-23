package com.windmill.sdk.utils;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes8.dex */
public class ViewUtil {
    public static int dp2px(Context context, float dp) {
        return (int) ((dp * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean isVisible(View view) {
        if (view == null || view.getVisibility() != 0 || view.getParent() == null) {
            return false;
        }
        Rect rect = new Rect();
        if (!view.isShown() || !view.getGlobalVisibleRect(rect)) {
            return false;
        }
        int iHeight = rect.height() * rect.width();
        int height = view.getHeight() * view.getWidth();
        return height > 0 && ((double) iHeight) >= ((double) height) * 0.75d;
    }

    public static void removeChildFromParent(View view) {
        if (view == null || view.getParent() == null) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }
}
