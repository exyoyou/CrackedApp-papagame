package com.join.mgps.lib.statusbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class StatusBarView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f71832b;

    public StatusBarView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), this.f71832b);
    }

    public StatusBarView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f71832b = h.a(context);
    }
}
