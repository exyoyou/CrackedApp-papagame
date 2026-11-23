package com.kwad.sdk.utils;

import android.content.Context;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m<T> {
    protected boolean boG = false;
    protected boolean enable;

    public m(boolean z10) {
        this.enable = z10;
    }

    @Nullable
    public final T cX(Context context) {
        if (!this.enable || this.boG) {
            return null;
        }
        try {
            return cY(context);
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
            return null;
        }
    }

    @Nullable
    protected abstract T cY(Context context);

    public final void cs(boolean z10) {
        this.enable = z10;
    }
}
