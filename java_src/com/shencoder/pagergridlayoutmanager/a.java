package com.shencoder.pagergridlayoutmanager;

import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
class a extends RecyclerView.SimpleOnItemTouchListener {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f78682f = "ItemTouchListener";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PagerGridLayoutManager f78683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RecyclerView f78684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f78685c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f78686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f78687e;

    a(PagerGridLayoutManager layoutManager, RecyclerView recyclerView) {
        this.f78683a = layoutManager;
        this.f78684b = recyclerView;
    }

    private void a(MotionEvent e10) {
        int actionIndex = e10.getActionIndex();
        if (e10.getPointerId(actionIndex) == this.f78685c) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.f78685c = e10.getPointerId(i10);
            this.f78686d = (int) (e10.getX(i10) + 0.5f);
            this.f78687e = (int) (e10.getY(i10) + 0.5f);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0080  */
    @Override // androidx.recyclerview.widget.RecyclerView.SimpleOnItemTouchListener, androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView rv, @NonNull MotionEvent e10) {
        int actionMasked = e10.getActionMasked();
        int actionIndex = e10.getActionIndex();
        if (PagerGridLayoutManager.P) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onInterceptTouchEvent-actionMasked: ");
            sb2.append(actionMasked);
            sb2.append(", actionIndex: ");
            sb2.append(actionIndex);
        }
        if (actionMasked == 0) {
            this.f78685c = e10.getPointerId(actionIndex);
            this.f78686d = (int) (e10.getX(actionIndex) + 0.5f);
            this.f78687e = (int) (e10.getY(actionIndex) + 0.5f);
            this.f78684b.getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = e10.findPointerIndex(this.f78685c);
            if (iFindPointerIndex < 0) {
                return false;
            }
            int x10 = (int) (e10.getX(iFindPointerIndex) + 0.5f);
            int y10 = (int) (e10.getY(iFindPointerIndex) + 0.5f);
            int i10 = x10 - this.f78686d;
            int i11 = y10 - this.f78687e;
            if (this.f78683a.canScrollHorizontally()) {
                this.f78684b.getParent().requestDisallowInterceptTouchEvent(this.f78684b.canScrollHorizontally(-i10));
            }
            if (this.f78683a.canScrollVertically()) {
                this.f78684b.getParent().requestDisallowInterceptTouchEvent(this.f78684b.canScrollVertically(-i11));
            }
        } else if (actionMasked == 5) {
            this.f78685c = e10.getPointerId(actionIndex);
            this.f78686d = (int) (e10.getX(actionIndex) + 0.5f);
            this.f78687e = (int) (e10.getY(actionIndex) + 0.5f);
            this.f78684b.getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 6) {
            a(e10);
        }
        return false;
    }
}
