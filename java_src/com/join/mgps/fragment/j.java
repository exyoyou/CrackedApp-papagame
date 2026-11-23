package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.ClassifyBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class j extends i implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f69843k;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zc.c f69842j = new zc.c();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map<Class<?>, Object> f69844l = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ClassifyBean f69845b;

        a(final ClassifyBean val$bean) {
            this.f69845b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.super.a0(this.f69845b);
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class c extends org.androidannotations.api.builder.d<c, i> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public i build() {
            j jVar = new j();
            jVar.setArguments(this.args);
            return jVar;
        }
    }

    public static c e0() {
        return new c();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i
    public void a0(final ClassifyBean bean) {
        org.androidannotations.api.b.e("", new a(bean), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69844l.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69843k;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.i, com.join.mgps.basefragment.a
    public void loadData() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69842j);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69843k = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69843k = inflater.inflate(R.layout.fragment_classify, container, false);
        }
        return this.f69843k;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69843k = null;
        this.f69795d = null;
        this.f69796e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69795d = (FlowLayout) hasViews.internalFindViewById(R.id.classify_game);
        this.f69796e = (LinearLayout) hasViews.internalFindViewById(R.id.game_classify);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69842j.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69844l.put(key, value);
    }
}
