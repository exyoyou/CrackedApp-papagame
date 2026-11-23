package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MyGamePapaFragmentV2_ extends MyGamePapaFragmentV2 implements xc.a, zc.a, zc.b {
    private View O;
    private final zc.c N = new zc.c();
    private final Map<Class<?>, Object> P = new HashMap();
    private final IntentFilter Q = new IntentFilter();
    private final BroadcastReceiver R = new BroadcastReceiver() { // from class: com.join.mgps.activity.MyGamePapaFragmentV2_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            MyGamePapaFragmentV2_.this.refreshGamePurchasedList();
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaFragmentV2_.this.setNetwork();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaFragmentV2_.this.back();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaFragmentV2_.this.search();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaFragmentV2_.this.plugs();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MyGamePapaFragmentV2_.this.j0();
        }
    }

    public static class f extends org.androidannotations.api.builder.d<f, MyGamePapaFragmentV2> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MyGamePapaFragmentV2 build() {
            MyGamePapaFragmentV2_ myGamePapaFragmentV2_ = new MyGamePapaFragmentV2_();
            myGamePapaFragmentV2_.setArguments(this.args);
            return myGamePapaFragmentV2_;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.C = new PrefDef_(getActivity());
        zc.c.b(this);
        this.Q.addAction(p5.a.I);
    }

    public static f n0() {
        return new f();
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.P.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.O;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.N);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.R, this.Q);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.O = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.O = inflater.inflate(R.layout.fragment_my_game, container, false);
        }
        return this.O;
    }

    @Override // com.join.mgps.activity.MyGamePapaFragmentV2, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.R);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.O = null;
        this.f55074e = null;
        this.f55075f = null;
        this.f55076g = null;
        this.f55077h = null;
        this.f55078i = null;
        this.f55079j = null;
        this.f55080k = null;
        this.f55081l = null;
        this.f55082m = null;
        this.f55083n = null;
        this.f55084o = null;
        this.f55085p = null;
        this.f55086q = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f55074e = hasViews.internalFindViewById(R.id.appbar);
        this.f55075f = hasViews.internalFindViewById(R.id.plugsDownloadTip);
        this.f55076g = (TextView) hasViews.internalFindViewById(R.id.plugType);
        this.f55077h = (TextView) hasViews.internalFindViewById(R.id.plugProgress);
        this.f55078i = hasViews.internalFindViewById(R.id.filter);
        this.f55079j = (TextView) hasViews.internalFindViewById(R.id.filterArr);
        this.f55080k = (TextView) hasViews.internalFindViewById(R.id.title);
        this.f55081l = hasViews.internalFindViewById(R.id.root);
        this.f55082m = hasViews.internalFindViewById(R.id.search);
        this.f55083n = hasViews.internalFindViewById(R.id.back);
        this.f55084o = hasViews.internalFindViewById(R.id.statubar);
        this.f55085p = (ViewPager2) hasViews.internalFindViewById(R.id.vp);
        this.f55086q = (TabLayout) hasViews.internalFindViewById(R.id.tabs);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.plugs);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.settings);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        View view = this.f55083n;
        if (view != null) {
            view.setOnClickListener(new b());
        }
        View view2 = this.f55082m;
        if (view2 != null) {
            view2.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.N.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.P.put(key, value);
    }
}
