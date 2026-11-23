package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MGManageFragment_ extends z3 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f68728j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zc.c f68727i = new zc.c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<Class<?>, Object> f68729k = new HashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final IntentFilter f68730l = new IntentFilter();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final BroadcastReceiver f68731m = new BroadcastReceiver() { // from class: com.join.mgps.fragment.MGManageFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MGManageFragment_.this.M(intent);
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MGManageFragment_.super.Q();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f68734b;

        b(final UserInfo val$accountBean) {
            this.f68734b = val$accountBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGManageFragment_.super.P(this.f68734b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68736b;

        c(final int val$indexFrom) {
            this.f68736b = val$indexFrom;
        }

        @Override // java.lang.Runnable
        public void run() {
            MGManageFragment_.super.O(this.f68736b);
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MGManageFragment_.super.N();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class e extends org.androidannotations.api.builder.d<e, z3> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public z3 build() {
            MGManageFragment_ mGManageFragment_ = new MGManageFragment_();
            mGManageFragment_.setArguments(this.args);
            return mGManageFragment_;
        }
    }

    public static e V() {
        return new e();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f68730l.addAction(p5.a.f96211o);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z3
    public void N() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z3
    public void O(final int indexFrom) {
        org.androidannotations.api.b.e("", new c(indexFrom), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z3
    public void P(final UserInfo accountBean) {
        org.androidannotations.api.b.e("", new b(accountBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.z3
    public void Q() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68729k.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68728j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68727i);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f68731m, this.f68730l);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68728j = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68728j = inflater.inflate(R.layout.mg_manage_fragment, container, false);
        }
        return this.f68728j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f68731m);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68728j = null;
        this.f71555f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71555f = (XListView) hasViews.internalFindViewById(R.id.manageListView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68727i.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68729k.put(key, value);
    }
}
