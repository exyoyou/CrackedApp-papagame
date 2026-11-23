package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EndGameNameListBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class d1 extends b1 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f69246k = "position";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f69247l = "data";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f69249i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zc.c f69248h = new zc.c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Map<Class<?>, Object> f69250j = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d1.super.autoPlay();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f69252b;

        b(final String val$message) {
            this.f69252b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            d1.super.showTost(this.f69252b);
        }
    }

    public static class c extends org.androidannotations.api.builder.d<c, b1> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b1 build() {
            d1 d1Var = new d1();
            d1Var.setArguments(this.args);
            return d1Var;
        }

        public c b(EndGameNameListBean data) {
            this.args.putSerializable("data", data);
            return this;
        }

        public c c(int position) {
            this.args.putInt("position", position);
            return this;
        }
    }

    public static c S() {
        return new c();
    }

    private void T() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (arguments.containsKey("position")) {
                this.f69066d = arguments.getInt("position");
            }
            if (arguments.containsKey("data")) {
                this.f69067e = (EndGameNameListBean) arguments.getSerializable("data");
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        T();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b1
    public void autoPlay() {
        org.androidannotations.api.b.e("", new a(), 500L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f69250j.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f69249i;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f69248h);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f69249i = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f69249i = inflater.inflate(R.layout.fragment_end_game_discovery, container, false);
        }
        return this.f69249i;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f69249i = null;
        this.f69065c = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69065c = (RecyclerView) hasViews.internalFindViewById(R.id.rvList);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f69248h.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f69250j.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b1
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new b(message), 0L);
    }
}
