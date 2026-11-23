package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.GameShareData;
import com.zhy.view.flowlayout.TagFlowLayout;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ShareGameActivity_ extends ShareGameActivity implements xc.a, zc.a, zc.b {
    public static final String DOWNLOAD_TASK_EXTRA = "downloadTask";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver AccountChangeReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ShareGameActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ShareGameActivity_.this.AccountChange();
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareGameActivity_.super.reloadData();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameShareData f55753b;

        b(final GameShareData val$shareData) {
            this.f55753b = val$shareData;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShareGameActivity_.super.updateUi(this.f55753b);
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareGameActivity_.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55756b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final String val$message) {
            super(id2, delay, serial);
            this.f55756b = val$message;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareGameActivity_.super.sendComment(this.f55756b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55758b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final String val$id) {
            super(id2, delay, serial);
            this.f55758b = val$id;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ShareGameActivity_.super.sendClickTag(this.f55758b);
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
            ShareGameActivity_.this.closeImg();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.notShow();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.back();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            ShareGameActivity_.this.qqLayout();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.weichartLayout();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.friendLayout();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            ShareGameActivity_.this.qZoneLayout();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShareGameActivity_.this.startGame();
        }
    }

    public static class n extends org.androidannotations.api.builder.a<n> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f55768a;

        public n(Context context) {
            super(context, (Class<?>) ShareGameActivity_.class);
        }

        public n a(DownloadTask downloadTask) {
            return (n) super.extra("downloadTask", downloadTask);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f55768a;
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

        public n(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ShareGameActivity_.class);
            this.f55768a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.B);
        registerReceiver(this.AccountChangeReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("downloadTask")) {
            return;
        }
        this.downloadTask = (DownloadTask) extras.getSerializable("downloadTask");
    }

    public static n intent(Context context) {
        return new n(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void loadData() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_share_game);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.AccountChangeReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleImg = (SimpleDraweeView) hasViews.internalFindViewById(R.id.titleImg);
        this.backImg = (SimpleDraweeView) hasViews.internalFindViewById(R.id.backImg);
        this.msg = (TextView) hasViews.internalFindViewById(R.id.msg);
        this.msgEnd = (TextView) hasViews.internalFindViewById(R.id.msgEnd);
        this.appName = (TextView) hasViews.internalFindViewById(R.id.appName);
        this.startGame = (TextView) hasViews.internalFindViewById(R.id.startGame);
        this.icon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.icon);
        this.userIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.userIcon);
        this.sharMainlayout = (LinearLayout) hasViews.internalFindViewById(R.id.sharMainlayout);
        this.starLayout = (LinearLayout) hasViews.internalFindViewById(R.id.starLayout);
        this.tipsLayout = (LinearLayout) hasViews.internalFindViewById(R.id.tipsLayout);
        this.commitLayout = (LinearLayout) hasViews.internalFindViewById(R.id.commitLayout);
        this.startGameLayout = (LinearLayout) hasViews.internalFindViewById(R.id.startGameLayout);
        this.sharEndlayout = (LinearLayout) hasViews.internalFindViewById(R.id.sharEndlayout);
        this.shareLayout = (LinearLayout) hasViews.internalFindViewById(R.id.shareLayout);
        this.selecteStar = (MStarBar) hasViews.internalFindViewById(R.id.selecteStar);
        this.selecteStar2 = (MStarBar) hasViews.internalFindViewById(R.id.selecteStar2);
        this.selecteStar3 = (MStarBar) hasViews.internalFindViewById(R.id.selecteStar3);
        this.selecteStarEnd = (MStarBar) hasViews.internalFindViewById(R.id.selecteStarEnd);
        this.userIcon2 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.userIcon2);
        this.userIcon3 = (SimpleDraweeView) hasViews.internalFindViewById(R.id.userIcon3);
        this.titleImgEnd = (SimpleDraweeView) hasViews.internalFindViewById(R.id.titleImgEnd);
        this.iconEnd = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iconEnd);
        this.userIconEnd = (SimpleDraweeView) hasViews.internalFindViewById(R.id.userIconEnd);
        this.userName = (TextView) hasViews.internalFindViewById(R.id.userName);
        this.userName3 = (TextView) hasViews.internalFindViewById(R.id.userName3);
        this.commit = (TextView) hasViews.internalFindViewById(R.id.commit);
        this.appNameEnd = (TextView) hasViews.internalFindViewById(R.id.appNameEnd);
        this.userNameEnd = (TextView) hasViews.internalFindViewById(R.id.userNameEnd);
        this.selectedMessage = (TextView) hasViews.internalFindViewById(R.id.selectedMessage);
        this.tips = (TagFlowLayout) hasViews.internalFindViewById(R.id.tips);
        this.zxing = (ImageView) hasViews.internalFindViewById(R.id.zxing);
        this.back = (ImageView) hasViews.internalFindViewById(R.id.back);
        this.notShow = (ImageView) hasViews.internalFindViewById(R.id.notShow);
        this.editText = (EditText) hasViews.internalFindViewById(R.id.editText);
        this.closeImg = (ImageView) hasViews.internalFindViewById(R.id.closeImg);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.qqLayout);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.weichartLayout);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.friendLayout);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.qZoneLayout);
        ImageView imageView = this.closeImg;
        if (imageView != null) {
            imageView.setOnClickListener(new f());
        }
        ImageView imageView2 = this.notShow;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new g());
        }
        ImageView imageView3 = this.back;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new h());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new j());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new k());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new l());
        }
        TextView textView = this.startGame;
        if (textView != null) {
            textView.setOnClickListener(new m());
        }
        afterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void reloadData() {
        org.androidannotations.api.b.e("", new a(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void sendClickTag(final String id2) {
        org.androidannotations.api.a.l(new e("", 0L, "", id2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ShareGameActivity
    public void sendComment(final String message) {
        org.androidannotations.api.a.l(new d("", 0L, "", message));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.ShareGameActivity
    public void updateUi(final GameShareData shareData) {
        org.androidannotations.api.b.e("", new b(shareData), 0L);
    }

    public static n intent(Fragment supportFragment) {
        return new n(supportFragment);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
