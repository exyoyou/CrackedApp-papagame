package com.melnykov.fab;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class ObservableScrollView extends ScrollView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f75389b;

    public interface a {
        void a(ScrollView scrollView, int i10, int i11, int i12, int i13);
    }

    public ObservableScrollView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        a aVar = this.f75389b;
        if (aVar != null) {
            aVar.a(this, i10, i11, i12, i13);
        }
    }

    public void setOnScrollChangedListener(a aVar) {
        this.f75389b = aVar;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
