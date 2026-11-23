package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class a3 extends z2 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f68997j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zc.c f68996i = new zc.c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<Class<?>, Object> f68998k = new HashMap();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a3.this.close();
        }
    }

    public static class b extends org.androidannotations.api.builder.d<b, z2> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public z2 build() {
            a3 a3Var = new a3();
            a3Var.setArguments(this.args);
            return a3Var;
        }
    }

    public static b V() {
        return new b();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68998k.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68997j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68996i);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68997j = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68997j = inflater.inflate(R.layout.fragment_friend_msg, container, false);
        }
        return this.f68997j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68997j = null;
        this.f71544c = null;
        this.f71545d = null;
        this.f71546e = null;
        this.f71547f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71544c = (TextView) hasViews.internalFindViewById(R.id.tabReq);
        this.f71545d = (TextView) hasViews.internalFindViewById(R.id.tabLike);
        this.f71546e = hasViews.internalFindViewById(R.id.likeDot);
        this.f71547f = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.close);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68996i.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68998k.put(key, value);
    }
}
