package com.join.mgps.activity.message;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.GameReplyMessageListBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class d extends com.join.mgps.activity.message.c implements xc.a, zc.a, zc.b {
    private View C;
    private final zc.c B = new zc.c();
    private final Map<Class<?>, Object> D = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.c0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.S();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showLoding();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.activity.message.d$d, reason: collision with other inner class name */
    class RunnableC0686d implements Runnable {
        RunnableC0686d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.R();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showLodingFailed();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57696b;

        f(final String val$str) {
            this.f57696b = val$str;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showToast(this.f57696b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f57698b;

        g(final GameReplyMessageListBean.MessagesBean.DataBean val$bean) {
            this.f57698b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.a0(this.f57698b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f57700b;

        h(final CommentResponse val$bean) {
            this.f57700b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.U(this.f57700b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentCreateBean.InfoBean f57703c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f57704d;

        i(final String val$msg, final CommentCreateBean.InfoBean val$bean, final boolean val$b) {
            this.f57702b = val$msg;
            this.f57703c = val$bean;
            this.f57704d = val$b;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.V(this.f57702b, this.f57703c, this.f57704d);
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.Q();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.setNetwork();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameReplyMessageListBean.MessagesBean.DataBean f57709c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final String val$trim, final GameReplyMessageListBean.MessagesBean.DataBean val$bean) {
            super(id2, delay, serial);
            this.f57708b = val$trim;
            this.f57709c = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.X(this.f57708b, this.f57709c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.P();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.d0();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.M();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57714b;

        p(final int val$i) {
            this.f57714b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.Y(this.f57714b);
        }
    }

    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.e0();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f57717b;

        r(final List val$datas) {
            this.f57717b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.N(this.f57717b);
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.b0();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.W();
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f57721b;

        u(final List val$datas2) {
            this.f57721b = val$datas2;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.T(this.f57721b);
        }
    }

    public static class v extends org.androidannotations.api.builder.d<v, com.join.mgps.activity.message.c> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.activity.message.c build() {
            d dVar = new d();
            dVar.setArguments(this.args);
            return dVar;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.f57642o = new PrefDef_(getActivity());
        zc.c.b(this);
    }

    public static v y0() {
        return new v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void M() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void N(final List<com.join.mgps.activity.message.c.g> datas) {
        org.androidannotations.api.b.e("", new r(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void P() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void Q() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void R() {
        org.androidannotations.api.b.e("", new RunnableC0686d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void S() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void T(final List<com.join.mgps.activity.message.c.g> datas2) {
        org.androidannotations.api.b.e("", new u(datas2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void U(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new h(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void V(final String msg, final CommentCreateBean.InfoBean bean, final boolean b10) {
        org.androidannotations.api.b.e("", new i(msg, bean, b10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void W() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void X(final String trim, final GameReplyMessageListBean.MessagesBean.DataBean bean) {
        org.androidannotations.api.a.l(new l("", 0L, "", trim, bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void Y(final int i10) {
        org.androidannotations.api.b.e("", new p(i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void a0(final GameReplyMessageListBean.MessagesBean.DataBean bean) {
        org.androidannotations.api.b.e("", new g(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void b0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void c0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void e0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D.get(cls);
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
            this.C = inflater.inflate(R.layout.fragment_communtity, container, false);
        }
        return this.C;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.C = null;
        this.f57630c = null;
        this.f57631d = null;
        this.f57632e = null;
        this.f57634g = null;
        this.f57635h = null;
        this.f57636i = null;
        this.f57637j = null;
        this.f57643p = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57630c = (LinearLayout) hasViews.internalFindViewById(R.id.thumbslayout);
        this.f57631d = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.myswip);
        this.f57632e = (XListView2) hasViews.internalFindViewById(R.id.listview);
        this.f57634g = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f57635h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f57636i = (LinearLayout) hasViews.internalFindViewById(R.id.iv_nome);
        this.f57637j = (TextView) hasViews.internalFindViewById(R.id.redTips);
        Button button = (Button) hasViews.internalFindViewById(R.id.setNetwork);
        this.f57643p = button;
        if (button != null) {
            button.setOnClickListener(new k());
        }
        LinearLayout linearLayout = this.f57630c;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new n());
        }
        afterViews();
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
    @Override // com.join.mgps.activity.message.c
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.message.c
    public void showToast(final String str) {
        org.androidannotations.api.b.e("", new f(str), 0L);
    }
}
