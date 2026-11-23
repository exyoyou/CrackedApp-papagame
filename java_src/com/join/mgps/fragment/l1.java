package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameMainV4DataBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class l1 extends k1 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f70063l = "gameId";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f70064m = "configBean";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f70066j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zc.c f70065i = new zc.c();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<Class<?>, Object> f70067k = new HashMap();

    public static class a extends org.androidannotations.api.builder.d<a, k1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public k1 build() {
            l1 l1Var = new l1();
            l1Var.setArguments(this.args);
            return l1Var;
        }

        public a b(GameMainV4DataBean.EndGameConfigBean configBean) {
            this.args.putSerializable("configBean", configBean);
            return this;
        }

        public a c(String gameId) {
            this.args.putString("gameId", gameId);
            return this;
        }
    }

    public static a O() {
        return new a();
    }

    private void P() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("gameId")) {
                this.f69978e = arguments.getString("gameId");
            }
            if (arguments.containsKey("configBean")) {
                this.f69979f = (GameMainV4DataBean.EndGameConfigBean) arguments.getSerializable("configBean");
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        P();
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f70067k.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f70066j;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f70065i);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f70066j = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f70066j = inflater.inflate(R.layout.fragment_end_game_viewpager, container, false);
        }
        return this.f70066j;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f70066j = null;
        this.f69976c = null;
        this.f69977d = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69976c = (SlidingTabLayout) hasViews.internalFindViewById(R.id.tablayout);
        this.f69977d = (ViewPager) hasViews.internalFindViewById(R.id.viewpager);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f70065i.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f70067k.put(key, value);
    }
}
