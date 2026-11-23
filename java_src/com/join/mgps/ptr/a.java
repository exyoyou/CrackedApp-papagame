package com.join.mgps.ptr;

import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a implements b {
    public static boolean canChildScrollUp(View view) {
        return view.canScrollVertically(-1);
    }

    public static boolean checkContentCanBePulledDown(PtrFrameLayout frame, View content, View header) {
        return !canChildScrollUp(content);
    }

    @Override // com.join.mgps.ptr.b
    public boolean checkCanDoRefresh(PtrFrameLayout frame, View content, View header) {
        return checkContentCanBePulledDown(frame, content, header);
    }
}
