package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class RankingItemV2Fragment_ extends b5 implements xc.a, zc.a, zc.b {
    private View J;
    private final zc.c I = new zc.c();
    private final Map<Class<?>, Object> K = new HashMap();
    private final IntentFilter L = new IntentFilter();
    private final BroadcastReceiver M = new BroadcastReceiver() { // from class: com.join.mgps.fragment.RankingItemV2Fragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68865b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RankingItemV2Fragment_.this.d0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemV2Fragment_.super.P();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68868b;

        b(final String val$msg) {
            this.f68868b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemV2Fragment_.super.showToast(this.f68868b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f68870b;

        c(final PAPAHomeBeanV7.HomeBeanDTO val$item) {
            this.f68870b = val$item;
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemV2Fragment_.super.e0(this.f68870b);
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68872b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f68873c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final String val$gameType, final String val$romType) {
            super(id2, delay, serial);
            this.f68872b = val$gameType;
            this.f68873c = val$romType;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                RankingItemV2Fragment_.super.U(this.f68872b, this.f68873c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f68876c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final String val$gameId, final PAPAHomeBeanV7.HomeBeanDTO val$item) {
            super(id2, delay, serial);
            this.f68875b = val$gameId;
            this.f68876c = val$item;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                RankingItemV2Fragment_.super.S(this.f68875b, this.f68876c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemV2Fragment_.this.relodingimag();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemV2Fragment_.this.c0();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemV2Fragment_.this.Y();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemV2Fragment_.this.g0();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankingItemV2Fragment_.this.setNetwork();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemV2Fragment_.super.showLoding();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f68884b;

        l(final boolean val$isNormal) {
            this.f68884b = val$isNormal;
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemV2Fragment_.super.h0(this.f68884b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68886b;

        m(final List val$subList) {
            this.f68886b = val$subList;
        }

        @Override // java.lang.Runnable
        public void run() {
            RankingItemV2Fragment_.super.showMain(this.f68886b);
        }
    }

    public static class n extends org.androidannotations.api.builder.d<n, b5> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b5 build() {
            RankingItemV2Fragment_ rankingItemV2Fragment_ = new RankingItemV2Fragment_();
            rankingItemV2Fragment_.setArguments(this.args);
            return rankingItemV2Fragment_;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.L.addAction(p5.a.I);
        this.L.addAction(p5.a.G);
    }

    public static n s0() {
        return new n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void P() {
        org.androidannotations.api.b.e("", new a(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void S(final String gameId, final PAPAHomeBeanV7.HomeBeanDTO item) {
        org.androidannotations.api.a.l(new e("", 0L, "", gameId, item));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void U(final String gameType, final String romType) {
        org.androidannotations.api.a.l(new d("", 0L, "", gameType, romType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void e0(final PAPAHomeBeanV7.HomeBeanDTO item) {
        org.androidannotations.api.b.e("", new c(item), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void h0(final boolean isNormal) {
        org.androidannotations.api.b.e("", new l(isNormal), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.J;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.I);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.M, this.L);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.J = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.J = inflater.inflate(R.layout.fragment_rank_item, container, false);
        }
        return this.J;
    }

    @Override // com.join.mgps.fragment.b5, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.M);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = null;
        this.f69098f = null;
        this.f69099g = null;
        this.f69100h = null;
        this.f69101i = null;
        this.f69102j = null;
        this.f69103k = null;
        this.f69104l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69098f = (RelativeLayout) hasViews.internalFindViewById(R.id.rootRl);
        this.f69099g = (XListView2) hasViews.internalFindViewById(R.id.classifyListView);
        this.f69100h = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.f69101i = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f69102j = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f69103k = (LinearLayout) hasViews.internalFindViewById(R.id.loading_none);
        this.f69104l = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.noneReloadImage);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setAll);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f69104l;
        if (imageView != null) {
            imageView.setOnClickListener(new f());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new g());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new h());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new i());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new j());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.I.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.K.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void showLoding() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void showMain(final List<PAPAHomeBeanV7.HomeBeanDTO> subList) {
        org.androidannotations.api.b.e("", new m(subList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.b5
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new b(msg), 0L);
    }
}
