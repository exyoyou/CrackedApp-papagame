package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.customview.ViewPagerCompat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class v4 extends RankingFragment implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View f71349o;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zc.c f71348n = new zc.c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Map<Class<?>, Object> f71350p = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f71351b;

        a(final List val$title) {
            this.f71351b = val$title;
        }

        @Override // java.lang.Runnable
        public void run() {
            v4.super.m0(this.f71351b);
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                v4.super.b0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class c extends org.androidannotations.api.builder.d<c, RankingFragment> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RankingFragment build() {
            v4 v4Var = new v4();
            v4Var.setArguments(this.args);
            return v4Var;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    public static c q0() {
        return new c();
    }

    @Override // com.join.mgps.fragment.RankingFragment
    public void b0() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f71350p.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f71349o;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // com.join.mgps.fragment.RankingFragment
    public void m0(@NotNull final List<TagData> title) {
        org.androidannotations.api.b.e("", new a(title), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f71348n);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f71349o = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f71349o = inflater.inflate(R.layout.fragment_rank, container, false);
        }
        return this.f71349o;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f71349o = null;
        this.f71101d = null;
        this.f71102e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71101d = (TabLayout) hasViews.internalFindViewById(R.id.tablayout);
        this.f71102e = (ViewPagerCompat) hasViews.internalFindViewById(R.id.viewPager);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f71348n.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f71350p.put(key, value);
    }
}
