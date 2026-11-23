package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class o1 extends n1 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f70386l = "gameId";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f70387m = "ext";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f70389j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zc.c f70388i = new zc.c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<Class<?>, Object> f70390k = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, n1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public n1 build() {
            o1 o1Var = new o1();
            o1Var.setArguments(this.args);
            return o1Var;
        }

        public a b(String ext) {
            this.args.putString("ext", ext);
            return this;
        }

        public a c(String gameId) {
            this.args.putString("gameId", gameId);
            return this;
        }
    }

    public static a R() {
        return new a();
    }

    private void S() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("gameId")) {
                this.f70286f = arguments.getString("gameId");
            }
            if (arguments.containsKey("ext")) {
                this.f70287g = arguments.getString("ext");
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        S();
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70390k.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70389j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70388i);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70389j = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70389j = inflater.inflate(R.layout.fragment_end_game_viewpager_list, container, false);
        }
        return this.f70389j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70389j = null;
        this.f70283c = null;
        this.f70284d = null;
        this.f70285e = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70283c = (ViewPager) hasViews.internalFindViewById(R.id.viewpager);
        this.f70284d = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tablayout);
        this.f70285e = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iconAd);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70388i.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70390k.put(key, value);
    }
}
