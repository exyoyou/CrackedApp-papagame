package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.dto.FriendBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class y1 extends x1 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f71491m;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zc.c f71490l = new zc.c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map<Class<?>, Object> f71492n = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.search();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y1.this.close();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Boolean f71495b;

        c(final Boolean val$f) {
            this.f71495b = val$f;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.Q(this.f71495b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f71497b;

        d(final List val$data) {
            this.f71497b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.updateUi(this.f71497b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71499b;

        e(final String val$msg) {
            this.f71499b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            y1.super.toast(this.f71499b);
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y1.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FriendBean f71502b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final FriendBean val$bean) {
            super(id2, delay, serial);
            this.f71502b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                y1.super.P(this.f71502b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class h extends org.androidannotations.api.builder.d<h, x1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public x1 build() {
            y1 y1Var = new y1();
            y1Var.setArguments(this.args);
            return y1Var;
        }
    }

    public static h c0() {
        return new h();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x1
    public void P(final FriendBean bean) {
        org.androidannotations.api.a.l(new g("", 0L, "", bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x1
    public void Q(final Boolean f10) {
        org.androidannotations.api.b.e("", new c(f10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x1
    public void V() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f71492n.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f71491m;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f71490l);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f71491m = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f71491m = inflater.inflate(R.layout.fragment_friend_add, container, false);
        }
        return this.f71491m;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f71491m = null;
        this.f71445c = null;
        this.f71446d = null;
        this.f71447e = null;
        this.f71448f = null;
        this.f71449g = null;
        this.f71450h = null;
        this.f71451i = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71445c = (EditText) hasViews.internalFindViewById(R.id.input);
        this.f71446d = hasViews.internalFindViewById(R.id.hint);
        this.f71447e = (KeyboardListenLayout) hasViews.internalFindViewById(R.id.keyboardLayout);
        this.f71448f = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.f71449g = (TextView) hasViews.internalFindViewById(R.id.textView40);
        this.f71450h = (ImageView) hasViews.internalFindViewById(R.id.iv_no_data);
        this.f71451i = (TextView) hasViews.internalFindViewById(R.id.tv_no_data);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.search);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.close);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f71490l.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f71492n.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x1
    public void toast(final String msg) {
        org.androidannotations.api.b.e("", new e(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.x1
    public void updateUi(final List<FriendBean> data) {
        org.androidannotations.api.b.e("", new d(data), 0L);
    }
}
