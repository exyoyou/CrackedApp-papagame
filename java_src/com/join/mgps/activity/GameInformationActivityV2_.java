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
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.GameInformationBean;
import com.join.mgps.dto.InformationCommentBeanV2;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameInformationActivityV2_ extends GameInformationActivityV2 implements xc.a, zc.a, zc.b {
    public static final String DEFAULT_DOWN_EXTRA = "defaultDown";
    public static final String EXT_BEAN_EXTRA = "extBean";
    public static final String INFO_ID_EXTRA = "info_id";
    public static final String TITLE_EXTRA = "title";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.GameInformationActivityV2_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f52806b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            GameInformationActivityV2_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.noCoumment();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52809b;

        b(final List val$gameInformationBeans) {
            this.f52809b = val$gameInformationBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showCommentList(this.f52809b);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.updateHight();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showLoding();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f52813b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ TextView f52814c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f52815d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f52816e;

        e(final ImageView val$parise, final TextView val$parseNUmber, final boolean val$success, final String val$number) {
            this.f52813b = val$parise;
            this.f52814c = val$parseNUmber;
            this.f52815d = val$success;
            this.f52816e = val$number;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.updateView(this.f52813b, this.f52814c, this.f52815d, this.f52816e);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52818b;

        f(final String val$message) {
            this.f52818b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showToast(this.f52818b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showLodingFailed();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameInformationBean f52821b;

        h(final GameInformationBean val$gameInformation) {
            this.f52821b = val$gameInformation;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showMain(this.f52821b);
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showComment();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52824b;

        j(final String val$message) {
            this.f52824b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.showMessage(this.f52824b);
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationActivityV2_.super.updateDownloadView();
        }
    }

    class l extends org.androidannotations.api.a.c {
        l(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.getGameInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52828b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final String val$informationId) {
            super(id2, delay, serial);
            this.f52828b = val$informationId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.getCommentInfo(this.f52828b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f52831c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ TextView f52832d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final InformationCommentBeanV2 val$bean, final ImageView val$parise, final TextView val$parseNUmber) {
            super(id2, delay, serial);
            this.f52830b = val$bean;
            this.f52831c = val$parise;
            this.f52832d = val$parseNUmber;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.sendParesed(this.f52830b, this.f52831c, this.f52832d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {
        o(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationActivityV2_.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.backImage();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.applayout();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.layout_share();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.comment();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.downloadImage();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.relodingimag();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.setNetwork();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationActivityV2_.this.title_normal_download_cdv();
        }
    }

    public static class x extends org.androidannotations.api.builder.a<x> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52843a;

        public x(Context context) {
            super(context, (Class<?>) GameInformationActivityV2_.class);
        }

        public x a(boolean defaultDown) {
            return (x) super.extra("defaultDown", defaultDown);
        }

        public x b(ExtBean extBean) {
            return (x) super.extra("extBean", extBean);
        }

        public x c(String info_id) {
            return (x) super.extra("info_id", info_id);
        }

        public x d(String title) {
            return (x) super.extra("title", title);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52843a;
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

        public x(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) GameInformationActivityV2_.class);
            this.f52843a = fragment;
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

    public static x intent(Context context) {
        return new x(context);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void getCommentInfo(final String informationId) {
        org.androidannotations.api.a.l(new m("", 0L, "", informationId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new o("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void getGameInfo() {
        org.androidannotations.api.a.l(new l("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void noCoumment() {
        org.androidannotations.api.b.e("", new a(), 400L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.game_information_layoutv2);
    }

    @Override // com.join.mgps.activity.GameInformationActivityV2, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.titleText = (TextView) hasViews.internalFindViewById(R.id.titleText);
        this.applayout = (RelativeLayout) hasViews.internalFindViewById(R.id.applayout);
        this.relativeLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.relativeLayout);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.appIcon = (SimpleDraweeView) hasViews.internalFindViewById(R.id.appIcon);
        this.usericonMe = (SimpleDraweeView) hasViews.internalFindViewById(R.id.usericonMe);
        this.appname = (TextView) hasViews.internalFindViewById(R.id.appname);
        this.appsize = (TextView) hasViews.internalFindViewById(R.id.appsize);
        this.moneyText = (TextView) hasViews.internalFindViewById(R.id.moneyText);
        this.moneyText2 = (TextView) hasViews.internalFindViewById(R.id.moneyText2);
        this.downloadImage = (Button) hasViews.internalFindViewById(R.id.downloadImage);
        this.shareImg = (ImageView) hasViews.internalFindViewById(R.id.shareImg);
        this.comment = (ImageView) hasViews.internalFindViewById(R.id.comment);
        this.downloadView = (CustomerDownloadView) hasViews.internalFindViewById(R.id.title_normal_download_cdv);
        this.more = (TextView) hasViews.internalFindViewById(R.id.more);
        this.bottom_lay = (LinearLayout) hasViews.internalFindViewById(R.id.bottom_lay);
        this.layout_share = (LinearLayout) hasViews.internalFindViewById(R.id.layout_share);
        this.roundMessage = (TextView) hasViews.internalFindViewById(R.id.roundMessage);
        this.recyclerView = (RecyclerView) hasViews.internalFindViewById(R.id.recyclerView);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.backImage);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new p());
        }
        RelativeLayout relativeLayout = this.applayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new q());
        }
        LinearLayout linearLayout = this.layout_share;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new r());
        }
        ImageView imageView = this.comment;
        if (imageView != null) {
            imageView.setOnClickListener(new s());
        }
        Button button = this.downloadImage;
        if (button != null) {
            button.setOnClickListener(new t());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new u());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new v());
        }
        CustomerDownloadView customerDownloadView = this.downloadView;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new w());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void sendParesed(final InformationCommentBeanV2 bean, final ImageView parise, final TextView parseNUmber) {
        org.androidannotations.api.a.l(new n("", 0L, "", bean, parise, parseNUmber));
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
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showComment() {
        org.androidannotations.api.b.e("", new i(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showCommentList(final List<InformationCommentBeanV2> gameInformationBeans) {
        org.androidannotations.api.b.e("", new b(gameInformationBeans), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showLoding() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showMain(final GameInformationBean gameInformation) {
        org.androidannotations.api.b.e("", new h(gameInformation), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new j(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new f(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void updateHight() {
        org.androidannotations.api.b.e("", new c(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationActivityV2
    public void updateView(final ImageView parise, final TextView parseNUmber, final boolean success, final String number) {
        org.androidannotations.api.b.e("", new e(parise, parseNUmber, success, number), 0L);
    }

    public static x intent(Fragment supportFragment) {
        return new x(supportFragment);
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
