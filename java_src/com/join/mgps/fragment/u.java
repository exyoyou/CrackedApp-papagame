package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadMoreRecyclerView;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class u extends t implements xc.a, zc.a, zc.b {
    private View J;
    private final zc.c I = new zc.c();
    private final Map<Class<?>, Object> K = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f70988b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f70989c;

        a(final int val$position, final int val$i) {
            this.f70988b = val$position;
            this.f70989c = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.N(this.f70988b, this.f70989c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70991b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f70992c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f70993d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f70994e;

        b(final String val$msg, final boolean val$b, final int val$position, final int val$type) {
            this.f70991b = val$msg;
            this.f70992c = val$b;
            this.f70993d = val$position;
            this.f70994e = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.T(this.f70991b, this.f70992c, this.f70993d, this.f70994e);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f70996b;

        c(final CommentResponse val$bean) {
            this.f70996b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.U(this.f70996b);
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u.super.O();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f70999b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f71000c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f71001d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f70999b = val$bean;
            this.f71000c = val$position;
            this.f71001d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u.super.onPraise(this.f70999b, this.f71000c, this.f71001d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f71003b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f71004c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f71005d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f71003b = val$bean;
            this.f71004c = val$position;
            this.f71005d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u.super.onUnPraise(this.f71003b, this.f71004c, this.f71005d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                u.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u.this.relodingimag();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u.this.setNetwork();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u.this.X();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u.this.goComment();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.showLoding();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f71013b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentAllListBean.ScoringDetailsBean f71014c;

        m(final List val$commentBaseBeans, final CommentAllListBean.ScoringDetailsBean val$scoring) {
            this.f71013b = val$commentBaseBeans;
            this.f71014c = val$scoring;
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.W(this.f71013b, this.f71014c);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.showLodingFailed();
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.Y();
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71018b;

        p(final String val$message) {
            this.f71018b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            u.super.showMessage(this.f71018b);
        }
    }

    public static class q extends org.androidannotations.api.builder.d<q, t> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public t build() {
            u uVar = new u();
            uVar.setArguments(this.args);
            return uVar;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.f70895l = new PrefDef_(getActivity());
        zc.c.b(this);
    }

    public static q l0() {
        return new q();
    }

    @Override // com.join.mgps.fragment.t
    public void N(final int position, final int i10) {
        org.androidannotations.api.b.e("", new a(position, i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void O() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void R() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void T(final String msg, final boolean b10, final int position, final int type) {
        org.androidannotations.api.b.e("", new b(msg, b10, position, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void U(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new c(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void W(final List<CommentBaseBean> commentBaseBeans, final CommentAllListBean.ScoringDetailsBean scoring) {
        org.androidannotations.api.b.e("", new m(commentBaseBeans, scoring), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void Y() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.J;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.I);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.J = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.J = inflater.inflate(R.layout.comment_all_list_fragment, container, false);
        }
        return this.J;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = null;
        this.f70887d = null;
        this.f70888e = null;
        this.f70889f = null;
        this.f70890g = null;
        this.f70891h = null;
        this.f70892i = null;
        this.f70893j = null;
    }

    @Override // com.join.mgps.fragment.t, com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void onPraise(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new e("", 0L, "", bean, position, type));
    }

    @Override // com.join.mgps.fragment.t, com.join.mgps.adapter.CommentAllListFragmentAdapter.h
    public void onUnPraise(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new f("", 0L, "", bean, position, type));
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70887d = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.f70888e = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.f70889f = (TextView) hasViews.internalFindViewById(R.id.textTopRight);
        this.f70890g = (LoadMoreRecyclerView) hasViews.internalFindViewById(R.id.comment_all_list);
        this.f70891h = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70892i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70893j = (NestedScrollView) hasViews.internalFindViewById(R.id.noCommentLl);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.goCommit);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        TextView textView = this.f70889f;
        if (textView != null) {
            textView.setOnClickListener(new j());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new k());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.I.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.K.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void showLoding() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.t
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new p(message), 0L);
    }
}
