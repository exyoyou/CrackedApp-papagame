package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class o4 extends n4 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f70427m;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zc.c f70426l = new zc.c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map<Class<?>, Object> f70428n = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, n4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public n4 build() {
            o4 o4Var = new o4();
            o4Var.setArguments(this.args);
            return o4Var;
        }
    }

    public static a Q() {
        return new a();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70428n.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70427m;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // com.join.mgps.fragment.n4, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70426l);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70427m = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70427m = inflater.inflate(R.layout.fragment_papa_standalone_oversea, container, false);
        }
        return this.f70427m;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70427m = null;
        this.f70315d = null;
        this.f70316e = null;
        this.f70317f = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70315d = (TextView) hasViews.internalFindViewById(R.id.tv_free);
        this.f70316e = (TextView) hasViews.internalFindViewById(R.id.tv_new);
        this.f70317f = (InterceptEventViewPager) hasViews.internalFindViewById(R.id.mViewPager);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70426l.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70428n.put(key, value);
    }
}
