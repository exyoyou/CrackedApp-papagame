package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.ObservableWebView;
import com.join.mgps.customview.SmartScrollView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.InformationCommentBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameInformationActivity_ extends GameInformationActivity implements xc.a, zc.a, zc.b {
    public static final String DEFAULT_DOWN_EXTRA = "defaultDown";
    public static final String EXT_BEAN_EXTRA = "extBean";
    public static final String INFO_ID_EXTRA = "info_id";
    public static final String TITLE_EXTRA = "title";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameInformationActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f52844b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameInformationActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.title_normal_download_cdv();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.noCoumment();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52848b;

        c(final List val$gameInformationBeans) {
            this.f52848b = val$gameInformationBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showCommentList(this.f52848b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.updateHight();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showLoding();
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f52852b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TextView f52853c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f52854d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f52855e;

        f(final ImageView val$parise, final TextView val$parseNUmber, final boolean val$success, final String val$number) {
            this.f52852b = val$parise;
            this.f52853c = val$parseNUmber;
            this.f52854d = val$success;
            this.f52855e = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.updateView(this.f52852b, this.f52853c, this.f52854d, this.f52855e);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52857b;

        g(final String val$message) {
            this.f52857b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showToast(this.f52857b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showLodingFailed();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameInformationBean f52860b;

        i(final GameInformationBean val$gameInformation) {
            this.f52860b = val$gameInformation;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showMain(this.f52860b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.cxxxxx();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showComment();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52864b;

        l(final String val$message) {
            this.f52864b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.showMessage(this.f52864b);
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivity_.super.updateDownloadView();
        }
    }

    class n extends org.androidannotations.api.a.c {
        n(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.getGameInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52868b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final String val$informationId) {
            super(id2, delay, serial);
            this.f52868b = val$informationId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.getCommentInfo(this.f52868b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f52870b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f52871c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TextView f52872d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final InformationCommentBean val$bean, final ImageView val$parise, final TextView val$parseNUmber) {
            super(id2, delay, serial);
            this.f52870b = val$bean;
            this.f52871c = val$parise;
            this.f52872d = val$parseNUmber;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.sendParesed(this.f52870b, this.f52871c, this.f52872d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q extends org.androidannotations.api.a.c {
        q(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivity_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.backImage();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.applayout();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.layout_share();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.comment();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.downloadImage();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.cardDownButn();
        }
    }

    class x implements View.OnClickListener {
        x() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.relodingimag();
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivity_.this.setNetwork();
        }
    }

    public static class z extends org.androidannotations.api.builder.a<z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52883a;

        public z(Context context) {
            super(context, (Class<?>) GameInformationActivity_.class);
        }

        public z a(boolean defaultDown) {
            return (z) super.extra("defaultDown", defaultDown);
        }

        public z b(ExtBean extBean) {
            return (z) super.extra("extBean", extBean);
        }

        public z c(String info_id) {
            return (z) super.extra("info_id", info_id);
        }

        public z d(String title) {
            return (z) super.extra("title", title);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52883a;
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

        public z(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameInformationActivity_.class);
            this.f52883a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectExcption = resources.getString(R.string.connect_server_excption);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("info_id")) {
                this.info_id = extras.getString("info_id");
            }
            if (extras.containsKey("title")) {
                this.title = extras.getString("title");
            }
            if (extras.containsKey("extBean")) {
                this.extBean = (ExtBean) extras.getSerializable("extBean");
            }
            if (extras.containsKey("defaultDown")) {
                this.defaultDown = extras.getBoolean("defaultDown");
            }
        }
    }

    public static z intent(Context context) {
        return new z(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void cxxxxx() {
        org.androidannotations.api.b.e("", new j(), 2000L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void getCommentInfo(final String informationId) {
        org.androidannotations.api.a.l(new o("", 0L, "", informationId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void getGameInfo() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void noCoumment() {
        org.androidannotations.api.b.e("", new b(), 1000L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.game_information_layout);
    }

    @Override // com.join.mgps.activity.GameInformationActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.scrollView = (SmartScrollView) hasViews.internalFindViewById(R.id.scrollView);
        this.webView = (ObservableWebView) hasViews.internalFindViewById(R.id.webView);
        this.applayout = (RelativeLayout) hasViews.internalFindViewById(R.id.applayout);
        this.gameCardLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.gameCardLayout);
        this.relativeLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.relativeLayout);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.appIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.appIcon);
        this.cardIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.cardIcon);
        this.textView69 = (TextView) hasViews.internalFindViewById(R.id.textView69);
        this.appname = (TextView) hasViews.internalFindViewById(R.id.appname);
        this.cardAppname = (TextView) hasViews.internalFindViewById(R.id.cardAppname);
        this.cardDownNumberText = (TextView) hasViews.internalFindViewById(R.id.cardDownNumberText);
        this.cardAppSize = (TextView) hasViews.internalFindViewById(R.id.cardAppSize);
        this.cardInfo = (TextView) hasViews.internalFindViewById(R.id.cardInfo);
        this.cardDownButn = (Button) hasViews.internalFindViewById(R.id.cardDownButn);
        this.appsize = (TextView) hasViews.internalFindViewById(R.id.appsize);
        this.moneyText = (TextView) hasViews.internalFindViewById(R.id.moneyText);
        this.moneyText2 = (TextView) hasViews.internalFindViewById(R.id.moneyText2);
        this.downloadImage = (Button) hasViews.internalFindViewById(R.id.downloadImage);
        this.shareImg = (ImageView) hasViews.internalFindViewById(R.id.shareImg);
        this.comment = (ImageView) hasViews.internalFindViewById(R.id.comment);
        this.main = (LinearLayout) hasViews.internalFindViewById(R.id.main);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.content_title = (TextView) hasViews.internalFindViewById(R.id.content_title);
        this.contentName = (TextView) hasViews.internalFindViewById(R.id.contentName);
        this.contentTime = (TextView) hasViews.internalFindViewById(R.id.contentTime);
        this.comment_number = (TextView) hasViews.internalFindViewById(R.id.comment_number);
        this.more = (TextView) hasViews.internalFindViewById(R.id.more);
        this.game_information_comment_top = (LinearLayout) hasViews.internalFindViewById(R.id.game_information_comment_top);
        this.bottom_lay = (LinearLayout) hasViews.internalFindViewById(R.id.bottom_lay);
        this.layout_share = (LinearLayout) hasViews.internalFindViewById(R.id.layout_share);
        this.roundMessage = (TextView) hasViews.internalFindViewById(R.id.roundMessage);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new r());
        }
        RelativeLayout relativeLayout = this.applayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new s());
        }
        LinearLayout linearLayout = this.layout_share;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new t());
        }
        ImageView imageView = this.comment;
        if (imageView != null) {
            imageView.setOnClickListener(new u());
        }
        Button button = this.downloadImage;
        if (button != null) {
            button.setOnClickListener(new v());
        }
        Button button2 = this.cardDownButn;
        if (button2 != null) {
            button2.setOnClickListener(new w());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new x());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new y());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new a());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void sendParesed(final InformationCommentBean bean, final ImageView parise, final TextView parseNUmber) {
        org.androidannotations.api.a.l(new p("", 0L, "", bean, parise, parseNUmber));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showComment() {
        org.androidannotations.api.b.e("", new k(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showCommentList(final List<InformationCommentBean> gameInformationBeans) {
        org.androidannotations.api.b.e("", new c(gameInformationBeans), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showMain(final GameInformationBean gameInformation) {
        org.androidannotations.api.b.e("", new i(gameInformation), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new l(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new g(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void updateHight() {
        org.androidannotations.api.b.e("", new d(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivity
    public void updateView(final ImageView parise, final TextView parseNUmber, final boolean success, final String number) {
        org.androidannotations.api.b.e("", new f(parise, parseNUmber, success, number), 0L);
    }

    public static z intent(Fragment supportFragment) {
        return new z(supportFragment);
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
