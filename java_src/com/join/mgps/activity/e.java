package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends d implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f57122i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zc.c f57121h = new zc.c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map<Class<?>, Object> f57123j = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, d> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d build() {
            e eVar = new e();
            eVar.setArguments(this.args);
            return eVar;
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
        return (T) this.f57123j.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f57122i;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f57121h);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f57122i = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f57122i = inflater.inflate(R.layout.fragment_check_local_game, container, false);
        }
        return this.f57122i;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f57122i = null;
        this.f56897c = null;
        this.f56898d = null;
        this.f56899e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f56897c = (TextView) hasViews.internalFindViewById(R.id.beforNameTx);
        this.f56898d = (TextView) hasViews.internalFindViewById(R.id.afterNameTx);
        this.f56899e = (SimpleDraweeView) hasViews.internalFindViewById(R.id.appIcon);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f57121h.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f57123j.put(key, value);
    }
}
