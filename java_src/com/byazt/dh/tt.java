package com.byazt.dh;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public interface tt<T> extends com.byazt.oce.c {

    public enum c {
        hideCloseBtn,
        alwayShowBackBtn,
        alwayShowMediaView,
        fixedSize,
        hideBackBtn,
        hideTopMoreBtn
    }

    void c();

    void c(int i10);

    void c(Drawable drawable);

    void c(T t10, WeakReference<Context> weakReference, boolean z10);

    void c(boolean z10);

    void tt();

    View ve();
}
