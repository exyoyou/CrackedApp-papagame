package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameInfoBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends com.join.mgps.fragment.b implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f69129p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zc.c f69128o = new zc.c();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Map<Class<?>, Object> f69130q = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f69131b;

        a(final List val$datas) {
            this.f69131b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.super.e0(this.f69131b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.super.showLodingFailed();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.c$c, reason: collision with other inner class name */
    class RunnableC0724c implements Runnable {
        RunnableC0724c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.super.d0();
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                c.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class e extends org.androidannotations.api.builder.d<e, com.join.mgps.fragment.b> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.fragment.b build() {
            c cVar = new c();
            cVar.setArguments(this.args);
            return cVar;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static e j0() {
        return new e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b
    public void d0() {
        org.androidannotations.api.b.e("", new RunnableC0724c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b
    public void e0(final List<GameInfoBean> datas) {
        org.androidannotations.api.b.e("", new a(datas), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69130q.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69129p;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.fragment.b, com.join.mgps.basefragment.a
    public void loadData() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    @Override // com.join.mgps.fragment.b, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69128o);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // com.join.mgps.basefragment.a, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69129p = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69129p = inflater.inflate(R.layout.fragment_gamelist, container, false);
        }
        return this.f69129p;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69129p = null;
        this.f69054e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69054e = (XRecyclerView) hasViews.internalFindViewById(R.id.listView2);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69128o.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69130q.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }
}
