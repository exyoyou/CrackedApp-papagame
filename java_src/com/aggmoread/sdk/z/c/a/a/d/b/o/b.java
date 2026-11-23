package com.aggmoread.sdk.z.c.a.a.d.b.o;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.e.v.i;

/* JADX INFO: loaded from: classes7.dex */
public class b extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5199b;

    public b(@NonNull Context context) {
        super(context);
        this.f5199b = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("xxxx", "ad tag container ");
        if (this.f5199b) {
            com.aggmoread.sdk.z.c.a.a.e.e.b("xxxx", "ad tag container ic " + i.b(new String[]{"com.qq.e"}));
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }
}
