package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendCardBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class k2 extends j2 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private View f69984u;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zc.c f69983t = new zc.c();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Map<Class<?>, Object> f69985v = new HashMap();

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69986b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final int val$ruid) {
            super(id2, delay, serial);
            this.f69986b = val$ruid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.b0(this.f69986b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69988b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final String val$ruid) {
            super(id2, delay, serial);
            this.f69988b = val$ruid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.n0(this.f69988b);
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
            k2.this.close();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FriendCardBean f69991b;

        d(final FriendCardBean val$data) {
            this.f69991b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.t0(this.f69991b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.q0();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69994b;

        f(final int val$ruid) {
            this.f69994b = val$ruid;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.a0(this.f69994b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69996b;

        g(final int val$ruid) {
            this.f69996b = val$ruid;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.c0(this.f69996b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69998b;

        h(final String val$ruid) {
            this.f69998b = val$ruid;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.o0(this.f69998b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70000b;

        i(final String val$ruid) {
            this.f70000b = val$ruid;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.s0(this.f70000b);
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.p0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f70003b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(String id2, long delay, String serial, final int val$ruid) {
            super(id2, delay, serial);
            this.f70003b = val$ruid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.Z(this.f70003b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class l extends org.androidannotations.api.builder.d<l, j2> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public j2 build() {
            k2 k2Var = new k2();
            k2Var.setArguments(this.args);
            return k2Var;
        }
    }

    public static l E0() {
        return new l();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void Z(final int ruid) {
        org.androidannotations.api.a.l(new k("", 0L, "", ruid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void a0(final int ruid) {
        org.androidannotations.api.b.e("", new f(ruid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void b0(final int ruid) {
        org.androidannotations.api.a.l(new a("", 0L, "", ruid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void c0(final int ruid) {
        org.androidannotations.api.b.e("", new g(ruid), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69985v.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69984u;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void n0(final String ruid) {
        org.androidannotations.api.a.l(new b("", 0L, "", ruid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void o0(final String ruid) {
        org.androidannotations.api.b.e("", new h(ruid), 0L);
    }

    @Override // com.join.mgps.fragment.j2, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69983t);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69984u = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69984u = inflater.inflate(R.layout.fragment_friend_card, container, false);
        }
        return this.f69984u;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69984u = null;
        this.f69865d = null;
        this.f69866e = null;
        this.f69867f = null;
        this.f69868g = null;
        this.f69869h = null;
        this.f69870i = null;
        this.f69871j = null;
        this.f69872k = null;
        this.f69873l = null;
        this.f69874m = null;
        this.f69875n = null;
        this.f69876o = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69865d = (SimpleDraweeView) hasViews.internalFindViewById(R.id.avatar);
        this.f69866e = (TextView) hasViews.internalFindViewById(R.id.name);
        this.f69867f = (TextView) hasViews.internalFindViewById(R.id.desc);
        this.f69868g = (TextView) hasViews.internalFindViewById(R.id.button);
        this.f69869h = (TextView) hasViews.internalFindViewById(R.id.likeCount);
        this.f69870i = (TextView) hasViews.internalFindViewById(R.id.state);
        this.f69871j = hasViews.internalFindViewById(R.id.icLike);
        this.f69872k = hasViews.internalFindViewById(R.id.icVip);
        this.f69873l = hasViews.internalFindViewById(R.id.noRecord);
        this.f69874m = (GridView) hasViews.internalFindViewById(R.id.gridView);
        this.f69875n = (Group) hasViews.internalFindViewById(R.id.main);
        this.f69876o = hasViews.internalFindViewById(R.id.netFailed);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.close);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69983t.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void p0() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69985v.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void q0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void s0(final String ruid) {
        org.androidannotations.api.b.e("", new i(ruid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j2
    public void t0(final FriendCardBean data) {
        org.androidannotations.api.b.e("", new d(data), 0L);
    }
}
