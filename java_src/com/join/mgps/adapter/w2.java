package com.join.mgps.adapter;

import android.content.Context;
import android.os.Looper;
import android.util.SparseArray;
import com.join.mgps.dto.GameTransferBean;

/* JADX INFO: loaded from: classes3.dex */
public final class w2 extends v2 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f63337j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Object f63338k;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63339b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameTransferBean f63340c;

        a(final int val$position, final GameTransferBean val$t) {
            this.f63339b = val$position;
            this.f63340c = val$t;
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.b(this.f63339b, this.f63340c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63342b;

        b(final int val$position) {
            this.f63342b = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.h(this.f63342b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63344b;

        c(final int val$position) {
            this.f63344b = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.g(this.f63344b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SparseArray f63346b;

        d(final SparseArray val$items) {
            this.f63346b = val$items;
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.a(this.f63346b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            w2.super.clear();
        }
    }

    private w2(Context context) {
        this.f63337j = context;
        z();
    }

    public static w2 x(Context context) {
        return new w2(context);
    }

    public static w2 y(Context context, Object rootFragment) {
        return new w2(context, rootFragment);
    }

    private void z() {
        this.f63286h = this.f63337j;
    }

    public void A(Context context) {
        this.f63337j = context;
        z();
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
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public void b(final int position, final GameTransferBean t10) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            super.b(position, t10);
        } else {
            org.androidannotations.api.b.e("", new a(position, t10), 0L);
        }
    }

    private w2(Context context, Object rootFragment) {
        this.f63337j = context;
        this.f63338k = rootFragment;
        z();
    }
}
