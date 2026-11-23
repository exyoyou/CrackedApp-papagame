package com.join.mgps.lib.statusbar;

import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes3.dex */
public class h {
    public static int a(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }
}
