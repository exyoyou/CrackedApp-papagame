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
public final class e3 extends d3 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f69427k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zc.c f69426j = new zc.c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map<Class<?>, Object> f69428l = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e3.super.Y();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69430b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69431c;

        b(final List val$data, final int val$page) {
            this.f69430b = val$data;
            this.f69431c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            e3.super.a0(this.f69430b, this.f69431c);
        }
    }

    class c extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f69433b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f69433b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                e3.super.W(this.f69433b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                e3.super.V();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class e extends org.androidannotations.api.builder.d<e, d3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d3 build() {
            e3 e3Var = new e3();
            e3Var.setArguments(this.args);
            return e3Var;
        }
    }

    public static e f0() {
        return new e();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d3
    public void V() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d3
    public void W(final int page) {
        org.androidannotations.api.a.l(new c("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d3
    public void Y() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d3
    public void a0(final List<FriendBean> data, final int page) {
        org.androidannotations.api.b.e("", new b(data, page), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69428l.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69427k;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69426j);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69427k = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69427k = inflater.inflate(R.layout.fragment_friend_msg_like, container, false);
        }
        return this.f69427k;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69427k = null;
        this.f69255c = null;
        this.f69256d = null;
        this.f69257e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69255c = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f69256d = (XListView) hasViews.internalFindViewById(R.id.listView);
        this.f69257e = (Group) hasViews.internalFindViewById(R.id.noRecord);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69426j.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69428l.put(key, value);
    }
}
