package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DocumentManageActivity_ extends DocumentManageActivity implements xc.a, zc.a, zc.b {
    public static final String FROM_EXTRA = "from";
    public static final String GAMEID_EXTRA = "gameid";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver recvedDownDataReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.DocumentManageActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity_.this.recvedDownData(intent);
        }
    };
    private final IntentFilter intentFilter2_ = new IntentFilter();
    private final BroadcastReceiver showDialogDowningReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.DocumentManageActivity_.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity_.this.showDialogDowning();
        }
    };
    private final IntentFilter intentFilter3_ = new IntentFilter();
    private final BroadcastReceiver recvedDownDatav2Receiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.DocumentManageActivity_.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DocumentManageActivity_.this.recvedDownDatav2(intent);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.rl_shop();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.ll_manage();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArchiveNumDataBean f51241b;

        c(final ArchiveNumDataBean val$numDataBean) {
            this.f51241b = val$numDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.showRedBroadcast(this.f51241b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.showRedPoint();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51244b;

        e(final int val$localnum) {
            this.f51244b = val$localnum;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.upNum(this.f51244b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51246b;

        f(final int val$type) {
            this.f51246b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.showPopuwindow(this.f51246b);
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.hideRedPoint();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f51249b;

        h(final CloudListDataBean val$dataBean) {
            this.f51249b = val$dataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            DocumentManageActivity_.super.updateStatu(this.f51249b);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DocumentManageActivity_.super.getNum();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f51252b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final CloudListDataBean val$dataBean) {
            super(id2, delay, serial);
            this.f51252b = val$dataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DocumentManageActivity_.super.downFinishToCopy(this.f51252b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class k extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51254b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f51255c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f51256d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(String id2, long delay, String serial, final String val$imageUrl, final String val$filePath, final String val$fileName) {
            super(id2, delay, serial);
            this.f51254b = val$imageUrl;
            this.f51255c = val$filePath;
            this.f51256d = val$fileName;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                DocumentManageActivity_.super.downLodingImage(this.f51254b, this.f51255c, this.f51256d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.rb_local();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.rb_colud();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.rb_remoned();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.rb_buy();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.rl_myarchive();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DocumentManageActivity_.this.archive_back();
        }
    }

    public static class r extends org.androidannotations.api.builder.a<r> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51264a;

        public r(Context context) {
            super(context, (Class<?>) DocumentManageActivity_.class);
        }

        public r a(int from) {
            return (r) super.extra("from", from);
        }

        public r b(String gameid) {
            return (r) super.extra("gameid", gameid);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51264a;
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

        public r(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) DocumentManageActivity_.class);
            this.f51264a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.pref = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.f96198h0);
        this.intentFilter2_.addAction("com.wufun.cloud.showDownDialog");
        this.intentFilter3_.addAction("com.cloud.downCloud.all");
        registerReceiver(this.recvedDownDataReceiver_, this.intentFilter1_);
        registerReceiver(this.showDialogDowningReceiver_, this.intentFilter2_);
        registerReceiver(this.recvedDownDatav2Receiver_, this.intentFilter3_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("from")) {
                DocumentManageActivity.from = extras.getInt("from");
            }
            if (extras.containsKey("gameid")) {
                ((DocumentManageActivity) this).gameid = extras.getString("gameid");
            }
        }
    }

    public static r intent(Context context) {
        return new r(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void downFinishToCopy(final CloudListDataBean dataBean) {
        org.androidannotations.api.a.l(new j("", 0L, "", dataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void downLodingImage(final String imageUrl, final String filePath, final String fileName) {
        org.androidannotations.api.a.l(new k("", 0L, "", imageUrl, filePath, fileName));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void getNum() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void hideRedPoint() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.activity_document_manage);
    }

    @Override // com.join.mgps.activity.DocumentManageActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.recvedDownDataReceiver_);
        unregisterReceiver(this.showDialogDowningReceiver_);
        unregisterReceiver(this.recvedDownDatav2Receiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.archive_back = (LinearLayout) hasViews.internalFindViewById(R.id.archive_back);
        this.rl_myarchive = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_myarchive);
        this.tv_myarchive_size = (TextView) hasViews.internalFindViewById(R.id.tv_myarchive_size);
        this.iv_myarchive_open = (ImageView) hasViews.internalFindViewById(R.id.iv_myarchive_open);
        this.rg_myarchive = (RadioGroup) hasViews.internalFindViewById(R.id.rg_myarchive);
        this.rb_local = (RadioButton) hasViews.internalFindViewById(R.id.rb_local);
        this.rb_colud = (RadioButton) hasViews.internalFindViewById(R.id.rb_colud);
        this.rl_shop = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_shop);
        this.tv_shop_size = (TextView) hasViews.internalFindViewById(R.id.tv_shop_size);
        this.iv_shop_open = (ImageView) hasViews.internalFindViewById(R.id.iv_shop_open);
        this.rg_myshop = (RadioGroup) hasViews.internalFindViewById(R.id.rg_myshop);
        this.rb_remoned = (RadioButton) hasViews.internalFindViewById(R.id.rb_remoned);
        this.rb_buy = (RadioButton) hasViews.internalFindViewById(R.id.rb_buy);
        this.ll_manage = (LinearLayout) hasViews.internalFindViewById(R.id.ll_manage);
        this.tv_manage = (TextView) hasViews.internalFindViewById(R.id.tv_manage);
        this.frag = (FrameLayout) hasViews.internalFindViewById(R.id.frag);
        this.rl_bg = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_bg);
        this.simdw = (SimpleDraweeView) hasViews.internalFindViewById(R.id.simdw);
        this.tv_red = (TextView) hasViews.internalFindViewById(R.id.tv_red);
        RadioButton radioButton = this.rb_local;
        if (radioButton != null) {
            radioButton.setOnClickListener(new l());
        }
        RadioButton radioButton2 = this.rb_colud;
        if (radioButton2 != null) {
            radioButton2.setOnClickListener(new m());
        }
        RadioButton radioButton3 = this.rb_remoned;
        if (radioButton3 != null) {
            radioButton3.setOnClickListener(new n());
        }
        RadioButton radioButton4 = this.rb_buy;
        if (radioButton4 != null) {
            radioButton4.setOnClickListener(new o());
        }
        RelativeLayout relativeLayout = this.rl_myarchive;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new p());
        }
        LinearLayout linearLayout = this.archive_back;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new q());
        }
        RelativeLayout relativeLayout2 = this.rl_shop;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new a());
        }
        LinearLayout linearLayout2 = this.ll_manage;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
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
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void showPopuwindow(final int type) {
        org.androidannotations.api.b.e("", new f(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void showRedBroadcast(final ArchiveNumDataBean numDataBean) {
        org.androidannotations.api.b.e("", new c(numDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void showRedPoint() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void upNum(final int localnum) {
        org.androidannotations.api.b.e("", new e(localnum), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.DocumentManageActivity
    public void updateStatu(final CloudListDataBean dataBean) {
        org.androidannotations.api.b.e("", new h(dataBean), 0L);
    }

    public static r intent(Fragment supportFragment) {
        return new r(supportFragment);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        super.setContentView(view, params);
        this.onViewChangedNotifier_.a(this);
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        this.onViewChangedNotifier_.a(this);
    }
}
