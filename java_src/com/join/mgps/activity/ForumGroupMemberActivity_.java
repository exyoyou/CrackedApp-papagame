package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ForumData;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumGroupMemberActivity_ extends ForumGroupMemberActivity implements xc.a, zc.a, zc.b {
    public static final String GID_EXTRA = "gid";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ForumGroupMemberActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f51459b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumGroupMemberActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumGroupMemberActivity_.this.back_image();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51462b;

        b(final boolean val$isJoined) {
            this.f51462b = val$isJoined;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.changeJoinState(this.f51462b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51465b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ForumData.GroupFans f51466c;

        d(final int val$page, final ForumData.GroupFans val$data) {
            this.f51465b = val$page;
            this.f51466c = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.showGroupFans(this.f51465b, this.f51466c);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51468b;

        e(final String val$msg) {
            this.f51468b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.T(this.f51468b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51470b;

        f(final int val$state) {
            this.f51470b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumGroupMemberActivity_.super.changeLoadingState(this.f51470b);
        }
    }

    class g extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51472b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String id2, long delay, String serial, final int val$fid) {
            super(id2, delay, serial);
            this.f51472b = val$fid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumGroupMemberActivity_.super.exitGroup(this.f51472b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51474b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final int val$page) {
            super(id2, delay, serial);
            this.f51474b = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumGroupMemberActivity_.super.getGroupFans(this.f51474b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static class i extends org.androidannotations.api.builder.a<i> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51476a;

        public i(Context context) {
            super(context, (Class<?>) ForumGroupMemberActivity_.class);
        }

        public i a(int gid) {
            return (i) super.extra("gid", gid);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51476a;
            if (fragment != null) {
                fragment.startActivityForResult(this.intent, requestCode);
            } else {
                Context context = this.context;
                if (context instanceof Activity) {
                    ActivityCompat.startActivityForResult((Activity) context, this.intent, requestCode, this.lastOptions);
                } else {
                    context.startActivity(this.intent);
                }
            }
            return new org.androidannotations.api.builder.f(this.context);
        }

        public i(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ForumGroupMemberActivity_.class);
            this.f51476a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("gid")) {
            return;
        }
        this.gid = extras.getInt("gid");
    }

    public static i intent(Context context) {
        return new i(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void T(final String msg) {
        org.androidannotations.api.b.e("", new e(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void changeJoinState(final boolean isJoined) {
        org.androidannotations.api.b.e("", new b(isJoined), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new f(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void exitGroup(final int fid) {
        org.androidannotations.api.a.l(new g("", 0L, "", fid));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void getGroupFans(final int page) {
        org.androidannotations.api.a.l(new h("", 0L, "", page));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_forum_group_member_activity);
    }

    @Override // com.join.mgps.activity.ForumGroupMemberActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.listView = (XListView2) hasViews.internalFindViewById(R.id.listView);
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new a());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void showGroupFans(final int page, final ForumData.GroupFans data) {
        org.androidannotations.api.b.e("", new d(page, data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumGroupMemberActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    public static i intent(Fragment supportFragment) {
        return new i(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
