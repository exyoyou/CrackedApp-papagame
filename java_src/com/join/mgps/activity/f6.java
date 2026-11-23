package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ObservableWebView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class f6 extends e6 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private View f57213l;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zc.c f57212k = new zc.c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map<Class<?>, Object> f57214m = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, e6> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e6 build() {
            f6 f6Var = new f6();
            f6Var.setArguments(this.args);
            return f6Var;
        }
    }

    public static a N() {
        return new a();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f57214m.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f57213l;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f57212k);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f57213l = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f57213l = inflater.inflate(R.layout.detail_simple_info_layout, container, false);
        }
        return this.f57213l;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f57213l = null;
        this.f57131d = null;
        this.f57132e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f57131d = (LinearLayout) hasViews.internalFindViewById(R.id.tipsLayout);
        this.f57132e = (ObservableWebView) hasViews.internalFindViewById(R.id.webView);
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f57212k.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f57214m.put(key, value);
    }
}
