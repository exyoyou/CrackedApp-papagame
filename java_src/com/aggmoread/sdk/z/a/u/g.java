package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class g<T extends View> extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T f4137a;

    public g(@NonNull Context context) {
        this(context, null);
    }

    private void b() {
    }

    public T a() {
        return this.f4137a;
    }

    public g(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void a(T t10) {
        this.f4137a = t10;
        new FrameLayout.LayoutParams(-1, -1);
        addView(t10);
    }

    public g(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        b();
    }

    public void a(T t10, ViewGroup.LayoutParams layoutParams) {
        this.f4137a = t10;
        addView(t10, layoutParams);
    }
}
