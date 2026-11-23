package com.google.android.material.internal;

import android.widget.Checkable;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.internal.l;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface l<T extends l<T>> extends Checkable {

    public interface a<C> {
        void a(C c10, boolean z10);
    }

    @IdRes
    int getId();

    void setInternalOnCheckedChangeListener(@Nullable a<T> aVar);
}
