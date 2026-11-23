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
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.IntroductionCommentDetailParamsBean;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class IntroductionActivity_ extends IntroductionActivity implements xc.a, zc.a, zc.b {
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String INTENT_DATA_MAIN_EXTRA = "intentDataMain";
    public static final String PARAMS_EXTRA = "params";
    public static final String POST_ID_EXTRA = "postId";
    public static final String TAG_ID_EXTRA = "tagId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver finishViewReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.IntroductionActivity_.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            IntroductionActivity_.this.finishView(intent);
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.onOpenProgress();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.onPraiseClick();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.showLoding();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.showLodingFailed();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BbsDetailBean f54064b;

        e(final BbsDetailBean val$detailBean) {
            this.f54064b = val$detailBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.showMain(this.f54064b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.hideLoading();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54067b;

        g(final String val$message) {
            this.f54067b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.showTost(this.f54067b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.dismissLoadingDialog();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.dialogZ();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f54071b;

        j(final boolean val$praise) {
            this.f54071b = val$praise;
        }

        @Override // java.lang.Runnable
        public void run() {
            IntroductionActivity_.super.updatePraise(this.f54071b);
        }
    }

    class k extends org.androidannotations.api.a.c {
        k(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                IntroductionActivity_.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f54074b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Integer f54075c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final String val$ruid, final Integer val$resourceId) {
            super(id2, delay, serial);
            this.f54074b = val$ruid;
            this.f54075c = val$resourceId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                IntroductionActivity_.super.onBbsPraise(this.f54074b, this.f54075c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Integer f54077b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final Integer val$resourceId) {
            super(id2, delay, serial);
            this.f54077b = val$resourceId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                IntroductionActivity_.super.onBbsDisPraise(this.f54077b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.refresh();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.loding_faile();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.setNetwork();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.onClickMore();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.relodingimag();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.onOpenRecommend();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.onClose();
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntroductionActivity_.this.onOpenComment();
        }
    }

    public static class v extends org.androidannotations.api.builder.a<v> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f54087a;

        public v(Context context) {
            super(context, (Class<?>) IntroductionActivity_.class);
        }

        public v a(String gameId) {
            return (v) super.extra("gameId", gameId);
        }

        public v b(IntentDataMain intentDataMain) {
            return (v) super.extra("intentDataMain", intentDataMain);
        }

        public v c(IntroductionCommentDetailParamsBean params) {
            return (v) super.extra("params", params);
        }

        public v d(int postId) {
            return (v) super.extra(IntroductionActivity_.POST_ID_EXTRA, postId);
        }

        public v e(int tagId) {
            return (v) super.extra("tagId", tagId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f54087a;
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

        public v(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) IntroductionActivity_.class);
            this.f54087a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        this.intentFilter1_.addAction(p5.a.f96196g0);
        registerReceiver(this.finishViewReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("intentDataMain")) {
                this.intentDataMain = (IntentDataMain) extras.getSerializable("intentDataMain");
            }
            if (extras.containsKey(POST_ID_EXTRA)) {
                this.postId = extras.getInt(POST_ID_EXTRA);
            }
            if (extras.containsKey("tagId")) {
                this.tagId = extras.getInt("tagId");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("params")) {
                this.params = (IntroductionCommentDetailParamsBean) extras.getSerializable("params");
            }
        }
    }

    public static v intent(Context context) {
        return new v(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void dialogZ() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void dismissLoadingDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void hideLoading() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void loadData() {
        org.androidannotations.api.a.l(new k("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void onBbsDisPraise(final Integer resourceId) {
        org.androidannotations.api.a.l(new m("", 0L, "", resourceId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void onBbsPraise(final String ruid, final Integer resourceId) {
        org.androidannotations.api.a.l(new l("", 0L, "", ruid, resourceId));
    }

    @Override // com.join.mgps.activity.IntroductionActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.introduction_activity_layout);
    }

    @Override // com.join.mgps.activity.IntroductionActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.finishViewReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.failedMessage = (TextView) hasViews.internalFindViewById(R.id.failedMessage);
        this.layout_share = (LinearLayout) hasViews.internalFindViewById(R.id.layout_share);
        this.video_view = (FrameLayout) hasViews.internalFindViewById(R.id.video_view);
        this.weblayout = (RelativeLayout) hasViews.internalFindViewById(R.id.weblayout);
        this.fl_front_view = (FrameLayout) hasViews.internalFindViewById(R.id.fl_front_view);
        this.iv_praise = (ImageView) hasViews.internalFindViewById(R.id.iv_praise);
        this.tv_praise_num = (TextView) hasViews.internalFindViewById(R.id.tv_praise_num);
        this.tv_comment_num = (TextView) hasViews.internalFindViewById(R.id.tv_comment_num);
        this.pb_progress = (ProgressBar) hasViews.internalFindViewById(R.id.pb_progress);
        this.fl_content = (FrameLayout) hasViews.internalFindViewById(R.id.fl_content);
        this.tv_type = (TextView) hasViews.internalFindViewById(R.id.tv_type);
        this.ll_progress = (LinearLayout) hasViews.internalFindViewById(R.id.ll_progress);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.refresh);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.ll_more);
        View viewInternalFindViewById4 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById5 = hasViews.internalFindViewById(R.id.ll_recommend);
        View viewInternalFindViewById6 = hasViews.internalFindViewById(R.id.ll_close_drawer);
        View viewInternalFindViewById7 = hasViews.internalFindViewById(R.id.ll_comment);
        View viewInternalFindViewById8 = hasViews.internalFindViewById(R.id.ll_praise);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new n());
        }
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new o());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new p());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new q());
        }
        if (viewInternalFindViewById4 != null) {
            viewInternalFindViewById4.setOnClickListener(new r());
        }
        if (viewInternalFindViewById5 != null) {
            viewInternalFindViewById5.setOnClickListener(new s());
        }
        if (viewInternalFindViewById6 != null) {
            viewInternalFindViewById6.setOnClickListener(new t());
        }
        if (viewInternalFindViewById7 != null) {
            viewInternalFindViewById7.setOnClickListener(new u());
        }
        LinearLayout linearLayout2 = this.ll_progress;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new a());
        }
        if (viewInternalFindViewById8 != null) {
            viewInternalFindViewById8.setOnClickListener(new b());
        }
        afterview();
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
    @Override // com.join.mgps.activity.IntroductionActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void showMain(final BbsDetailBean detailBean) {
        org.androidannotations.api.b.e("", new e(detailBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void showTost(final String message) {
        org.androidannotations.api.b.e("", new g(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.IntroductionActivity
    public void updatePraise(final boolean praise) {
        org.androidannotations.api.b.e("", new j(praise), 0L);
    }

    public static v intent(Fragment supportFragment) {
        return new v(supportFragment);
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
