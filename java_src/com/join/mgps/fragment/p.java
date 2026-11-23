package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class p extends o implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f70444z;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final zc.c f70443y = new zc.c();
    private final Map<Class<?>, Object> A = new HashMap();

    class a extends org.androidannotations.api.a.c {
        a(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p.super.S();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f70446b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataInfoBean f70447c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final UserInfo val$accountBean, final GiftPackageDataInfoBean val$bean) {
            super(id2, delay, serial);
            this.f70446b = val$accountBean;
            this.f70447c = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p.super.T(this.f70446b, this.f70447c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            p.this.setNetwork();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f70451b;

        e(final GiftPackageDataOperationBean val$bean) {
            this.f70451b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.V(this.f70451b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70453b;

        f(final String val$msg) {
            this.f70453b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.showToast(this.f70453b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.showMain();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70456b;

        h(final List val$giftPackageDataBeanList) {
            this.f70456b = val$giftPackageDataBeanList;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.showMain(this.f70456b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.X();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.Y();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p.super.W();
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, o> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public o build() {
            p pVar = new p();
            pVar.setArguments(this.args);
            return pVar;
        }
    }

    public static l i0() {
        return new l();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void S() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void T(final UserInfo accountBean, final GiftPackageDataInfoBean bean) {
        org.androidannotations.api.a.l(new b("", 0L, "", accountBean, bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void V(final GiftPackageDataOperationBean bean) {
        org.androidannotations.api.b.e("", new e(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void W() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void X() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void Y() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70444z;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // com.join.mgps.fragment.o, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70443y);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70444z = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70444z = inflater.inflate(R.layout.fragment_codesbox, container, false);
        }
        return this.f70444z;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70444z = null;
        this.f70348d = null;
        this.f70349e = null;
        this.f70350f = null;
        this.f70351g = null;
        this.f70352h = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70348d = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70349e = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70350f = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f70351g = (XListView2) hasViews.internalFindViewById(R.id.listView2);
        this.f70352h = (ListView) hasViews.internalFindViewById(R.id.recommendView);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70443y.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.A.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void showMain() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new f(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o
    public void showMain(final List<GiftPackageDataInfoBean> giftPackageDataBeanList) {
        org.androidannotations.api.b.e("", new h(giftPackageDataBeanList), 0L);
    }
}
