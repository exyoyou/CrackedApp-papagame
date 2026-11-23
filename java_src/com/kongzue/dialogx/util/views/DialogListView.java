package com.kongzue.dialogx.util.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;
import androidx.appcompat.view.ContextThemeWrapper;
import com.kongzue.dialogx.interfaces.c0;

/* JADX INFO: loaded from: classes3.dex */
public class DialogListView extends ListView implements c0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.kongzue.dialogx.interfaces.d f74264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.kongzue.dialogx.interfaces.e f74265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f74266d;

    public DialogListView(Context context) {
        super(context);
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public boolean a() {
        return true;
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public void b(boolean z10) {
        this.f74266d = z10;
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public boolean c() {
        return this.f74266d;
    }

    public DialogListView d(com.kongzue.dialogx.interfaces.d dVar) {
        this.f74264b = dVar;
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        com.kongzue.dialogx.interfaces.d dVar;
        int actionMasked = motionEvent.getActionMasked() & 255;
        if (actionMasked == 0) {
            com.kongzue.dialogx.interfaces.d dVar2 = this.f74264b;
            if (dVar2 != null) {
                dVar2.a(motionEvent);
            }
        } else if (actionMasked == 1) {
            com.kongzue.dialogx.interfaces.d dVar3 = this.f74264b;
            if (dVar3 != null) {
                dVar3.c(motionEvent);
            }
        } else if (actionMasked == 2 && (dVar = this.f74264b) != null) {
            dVar.b(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.kongzue.dialogx.interfaces.d getBottomMenuListViewTouchEvent() {
        return this.f74264b;
    }

    @Override // com.kongzue.dialogx.interfaces.c0
    public int getScrollDistance() {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return 0;
        }
        return (-childAt.getTop()) + (getFirstVisiblePosition() * childAt.getHeight());
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f74266d) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public DialogListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DialogListView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    public DialogListView(com.kongzue.dialogx.interfaces.e eVar, Context context) {
        super(context);
        this.f74265c = eVar;
        setVerticalScrollBarEnabled(false);
    }

    public DialogListView(com.kongzue.dialogx.interfaces.e eVar, Context context, int i10) {
        super(new ContextThemeWrapper(context, i10));
        this.f74265c = eVar;
        setVerticalScrollBarEnabled(false);
    }
}
