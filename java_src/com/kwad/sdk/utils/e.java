package com.kwad.sdk.utils;

import android.app.Activity;
import android.content.res.Resources;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static int q(Activity activity) {
        Resources resources = activity.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
        new StringBuilder("Navi height:").append(dimensionPixelSize);
        return dimensionPixelSize;
    }

    public static boolean r(@NonNull Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        if (viewGroup != null) {
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                viewGroup.getChildAt(i10).getContext().getPackageName();
                if (viewGroup.getChildAt(i10).getId() != -1 && "navigationBarBackground".equals(activity.getResources().getResourceEntryName(viewGroup.getChildAt(i10).getId()))) {
                    return true;
                }
            }
        }
        return false;
    }
}
