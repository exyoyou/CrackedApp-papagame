package com.join.mgps.lib.statusbar;

import android.R;
import android.annotation.TargetApi;
import android.view.View;
import android.view.Window;

/* JADX INFO: loaded from: classes3.dex */
class g implements a {
    g() {
    }

    @Override // com.join.mgps.lib.statusbar.a
    @TargetApi(23)
    public void a(Window window, int color) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(color);
        View viewFindViewById = window.findViewById(R.id.content);
        if (viewFindViewById != null) {
            viewFindViewById.setForeground(null);
        }
    }
}
