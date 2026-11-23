package com.join.mgps.fragment.roomlist;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends com.join.mgps.fragment.roomlist.a implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f70749e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zc.c f70748d = new zc.c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<Class<?>, Object> f70750f = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, com.join.mgps.fragment.roomlist.a> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.fragment.roomlist.a build() {
            b bVar = new b();
            bVar.setArguments(this.args);
            return bVar;
        }
    }

    public static a M() {
        return new a();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70750f.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70749e;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70748d);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70749e = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70749e = inflater.inflate(R.layout.fragment_raceroom, container, false);
        }
        return this.f70749e;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70749e = null;
        this.f70747c = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70747c = (WebView) hasViews.internalFindViewById(R.id.mWebView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70748d.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70750f.put(key, value);
    }
}
