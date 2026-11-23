package com.kongzue.dialogx.util.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ListView;

/* JADX INFO: loaded from: classes3.dex */
public class PopMenuListView extends ListView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f74372b;

    public PopMenuListView(Context context) {
        super(context);
        this.f74372b = -1.0f;
    }

    public boolean a() {
        return (getFirstVisiblePosition() == 0 && getCount() == getLastVisiblePosition() + 1) ? false : true;
    }

    public PopMenuListView b(float f10) {
        this.f74372b = f10;
        return this;
    }

    public float getMaxHeight() {
        return this.f74372b;
    }

    @Override // android.widget.ListView, android.widget.AbsListView
    protected void layoutChildren() {
        try {
            super.layoutChildren();
        } catch (IllegalStateException unused) {
            ((BaseAdapter) getAdapter()).notifyDataSetChanged();
            super.layoutChildren();
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        float f10 = this.f74372b;
        if (f10 <= size && f10 > -1.0f) {
            i11 = View.MeasureSpec.makeMeasureSpec(Float.valueOf(f10).intValue(), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
    }

    public PopMenuListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74372b = -1.0f;
    }

    public PopMenuListView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74372b = -1.0f;
    }
}
