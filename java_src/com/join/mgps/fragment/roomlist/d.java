package com.join.mgps.fragment.roomlist;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import app.mgsim.arena.SimpleWrapperRoom;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa91.battle.protocol.SimpleRoom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends com.join.mgps.fragment.roomlist.c implements xc.a, zc.a, zc.b {
    private View W;
    private final zc.c V = new zc.c();
    private final Map<Class<?>, Object> X = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleRoom f70797b;

        a(final SimpleRoom val$simpleRoom) {
            this.f70797b = val$simpleRoom;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.F0(this.f70797b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f70799b;

        b(final int val$roomId) {
            this.f70799b = val$roomId;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.z0(this.f70799b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f70801b;

        c(final ArrayList val$datas) {
            this.f70801b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.S0(this.f70801b);
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.roomlist.d$d, reason: collision with other inner class name */
    class RunnableC0730d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f70803b;

        RunnableC0730d(final ArrayList val$removedList) {
            this.f70803b = val$removedList;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.m0(this.f70803b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f70805b;

        e(final ArrayList val$datas) {
            this.f70805b = val$datas;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.T0(this.f70805b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.b0();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.c0();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70809b;

        h(final String val$message) {
            this.f70809b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.super.showToast(this.f70809b);
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f70811b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final String val$printInfo) {
            super(id2, delay, serial);
            this.f70811b = val$printInfo;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d.super.w0(this.f70811b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class j extends org.androidannotations.api.builder.d<j, com.join.mgps.fragment.roomlist.c> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.join.mgps.fragment.roomlist.c build() {
            d dVar = new d();
            dVar.setArguments(this.args);
            return dVar;
        }
    }

    public static j g1() {
        return new j();
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.f70751c = AccountUtil_.getInstance_(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void F0(final SimpleRoom simpleRoom) {
        org.androidannotations.api.b.e("", new a(simpleRoom), 0L);
    }

    @Override // com.join.mgps.fragment.roomlist.c
    public void S0(final ArrayList<SimpleRoom> datas) {
        org.androidannotations.api.b.e("", new c(datas), 0L);
    }

    @Override // com.join.mgps.fragment.roomlist.c
    public void T0(final ArrayList<SimpleRoom> datas) {
        org.androidannotations.api.b.e("", new e(datas), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void b0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void c0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.X.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.W;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void m0(final ArrayList<SimpleWrapperRoom> removedList) {
        org.androidannotations.api.b.e("", new RunnableC0730d(removedList), 0L);
    }

    @Override // com.join.mgps.fragment.roomlist.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.V);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.W = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.W = inflater.inflate(R.layout.fragment_standardorelite_room, container, false);
        }
        return this.W;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.W = null;
        this.f70756h = null;
        this.f70757i = null;
        this.f70758j = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f70756h = (TextView) hasViews.internalFindViewById(R.id.noData);
        this.f70757i = (XRecyclerView) hasViews.internalFindViewById(R.id.mListView);
        this.f70758j = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.V.a(this);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.X.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.roomlist.c
    public void w0(final String printInfo) {
        org.androidannotations.api.a.l(new i("", 0L, "", printInfo));
    }

    @Override // com.join.mgps.fragment.roomlist.c
    public void z0(final int roomId) {
        org.androidannotations.api.b.e("", new b(roomId), 0L);
    }
}
