package com.join.mgps.lib.statusbar;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes3.dex */
class e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f71840a = "ghStatusBarView";

    e() {
    }

    @Override // com.join.mgps.lib.statusbar.a
    @TargetApi(19)
    public void a(Window window, int color) {
        window.addFlags(67108864);
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        View viewFindViewWithTag = viewGroup.findViewWithTag(f71840a);
        if (viewFindViewWithTag == null) {
            viewFindViewWithTag = new StatusBarView(window.getContext());
            viewFindViewWithTag.setTag(f71840a);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 48;
            viewFindViewWithTag.setLayoutParams(layoutParams);
            viewGroup.addView(viewFindViewWithTag);
        }
        viewFindViewWithTag.setBackgroundColor(color);
        c.b(window, true);
    }
}
