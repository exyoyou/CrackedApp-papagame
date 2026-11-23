package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Group;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class i3 extends h3 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f69823k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zc.c f69822j = new zc.c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map<Class<?>, Object> f69824l = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i3.super.Z();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69827c;

        b(final List val$data, final int val$page) {
            this.f69826b = val$data;
            this.f69827c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            i3.super.b0(this.f69826b, this.f69827c);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69829b;

        c(final int val$id) {
            this.f69829b = val$id;
        }

        @Override // java.lang.Runnable
        public void run() {
            i3.super.Y(this.f69829b);
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69831b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f69831b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                i3.super.V(this.f69831b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f69834c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final int val$id, final String val$action) {
            super(id2, delay, serial);
            this.f69833b = val$id;
            this.f69834c = val$action;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                i3.super.X(this.f69833b, this.f69834c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class f extends org.androidannotations.api.builder.d<f, h3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public h3 build() {
            i3 i3Var = new i3();
            i3Var.setArguments(this.args);
            return i3Var;
        }
    }

    public static f h0() {
        return new f();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h3
    public void V(final int page) {
        org.androidannotations.api.a.l(new d("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h3
    public void X(final int id2, final String action) {
        org.androidannotations.api.a.l(new e("", 0L, "", id2, action));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h3
    public void Y(final int id2) {
        org.androidannotations.api.b.e("", new c(id2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h3
    public void Z() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.h3
    public void b0(final List<FriendBean> data, final int page) {
        org.androidannotations.api.b.e("", new b(data, page), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69824l.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69823k;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69822j);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69823k = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69823k = inflater.inflate(R.layout.fragment_friend_msg_req, container, false);
        }
        return this.f69823k;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69823k = null;
        this.f69754c = null;
        this.f69755d = null;
        this.f69756e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69754c = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f69755d = (XListView) hasViews.internalFindViewById(R.id.listView);
        this.f69756e = (Group) hasViews.internalFindViewById(R.id.noRecord);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69822j.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69824l.put(key, value);
    }
}
