package com.join.mgps.Util;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class w2 {
    private w2() {
    }

    public static void a(@Nullable TabLayout tabLayout) {
        if (tabLayout == null) {
            return;
        }
        tabLayout.setTabRippleColor(null);
        View childAt = tabLayout.getChildAt(0);
        if (childAt instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) childAt;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt2 = viewGroup.getChildAt(i10);
                if (childAt2 != null) {
                    childAt2.setBackground(null);
                    if (Build.VERSION.SDK_INT >= 23) {
                        childAt2.setForeground(null);
                    }
                }
            }
        }
    }
}
