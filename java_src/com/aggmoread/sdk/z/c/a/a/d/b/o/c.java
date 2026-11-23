package com.aggmoread.sdk.z.c.a.a.d.b.o;

import android.view.View;
import com.aggmoread.sdk.z.c.a.a.d.b.n;

/* JADX INFO: loaded from: classes7.dex */
public class c implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f5200a = "AMGTAG";

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f5200a, "attach a");
        Object[] objArr = n.f5189a.get(view);
        if (objArr != null) {
            objArr[2] = Boolean.TRUE;
        } else {
            com.aggmoread.sdk.z.c.a.a.e.e.b(f5200a, "attach a tag == null");
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        com.aggmoread.sdk.z.c.a.a.e.e.b(f5200a, "dettach a");
        Object[] objArr = n.f5189a.get(view);
        if (objArr != null) {
            objArr[2] = Boolean.FALSE;
        } else {
            com.aggmoread.sdk.z.c.a.a.e.e.b(f5200a, "dettach a tag == null");
        }
    }
}
