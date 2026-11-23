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
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.wufan.friend.chat.protocol.AllFriendNotification;
import com.wufan.friend.chat.protocol.AllOnlineFriendNotification;
import com.wufan.friend.chat.protocol.FriendChangePlayStateNotification;
import com.wufan.friend.chat.protocol.FriendChangeStateNotification;
import com.wufan.friend.chat.protocol.RecommendPlayerData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class FriendFragment_ extends v2 implements xc.a, zc.a, zc.b {
    private View H;
    private final zc.c G = new zc.c();
    private final Map<Class<?>, Object> I = new HashMap();
    private final IntentFilter J = new IntentFilter();
    private final BroadcastReceiver K = new BroadcastReceiver() { // from class: com.join.mgps.fragment.FriendFragment_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            FriendFragment_.this.c0();
        }
    };

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FriendAccountInfo f68485b;

        a(final FriendAccountInfo val$data) {
            this.f68485b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.Z0(this.f68485b);
        }
    }

    class a0 implements View.OnClickListener {
        a0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.e0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.X0();
        }
    }

    class b0 implements View.OnClickListener {
        b0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.O0();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.a1();
        }
    }

    class c0 implements View.OnClickListener {
        c0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.b1();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68492b;

        d(final int val$number) {
            this.f68492b = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.R0(this.f68492b);
        }
    }

    class d0 implements View.OnClickListener {
        d0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.t0();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f68495b;

        e(final List val$data) {
            this.f68495b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.updateUi(this.f68495b);
        }
    }

    public static class e0 extends org.androidannotations.api.builder.d<e0, v2> {
        @Override // org.androidannotations.api.builder.d
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public v2 build() {
            FriendFragment_ friendFragment_ = new FriendFragment_();
            friendFragment_.setArguments(this.args);
            return friendFragment_;
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.F0();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68498b;

        g(final String val$msg) {
            this.f68498b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.toast(this.f68498b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FriendChangePlayStateNotification f68500b;

        h(final FriendChangePlayStateNotification val$data) {
            this.f68500b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.J0(this.f68500b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AllFriendNotification f68502b;

        i(final AllFriendNotification val$allFrdNotification) {
            this.f68502b = val$allFrdNotification;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.H0(this.f68502b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecommendPlayerData f68504b;

        j(final RecommendPlayerData val$notification) {
            this.f68504b = val$notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.L0(this.f68504b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AllOnlineFriendNotification f68506b;

        k(final AllOnlineFriendNotification val$allFriendNotification) {
            this.f68506b = val$allFriendNotification;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.I0(this.f68506b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FriendChangeStateNotification f68508b;

        l(final FriendChangeStateNotification val$data) {
            this.f68508b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.K0(this.f68508b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FriendChangeStateNotification f68510b;

        m(final FriendChangeStateNotification val$friendChangeState) {
            this.f68510b = val$friendChangeState;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.Y0(this.f68510b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68512b;

        n(final int val$state) {
            this.f68512b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.S0(this.f68512b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f68514b;

        o(final String val$info) {
            this.f68514b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.showToast(this.f68514b);
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.V0();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Boolean f68517b;

        q(final Boolean val$f) {
            this.f68517b = val$f;
        }

        @Override // java.lang.Runnable
        public void run() {
            FriendFragment_.super.b0(this.f68517b);
        }
    }

    class r extends org.androidannotations.api.a.c {
        r(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FriendFragment_.super.p0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s extends org.androidannotations.api.a.c {
        s(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FriendFragment_.super.q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t extends org.androidannotations.api.a.c {
        t(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FriendFragment_.super.r0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.Q0();
        }
    }

    class v extends org.androidannotations.api.a.c {
        v(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FriendFragment_.super.o0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class w extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f68524b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w(String id2, long delay, String serial, final int val$ruid) {
            super(id2, delay, serial);
            this.f68524b = val$ruid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                FriendFragment_.super.a0(this.f68524b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.N0();
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.M0();
        }
    }

    class z implements View.OnClickListener {
        z() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FriendFragment_.this.E0();
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.J.addAction("com.join.android.app.mgsim.wufun.broadcast.action_login_success");
    }

    public static e0 y1() {
        return new e0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void F0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void H0(final AllFriendNotification allFrdNotification) {
        org.androidannotations.api.b.e("", new i(allFrdNotification), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void I0(final AllOnlineFriendNotification allFriendNotification) {
        org.androidannotations.api.b.e("", new k(allFriendNotification), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void J0(final FriendChangePlayStateNotification data) {
        org.androidannotations.api.b.e("", new h(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void K0(final FriendChangeStateNotification data) {
        org.androidannotations.api.b.e("", new l(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void L0(final RecommendPlayerData notification) {
        org.androidannotations.api.b.e("", new j(notification), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void R0(final int number) {
        org.androidannotations.api.b.e("", new d(number), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void S0(final int state) {
        org.androidannotations.api.b.e("", new n(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void V0() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void X0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void Y0(final FriendChangeStateNotification friendChangeState) {
        org.androidannotations.api.b.e("", new m(friendChangeState), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void Z0(final FriendAccountInfo data) {
        org.androidannotations.api.b.e("", new a(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void a0(final int ruid) {
        org.androidannotations.api.a.l(new w("", 0L, "", ruid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void a1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void b0(final Boolean f10) {
        org.androidannotations.api.b.e("", new q(f10), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        View view = this.H;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void o0() {
        org.androidannotations.api.a.l(new v("", 200L, ""));
    }

    @Override // com.join.mgps.fragment.v2, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.G);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        getActivity().registerReceiver(this.K, this.J);
        zc.c.c(cVarC);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View viewOnCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.H = viewOnCreateView;
        if (viewOnCreateView == null) {
            this.H = inflater.inflate(R.layout.fragment_friend_my, container, false);
        }
        return this.H;
    }

    @Override // com.join.mgps.fragment.v2, com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.K);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.H = null;
        this.f71306c = null;
        this.f71307d = null;
        this.f71308e = null;
        this.f71309f = null;
        this.f71310g = null;
        this.f71311h = null;
        this.f71312i = null;
        this.f71313j = null;
        this.f71314k = null;
        this.f71315l = null;
        this.f71316m = null;
        this.f71317n = null;
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f71306c = (SimpleDraweeView) hasViews.internalFindViewById(R.id.avatar);
        this.f71307d = (TextView) hasViews.internalFindViewById(R.id.nickname);
        this.f71308e = (TextView) hasViews.internalFindViewById(R.id.unlogin);
        this.f71309f = (TextView) hasViews.internalFindViewById(R.id.onlineState);
        this.f71310g = (TextView) hasViews.internalFindViewById(R.id.msgCount);
        this.f71311h = hasViews.internalFindViewById(R.id.icVip);
        this.f71312i = hasViews.internalFindViewById(R.id.msg);
        this.f71313j = hasViews.internalFindViewById(R.id.noRecord);
        this.f71314k = hasViews.internalFindViewById(R.id.searchFriend);
        this.f71315l = hasViews.internalFindViewById(R.id.onlineStateArr);
        this.f71316m = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        this.f71317n = (ImageView) hasViews.internalFindViewById(R.id.inviteFriend);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.qq);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.wechat);
        View view = this.f71314k;
        if (view != null) {
            view.setOnClickListener(new u());
        }
        View view2 = this.f71315l;
        if (view2 != null) {
            view2.setOnClickListener(new x());
        }
        TextView textView = this.f71309f;
        if (textView != null) {
            textView.setOnClickListener(new y());
        }
        View view3 = this.f71312i;
        if (view3 != null) {
            view3.setOnClickListener(new z());
        }
        SimpleDraweeView simpleDraweeView = this.f71306c;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new a0());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new b0());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new c0());
        }
        ImageView imageView = this.f71317n;
        if (imageView != null) {
            imageView.setOnClickListener(new d0());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.G.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void p0() {
        org.androidannotations.api.a.l(new r("", 100L, ""));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.I.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void q0() {
        org.androidannotations.api.a.l(new s("", 200L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void r0() {
        org.androidannotations.api.a.l(new t("", 200L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new o(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void toast(final String msg) {
        org.androidannotations.api.b.e("", new g(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.v2
    public void updateUi(final List<FriendBean> data) {
        org.androidannotations.api.b.e("", new e(data), 0L);
    }
}
