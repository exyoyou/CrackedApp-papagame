package com.join.mgps.customview.zoomlayout;

import android.annotation.TargetApi;
import android.content.Context;
import android.widget.OverScroller;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: com.join.mgps.customview.zoomlayout.a$a, reason: collision with other inner class name */
    @TargetApi(9)
    private static class C0719a extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        OverScroller f67219a;

        public C0719a(Context context) {
            this.f67219a = new OverScroller(context);
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public boolean a() {
            return this.f67219a.computeScrollOffset();
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public void b(int startX, int startY, int velocityX, int velocityY, int minX, int maxX, int minY, int maxY, int overX, int overY) {
            this.f67219a.fling(startX, startY, velocityX, velocityY, minX, maxX, minY, maxY);
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public void c(boolean finished) {
            this.f67219a.forceFinished(finished);
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public int d() {
            return this.f67219a.getCurrX();
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public int e() {
            return this.f67219a.getCurrY();
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public boolean g() {
            return this.f67219a.isFinished();
        }
    }

    private static class b extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Scroller f67220a;

        public b(Context context) {
            this.f67220a = new Scroller(context);
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public boolean a() {
            return this.f67220a.computeScrollOffset();
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public void b(int startX, int startY, int velocityX, int velocityY, int minX, int maxX, int minY, int maxY, int overX, int overY) {
            this.f67220a.fling(startX, startY, velocityX, velocityY, minX, maxX, minY, maxY);
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public void c(boolean finished) {
            this.f67220a.forceFinished(finished);
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public int d() {
            return this.f67220a.getCurrX();
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public int e() {
            return this.f67220a.getCurrY();
        }

        @Override // com.join.mgps.customview.zoomlayout.a
        public boolean g() {
            return this.f67220a.isFinished();
        }
    }

    public static a f(Context context) {
        return new C0719a(context);
    }

    public abstract boolean a();

    public abstract void b(int startX, int startY, int velocityX, int velocityY, int minX, int maxX, int minY, int maxY, int overX, int overY);

    public abstract void c(boolean finished);

    public abstract int d();

    public abstract int e();

    public abstract boolean g();
}
