package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MyShopFragmentItem_ extends MyShopFragmentItem implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f68815e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zc.c f68814d = new zc.c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<?>, Object> f68816f = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, MyShopFragmentItem> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MyShopFragmentItem build() {
            MyShopFragmentItem_ myShopFragmentItem_ = new MyShopFragmentItem_();
            myShopFragmentItem_.setArguments(this.args);
            return myShopFragmentItem_;
        }
    }

    public static a b() {
        return new a();
    }

    private void c(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68816f.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68815e;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68814d);
        c(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68815e = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68815e = inflater.inflate(R.layout.shopfragmet_item, container, false);
        }
        return this.f68815e;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68815e = null;
        this.f68809b = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f68809b = (RecyclerView) hasViews.internalFindViewById(R.id.rcy);
        a();
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68814d.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68816f.put(key, value);
    }
}
