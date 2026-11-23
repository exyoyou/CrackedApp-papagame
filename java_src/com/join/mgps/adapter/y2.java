package com.join.mgps.adapter;

import android.content.Context;
import android.os.Looper;
import android.util.SparseArray;
import com.join.mgps.dto.GameTransferBean;

/* JADX INFO: loaded from: classes3.dex */
public final class y2 extends x2 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f63971k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Object f63972l;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameTransferBean f63974c;

        a(final int val$position, final GameTransferBean val$t) {
            this.f63973b = val$position;
            this.f63974c = val$t;
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.b(this.f63973b, this.f63974c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63976b;

        b(final int val$position) {
            this.f63976b = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.h(this.f63976b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63978b;

        c(final int val$position) {
            this.f63978b = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.g(this.f63978b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SparseArray f63980b;

        d(final SparseArray val$items) {
            this.f63980b = val$items;
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.a(this.f63980b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y2.super.clear();
        }
    }

    private y2(Context context) {
        this.f63971k = context;
        A();
    }

    private void A() {
        this.f63857h = this.f63971k;
    }

    public static y2 y(Context context) {
        return new y2(context);
    }

    public static y2 z(Context context, Object rootFragment) {
        return new y2(context, rootFragment);
    }

    public void B(Context context) {
        this.f63971k = context;
        A();
    }

    @Override // com.join.mgps.adapter.o6
    public void a(final SparseArray<GameTransferBean> items) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.a(items);
        } else {
            org.androidannotations.api.b.e("", new d(items), 0L);
        }
    }

    @Override // com.join.mgps.adapter.o6
    public void clear() {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.clear();
        } else {
            org.androidannotations.api.b.e("", new e(), 0L);
        }
    }

    @Override // com.join.mgps.adapter.o6
    public void g(final int position) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.g(position);
        } else {
            org.androidannotations.api.b.e("", new c(position), 0L);
        }
    }

    @Override // com.join.mgps.adapter.o6
    public void h(final int position) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.h(position);
        } else {
            org.androidannotations.api.b.e("", new b(position), 0L);
        }
    }

    @Override // com.join.mgps.adapter.o6
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void b(final int position, final GameTransferBean t10) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.b(position, t10);
        } else {
            org.androidannotations.api.b.e("", new a(position, t10), 0L);
        }
    }

    private y2(Context context, Object rootFragment) {
        this.f63971k = context;
        this.f63972l = rootFragment;
        A();
    }
}
