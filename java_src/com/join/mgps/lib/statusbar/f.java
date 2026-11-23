package com.join.mgps.lib.statusbar;

import android.annotation.TargetApi;
import android.view.Window;

/* JADX INFO: loaded from: classes3.dex */
class f implements a {
    f() {
    }

    @Override // com.join.mgps.lib.statusbar.a
    @TargetApi(21)
    public void a(Window window, int color) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(color);
    }
}
