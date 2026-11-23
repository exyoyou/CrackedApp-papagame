package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class PaPaStandAloneV2Fragment_ extends q4 implements xc.a, zc.a, zc.b {
    private View A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zc.c f68831z = new zc.c();
    private final Map<Class<?>, Object> B = new HashMap();
    private final IntentFilter C = new IntentFilter();
    private final BroadcastReceiver D = new BroadcastReceiver() { // from class: com.join.mgps.fragment.PaPaStandAloneV2Fragment_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f68832b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PaPaStandAloneV2Fragment_.this.Y((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68834b;

        a(final String val$info) {
            this.f68834b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Fragment_.super.showToast(this.f68834b);
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PaPaStandAloneV2Fragment_.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Fragment_.this.relodingimag();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PaPaStandAloneV2Fragment_.this.setNetwork();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Fragment_.super.c0();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68840b;

        f(final List val$datas) {
            this.f68840b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Fragment_.super.d0(this.f68840b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Fragment_.super.a0();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Fragment_.super.b0();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Fragment_.super.Z();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PaPaStandAloneV2Fragment_.super.hideLoading();
        }
    }

    public static class k extends org.androidannotations.api.builder.d<k, q4> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public q4 build() {
            PaPaStandAloneV2Fragment_ paPaStandAloneV2Fragment_ = new PaPaStandAloneV2Fragment_();
            paPaStandAloneV2Fragment_.setArguments(this.args);
            return paPaStandAloneV2Fragment_;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.C.addAction(p5.a.I);
        this.C.addAction(p5.a.G);
    }

    public static k m0() {
        return new k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void R() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void Z() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void a0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void b0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void c0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void d0(final List<PaPaBean> datas) {
        org.androidannotations.api.b.e("", new f(datas), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.B.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void hideLoading() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.A;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    @Override // com.join.mgps.fragment.q4, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.f68831z);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.D, this.C);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.A = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.A = inflater.inflate(R.layout.fragment_papa_standalone_v2, container, false);
        }
        return this.A;
    }

    @Override // com.join.mgps.fragment.q4, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.D);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.A = null;
        this.f70611g = null;
        this.f70614j = null;
        this.f70615k = null;
        this.f70616l = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70611g = (XListView2) hasViews.internalFindViewById(R.id.mListView);
        this.f70614j = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.f70615k = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.f70616l = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new c());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new d());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.f68831z.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.B.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.q4
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new a(info), 0L);
    }
}
