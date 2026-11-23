package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class UserCenterFragment_ extends d6 implements xc.a, zc.a, zc.b {
    private View C;
    private final zc.c B = new zc.c();
    private final Map<Class<?>, Object> D = new HashMap();
    private final IntentFilter E = new IntentFilter();
    private final BroadcastReceiver F = new BroadcastReceiver() { // from class: com.join.mgps.fragment.UserCenterFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            UserCenterFragment_.this.updateInfo(context);
        }
    };

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f68917c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final String val$content, final int val$tag_id) {
            super(id2, delay, serial);
            this.f68916b = val$content;
            this.f68917c = val$tag_id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UserCenterFragment_.super.changeMgState(this.f68916b, this.f68917c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {
        b(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UserCenterFragment_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UserCenterFragment_.super.getViewConfigs();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UserCenterFragment_.super.getUserInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                UserCenterFragment_.super.pullMyProfileInfo();
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
            UserCenterFragment_.this.ll_copper();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserCenterFragment_.super.refreshViews();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserCenterFragment_.super.showNotifUi();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserCenterFragment_.super.loadViewConfigsFromLocal();
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserCenterFragment_.super.hideRedPoint();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserCenterFragment_.super.tokenFailure();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68929b;

        l(final String val$info) {
            this.f68929b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            UserCenterFragment_.super.showToast(this.f68929b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68931b;

        m(final int val$count) {
            this.f68931b = val$count;
        }

        @Override // java.lang.Runnable
        public void run() {
            UserCenterFragment_.super.updateAdapterByNewMsgCount(this.f68931b);
        }
    }

    public static class n extends org.androidannotations.api.builder.d<n, d6> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d6 build() {
            UserCenterFragment_ userCenterFragment_ = new UserCenterFragment_();
            userCenterFragment_.setArguments(this.args);
            return userCenterFragment_;
        }
    }

    public static n e0() {
        return new n();
    }

    private void init_(Bundle savedInstanceState) {
        this.f69326v = new PrefDef_(getActivity());
        zc.c.b(this);
        this.E.addAction(p5.a.B);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void changeMgState(final String content, final int tag_id) {
        org.androidannotations.api.a.l(new a("", 0L, "", content, tag_id));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void getUserInfo() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void getViewConfigs() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.C;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void loadViewConfigsFromLocal() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.B);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.F, this.E);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.C = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.C = inflater.inflate(R.layout.fragment_usercenter, container, false);
        }
        return this.C;
    }

    @Override // com.join.mgps.fragment.d6, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.F);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.C = null;
        this.f69307c = null;
        this.f69308d = null;
        this.f69309e = null;
        this.f69310f = null;
        this.f69311g = null;
        this.f69312h = null;
        this.f69313i = null;
        this.f69314j = null;
        this.f69315k = null;
        this.f69316l = null;
        this.f69317m = null;
        this.f69318n = null;
        this.f69319o = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f69307c = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_user_avatar);
        this.f69308d = (ImageView) hasViews.internalFindViewById(R.id.iv_arrow);
        this.f69309e = (TextView) hasViews.internalFindViewById(R.id.tv_user_nickname);
        this.f69310f = (ImageView) hasViews.internalFindViewById(R.id.iv_user_vip);
        this.f69311g = (TextView) hasViews.internalFindViewById(R.id.tv_user_rank);
        this.f69312h = (TextView) hasViews.internalFindViewById(R.id.tv_user_account);
        this.f69313i = (TextView) hasViews.internalFindViewById(R.id.tv_user_coppers);
        this.f69314j = (TextView) hasViews.internalFindViewById(R.id.tv_user_member);
        this.f69315k = (TextView) hasViews.internalFindViewById(R.id.tv_user_svip);
        this.f69316l = (LinearLayout) hasViews.internalFindViewById(R.id.ll_userinfo);
        this.f69317m = (LinearLayout) hasViews.internalFindViewById(R.id.ll_svip);
        this.f69318n = (LinearLayout) hasViews.internalFindViewById(R.id.ll_members);
        this.f69319o = (GridView) hasViews.internalFindViewById(R.id.mGridView);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.ll_copper);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new f());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.B.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void pullMyProfileInfo() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.D.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void refreshViews() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void showNotifUi() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new l(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void tokenFailure() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void touristLogin() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d6
    public void updateAdapterByNewMsgCount(final int count) {
        org.androidannotations.api.b.e("", new m(count), 0L);
    }
}
