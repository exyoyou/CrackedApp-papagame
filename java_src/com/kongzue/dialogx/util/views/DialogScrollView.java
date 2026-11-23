package com.kongzue.dialogx.util.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import com.kongzue.dialogx.interfaces.c0;

/* JADX INFO: loaded from: classes3.dex */
public class DialogScrollView extends ScrollView implements c0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f74267b;

    public DialogScrollView(Context context) {
        super(context);
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public boolean a() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < childAt.getHeight();
        }
        return false;
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public void b(boolean z10) {
        this.f74267b = z10;
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public boolean c() {
        return this.f74267b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public int getScrollDistance() {
        return getScrollY();
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f74267b) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public DialogScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DialogScrollView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public DialogScrollView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }
}
