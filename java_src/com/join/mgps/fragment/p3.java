package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class p3 extends o3 implements xc.a, zc.a, zc.b {
    private View C;
    private final zc.c B = new zc.c();
    private final Map<Class<?>, Object> D = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.h0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.d0();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.f0();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.g0();
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f70499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f70500c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final GiftPackageDataInfoBean val$bean, final int val$msgWhat) {
            super(id2, delay, serial);
            this.f70499b = val$bean;
            this.f70500c = val$msgWhat;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p3.super.Y(this.f70499b, this.f70500c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p3.super.Z();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p3.this.relodingimag();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p3.this.c0();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p3.this.setNetwork();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.b0();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70507b;

        k(final String val$message) {
            this.f70507b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.showToast(this.f70507b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f70509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f70510c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f70511d;

        l(final GiftPackageDataOperationBean val$bean, final DownloadTask val$downloadTask, final int val$what) {
            this.f70509b = val$bean;
            this.f70510c = val$downloadTask;
            this.f70511d = val$what;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.e0(this.f70509b, this.f70510c, this.f70511d);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.showLoding();
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.showLodingFailed();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70515b;

        o(final List val$subList) {
            this.f70515b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            p3.super.showMain(this.f70515b);
        }
    }

    public static class p extends org.androidannotations.api.builder.d<p, o3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public o3 build() {
            p3 p3Var = new p3();
            p3Var.setArguments(this.args);
            return p3Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static p u0() {
        return new p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void Y(final GiftPackageDataInfoBean bean, final int msgWhat) {
        org.androidannotations.api.a.l(new e("", 0L, "", bean, msgWhat));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void Z() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void b0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void d0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void e0(final GiftPackageDataOperationBean bean, final DownloadTask downloadTask, final int what) {
        org.androidannotations.api.b.e("", new l(bean, downloadTask, what), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void f0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void g0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void h0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.C;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.B);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.C = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.C = inflater.inflate(R.layout.game_online_first_layout, container, false);
        }
        return this.C;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.C = null;
        this.f70392c = null;
        this.f70393d = null;
        this.f70394e = null;
        this.f70395f = null;
        this.f70396g = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70392c = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70393d = (XListView2) hasViews.internalFindViewById(R.id.rankListView);
        this.f70394e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70395f = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70396g = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f70396g;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.B.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.D.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void showLoding() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void showMain(final List<l6.a<GiftPackageDataInfoBean>> subList) {
        org.androidannotations.api.b.e("", new o(subList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o3
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new k(message), 0L);
    }
}
