package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class m4 extends l4 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f70205g;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zc.c f70204f = new zc.c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<Class<?>, Object> f70206h = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f70207b;

        a(final List val$tasks) {
            this.f70207b = val$tasks;
        }

        @Override // java.lang.Runnable
        public void run() {
            m4.super.N(this.f70207b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m4.super.notifyDataSetChanged();
        }
    }

    public static class c extends org.androidannotations.api.builder.d<c, l4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l4 build() {
            m4 m4Var = new m4();
            m4Var.setArguments(this.args);
            return m4Var;
        }
    }

    public static c R() {
        return new c();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    @Override // com.join.mgps.fragment.l4
    public void N(final List<DownloadTask> tasks) {
        org.androidannotations.api.b.e("", new a(tasks), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70206h.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70205g;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // com.join.mgps.fragment.l4
    public void notifyDataSetChanged() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70204f);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70205g = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70205g = inflater.inflate(R.layout.fragment_papa_game_local, container, false);
        }
        return this.f70205g;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70205g = null;
        this.f70132c = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70132c = (XListView2) hasViews.internalFindViewById(R.id.mListView);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70204f.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70206h.put(key, value);
    }
}
