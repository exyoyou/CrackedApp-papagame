package com.haima.hmcp.utils;

import android.graphics.Rect;
import com.haima.hmcp.Constants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ScaleUtil {
    public static final int MIN_SIZE = Constants.CONFIG_VIRTUAL_KEYBOARD_SCALE_MIN_SIZE;
    private static final String TAG = "ScaleUtil";

    public static float calculateScaleFactor(List<Rect> list) {
        float f10;
        int iHeight;
        float f11 = 1.0f;
        if (list == null || list.size() < 2) {
            return 1.0f;
        }
        int i10 = 0;
        while (i10 < list.size()) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < list.size(); i12++) {
                Rect rect = list.get(i10);
                Rect rect2 = list.get(i12);
                if (Rect.intersects(rect, rect2)) {
                    Rect rect3 = new Rect();
                    rect3.set(Math.max(rect.left, rect2.left), Math.max(rect.top, rect2.top), Math.min(rect.right, rect2.right), Math.min(rect.bottom, rect2.bottom));
                    if (rect3.width() <= rect3.height()) {
                        if (rect.left < rect2.left) {
                            rect2 = rect;
                            rect = rect2;
                        }
                        f10 = rect.left - rect2.left;
                        iHeight = rect2.width();
                    } else {
                        if (rect.top < rect2.top) {
                            rect2 = rect;
                            rect = rect2;
                        }
                        f10 = rect.top - rect2.top;
                        iHeight = rect2.height();
                    }
                    float f12 = f10 / iHeight;
                    if (f12 < f11) {
                        f11 = f12;
                    }
                }
            }
            i10 = i11;
        }
        float f13 = 0.0f;
        for (Rect rect4 : list) {
            int iWidth = rect4.width();
            int iHeight2 = rect4.height();
            int i13 = MIN_SIZE;
            float fMax = Math.max(i13 / iWidth, i13 / iHeight2);
            if (fMax > f13) {
                f13 = fMax;
            }
        }
        LogUtils.i(TAG, "=preCheckScale=minScaleForDimension=" + f13);
        return Math.max(f11, f13);
    }
}
