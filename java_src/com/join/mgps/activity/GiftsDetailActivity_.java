package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GiftPackageDataInfoBean;
import com.join.mgps.dto.GiftPackageDataOperationBean;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GiftsDetailActivity_ extends GiftsDetailActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String GIFT_PACKAGE_DATA_INFO_BEAN_EXTRA = "giftPackageDataInfoBean";
    public static final String UID_EXTRA = "Uid";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showMain();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.loadFailed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showSvipGiftDialog();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showVipDialog();
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GiftsDetailActivity_.super.getDownloadStatus();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f extends org.androidannotations.api.a.c {
        f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GiftsDetailActivity_.super.getGameGiftPackageInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GiftsDetailActivity_.super.getGiftPackageOperation();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GiftsDetailActivity_.this.relodingimag();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GiftsDetailActivity_.this.back_image();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GiftsDetailActivity_.this.saveCodeTv();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53549b;

        k(final String val$message) {
            this.f53549b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showToast(this.f53549b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GiftPackageDataOperationBean f53551b;

        l(final GiftPackageDataOperationBean val$bean) {
            this.f53551b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showDialog(this.f53551b);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showDownloadUi();
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.goneLoding();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f53555b;

        o(final String val$code) {
            this.f53555b = val$code;
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.setEdtitextCode(this.f53555b);
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftsDetailActivity_.super.showLoading2();
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f53558a;

        public q(Context context) {
            super(context, (Class<?>) GiftsDetailActivity_.class);
        }

        public q a(int Uid) {
            return (q) super.extra("Uid", Uid);
        }

        public q b(String gameId) {
            return (q) super.extra("gameId", gameId);
        }

        public q c(GiftPackageDataInfoBean giftPackageDataInfoBean) {
            return (q) super.extra(GiftsDetailActivity_.GIFT_PACKAGE_DATA_INFO_BEAN_EXTRA, giftPackageDataInfoBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f53558a;
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

        public q(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GiftsDetailActivity_.class);
            this.f53558a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("Uid")) {
                this.Uid = extras.getInt("Uid");
            }
            if (extras.containsKey(GIFT_PACKAGE_DATA_INFO_BEAN_EXTRA)) {
                this.giftPackageDataInfoBean = (GiftPackageDataInfoBean) extras.getSerializable(GIFT_PACKAGE_DATA_INFO_BEAN_EXTRA);
            }
        }
    }

    public static q intent(Context context) {
        return new q(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void getDownloadStatus() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void getGameGiftPackageInfo() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void getGiftPackageOperation() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void goneLoding() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void loadFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.gift_detail_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.scrollView = (ScrollView) hasViews.internalFindViewById(R.id.scrollView);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.giftIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.giftIcon);
        this.giftNameTv = (TextView) hasViews.internalFindViewById(R.id.giftNameTv);
        this.saveCodeTv = (TextView) hasViews.internalFindViewById(R.id.saveCodeTv);
        this.saveCodeContent = (TextView) hasViews.internalFindViewById(R.id.saveCodeContent);
        this.giftContent = (TextView) hasViews.internalFindViewById(R.id.giftContent);
        this.giftTime = (TextView) hasViews.internalFindViewById(R.id.giftTime);
        this.giftMethod = (TextView) hasViews.internalFindViewById(R.id.giftMethod);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.back_image);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new h());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new i());
        }
        TextView textView = this.saveCodeTv;
        if (textView != null) {
            textView.setOnClickListener(new j());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void setEdtitextCode(final String code) {
        org.androidannotations.api.b.e("", new o(code), 0L);
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showDialog(final GiftPackageDataOperationBean bean) {
        org.androidannotations.api.b.e("", new l(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showDownloadUi() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showLoading2() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showMain() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showSvipGiftDialog() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new k(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GiftsDetailActivity
    public void showVipDialog() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    public static q intent(Fragment supportFragment) {
        return new q(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
