package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionModuleSevenBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.H5GameDataBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CloudGameZoneActivity_ extends CloudGameZoneActivity implements xc.a, zc.a, zc.b {
    public static final String PARENT_EXT_BEAN_EXTRA = "parentExtBean";
    public static final String TEMPLATE_ID_EXTRA = "templateId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ResponseModel f50695b;

        a(final ResponseModel val$data) {
            this.f50695b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.setTopGameValue(this.f50695b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50697b;

        b(final String val$message) {
            this.f50697b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showMessage(this.f50697b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CollectionModuleSevenBean f50699b;

        c(final CollectionModuleSevenBean val$data) {
            this.f50699b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.updateData(this.f50699b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.autoPlay();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showLoding();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showLodingFailed();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showMain();
        }
    }

    class h extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f50705b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(String id2, long delay, String serial, final boolean val$proactive) {
            super(id2, delay, serial);
            this.f50705b = val$proactive;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudGameZoneActivity_.super.checkSign(this.f50705b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudGameZoneActivity_.super.sign();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudGameZoneActivity_.super.getData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudGameZoneActivity_.this.back_image();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CloudGameZoneActivity_.super.getTopGameData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudGameZoneActivity_.this.relodingimag();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CloudGameZoneActivity_.this.setNetwork();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f50713b;

        o(final UserInfo val$userInfo) {
            this.f50713b = val$userInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.updateUserInfo(this.f50713b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo f50715b;

        p(final MessageCloudGamingAdCfgResponse.AdCfgInfo val$adCfgInfo) {
            this.f50715b = val$adCfgInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showCloudSign(this.f50715b);
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingAdCfgResponse.AdCfgInfo f50717b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f50718c;

        q(final MessageCloudGamingAdCfgResponse.AdCfgInfo val$adCfgInfo, final boolean val$proactive) {
            this.f50717b = val$adCfgInfo;
            this.f50718c = val$proactive;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showCloudSign(this.f50717b, this.f50718c);
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult f50720b;

        r(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult val$result) {
            this.f50720b = val$result;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.updateSignUI(this.f50720b);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50722b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50723c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50724d;

        s(final String val$totalTime, final String val$freeTime, final String val$vipTime) {
            this.f50722b = val$totalTime;
            this.f50723c = val$freeTime;
            this.f50724d = val$vipTime;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showSignDialog(this.f50722b, this.f50723c, this.f50724d);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f50726b;

        t(final DownloadTask val$task) {
            this.f50726b = val$task;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloudGameZoneActivity_.super.showLastLaunchCloudGame(this.f50726b);
        }
    }

    public static class u extends org.androidannotations.api.builder.a<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50728a;

        public u(Context context) {
            super(context, (Class<?>) CloudGameZoneActivity_.class);
        }

        public u a(ExtBean parentExtBean) {
            return (u) super.extra("parentExtBean", parentExtBean);
        }

        public u b(String templateId) {
            return (u) super.extra("templateId", templateId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50728a;
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

        public u(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CloudGameZoneActivity_.class);
            this.f50728a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        ((CloudGameZoneActivity) this).prefDef_ = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("templateId")) {
                this.templateId = extras.getString("templateId");
            }
            if (extras.containsKey("parentExtBean")) {
                this.parentExtBean = (ExtBean) extras.getSerializable("parentExtBean");
            }
        }
    }

    public static u intent(Context context) {
        return new u(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void autoPlay() {
        org.androidannotations.api.b.e("", new d(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void checkSign(final boolean proactive) {
        org.androidannotations.api.a.l(new h("", 0L, "", proactive));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void getData() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void getTopGameData() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
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
        setContentView(R.layout.activity_cloud_game_zone);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.breakListView = (RecyclerView) hasViews.internalFindViewById(R.id.breakListView);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.relodingimag = (ImageView) hasViews.internalFindViewById(R.id.relodingimag);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.rv_list = (RecyclerView) hasViews.internalFindViewById(R.id.rv_list);
        this.cl_recent_games = (ConstraintLayout) hasViews.internalFindViewById(R.id.cl_recent_games);
        this.iv_btn_1 = (ImageView) hasViews.internalFindViewById(R.id.iv_btn_1);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        ImageView imageView2 = this.relodingimag;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new m());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new n());
        }
        afterviews();
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
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void setTopGameValue(final ResponseModel<H5GameDataBean> data) {
        org.androidannotations.api.b.e("", new a(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showCloudSign(final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        org.androidannotations.api.b.e("", new p(adCfgInfo), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showLastLaunchCloudGame(final DownloadTask task) {
        org.androidannotations.api.b.e("", new t(task), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new b(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showSignDialog(final String totalTime, final String freeTime, final String vipTime) {
        org.androidannotations.api.b.e("", new s(totalTime, freeTime, vipTime), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void sign() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void updateData(final CollectionModuleSevenBean data) {
        org.androidannotations.api.b.e("", new c(data), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void updateSignUI(final MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        org.androidannotations.api.b.e("", new r(result), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void updateUserInfo(final UserInfo userInfo) {
        org.androidannotations.api.b.e("", new o(userInfo), 0L);
    }

    public static u intent(Fragment supportFragment) {
        return new u(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CloudGameZoneActivity
    public void showCloudSign(final MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, final boolean proactive) {
        org.androidannotations.api.b.e("", new q(adCfgInfo, proactive), 0L);
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
