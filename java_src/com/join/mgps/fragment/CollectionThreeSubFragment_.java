package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class CollectionThreeSubFragment_ extends s implements xc.a, zc.a, zc.b {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f68359s;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zc.c f68358r = new zc.c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Map<Class<?>, Object> f68360t = new HashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final IntentFilter f68361u = new IntentFilter();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final BroadcastReceiver f68362v = new BroadcastReceiver() { // from class: com.join.mgps.fragment.CollectionThreeSubFragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68363b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CollectionThreeSubFragment_.this.M((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionThreeSubFragment_.this.progress_layout();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionThreeSubFragment_.this.instalButtomButn();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionThreeSubFragment_.super.P();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionThreeSubFragment_.super.showProgress();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionThreeSubFragment_.super.showInstallButn();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionThreeSubFragment_.super.updateButn();
        }
    }

    public static class g extends org.androidannotations.api.builder.d<g, s> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public s build() {
            CollectionThreeSubFragment_ collectionThreeSubFragment_ = new CollectionThreeSubFragment_();
            collectionThreeSubFragment_.setArguments(this.args);
            return collectionThreeSubFragment_;
        }
    }

    public static g U() {
        return new g();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f68361u.addAction(p5.a.I);
        this.f68361u.addAction(p5.a.G);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void P() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f68360t.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.f68359s;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68358r);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.f68362v, this.f68361u);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.f68359s = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.f68359s = inflater.inflate(R.layout.collection_three_item, container, false);
        }
        return this.f68359s;
    }

    @Override // com.join.mgps.fragment.s, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f68362v);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f68359s = null;
        this.f70813c = null;
        this.f70814d = null;
        this.f70815e = null;
        this.f70816f = null;
        this.f70817g = null;
        this.f70818h = null;
        this.f70819i = null;
        this.f70820j = null;
        this.f70821k = null;
        this.f70822l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70813c = (SimpleDraweeView) hasViews.internalFindViewById(R.id.imgBackground);
        this.f70814d = (SimpleDraweeView) hasViews.internalFindViewById(R.id.imgIcon);
        this.f70815e = (TextView) hasViews.internalFindViewById(R.id.tvGameDes);
        this.f70816f = (TextView) hasViews.internalFindViewById(R.id.tvGameTitle);
        this.f70817g = (Button) hasViews.internalFindViewById(R.id.instalButtomButn);
        this.f70818h = (RelativeLayout) hasViews.internalFindViewById(R.id.progressbarLayout);
        this.f70819i = (LinearLayout) hasViews.internalFindViewById(R.id.instalbutnLayout);
        this.f70820j = (ImageView) hasViews.internalFindViewById(R.id.butn_showdownload);
        this.f70821k = (TextView) hasViews.internalFindViewById(R.id.percent);
        this.f70822l = (ProgressBar) hasViews.internalFindViewById(R.id.butnProgressBar);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.progress_layout);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        Button button = this.f70817g;
        if (button != null) {
            button.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68358r.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.f68360t.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void showProgress() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s
    public void updateButn() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }
}
