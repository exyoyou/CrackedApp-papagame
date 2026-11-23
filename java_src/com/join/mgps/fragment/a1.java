package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.EndGameDetailBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class a1 extends y0 implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f68980t = "detailBean";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f68982r;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zc.c f68981q = new zc.c();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Map<Class<?>, Object> f68983s = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68984b;

        a(final List val$data) {
            this.f68984b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            a1.super.updateUi(this.f68984b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68986b;

        b(final String val$message) {
            this.f68986b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            a1.super.showTost(this.f68986b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68988b;

        c(final String val$path) {
            this.f68988b = val$path;
        }

        @Override // java.lang.Runnable
        public void run() {
            a1.super.X(this.f68988b);
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68990b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f68990b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a1.super.S(this.f68990b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EndGameDetailBean.RankingListBean f68992b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final EndGameDetailBean.RankingListBean val$item) {
            super(id2, delay, serial);
            this.f68992b = val$item;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                a1.super.T(this.f68992b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class f extends org.androidannotations.api.builder.d<f, y0> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public y0 build() {
            a1 a1Var = new a1();
            a1Var.setArguments(this.args);
            return a1Var;
        }

        public f b(EndGameDetailBean detailBean) {
            this.args.putSerializable(a1.f68980t, detailBean);
            return this;
        }
    }

    public static f d0() {
        return new f();
    }

    private void e0() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey(f68980t)) {
            return;
        }
        this.f71482l = (EndGameDetailBean) arguments.getSerializable(f68980t);
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        e0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y0
    public void S(final int page) {
        org.androidannotations.api.a.l(new d("", 0L, "", page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y0
    public void T(final EndGameDetailBean.RankingListBean item) {
        org.androidannotations.api.a.l(new e("", 0L, "", item));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y0
    public void X(final String path) {
        org.androidannotations.api.b.e("", new c(path), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68983s.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68982r;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68981q);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68982r = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68982r = inflater.inflate(R.layout.fragment_end_game_detail_ranking, container, false);
        }
        return this.f68982r;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68982r = null;
        this.f71473c = null;
        this.f71474d = null;
        this.f71475e = null;
        this.f71476f = null;
        this.f71477g = null;
        this.f71478h = null;
        this.f71479i = null;
        this.f71480j = null;
        this.f71481k = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71473c = (TextView) hasViews.internalFindViewById(R.id.tvRank);
        this.f71474d = (SimpleDraweeView) hasViews.internalFindViewById(R.id.ivAvatar);
        this.f71475e = (TextView) hasViews.internalFindViewById(R.id.tvUsername);
        this.f71476f = (TextView) hasViews.internalFindViewById(R.id.tvScoreTime);
        this.f71477g = (TextView) hasViews.internalFindViewById(R.id.tvRankChange);
        this.f71478h = (ImageView) hasViews.internalFindViewById(R.id.ivRankChange);
        this.f71479i = (RecyclerView) hasViews.internalFindViewById(R.id.rvRank);
        this.f71480j = (RelativeLayout) hasViews.internalFindViewById(R.id.rankRoot);
        this.f71481k = (ImageView) hasViews.internalFindViewById(R.id.ivPlayVideo);
        afterviews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68981q.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68983s.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y0
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new b(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.y0
    public void updateUi(final List<EndGameDetailBean.RankingListBean> data) {
        org.androidannotations.api.b.e("", new a(data), 0L);
    }
}
