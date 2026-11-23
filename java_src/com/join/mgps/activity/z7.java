package com.join.mgps.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class z7 extends y7 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private View f58282t;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zc.c f58281s = new zc.c();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Map<Class<?>, Object> f58283u = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z7.super.Z();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f58285b;

        b(final boolean val$refreshChildFragment) {
            this.f58285b = val$refreshChildFragment;
        }

        @Override // java.lang.Runnable
        public void run() {
            z7.super.U(this.f58285b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f58287b;

        c(final String val$groupId) {
            this.f58287b = val$groupId;
        }

        @Override // java.lang.Runnable
        public void run() {
            z7.super.W(this.f58287b);
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                z7.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class e extends org.androidannotations.api.builder.d<e, y7> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public y7 build() {
            z7 z7Var = new z7();
            z7Var.setArguments(this.args);
            return z7Var;
        }
    }

    public static e e0() {
        return new e();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.y7
    public void R() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.y7
    public void U(final boolean refreshChildFragment) {
        org.androidannotations.api.b.e("", new b(refreshChildFragment), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.y7
    public void W(final String groupId) {
        org.androidannotations.api.b.e("", new c(groupId), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.y7
    public void Z() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f58283u.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f58282t;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f58281s);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f58282t = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f58282t = inflater.inflate(R.layout.fragment_my_game_papa_fav_vp, container, false);
        }
        return this.f58282t;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f58282t = null;
        this.f58245c = null;
        this.f58246d = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f58245c = (RecyclerView) hasViews.internalFindViewById(R.id.rvTags);
        this.f58246d = (ViewPager2) hasViews.internalFindViewById(R.id.vp);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f58281s.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f58283u.put(key, value);
    }
}
