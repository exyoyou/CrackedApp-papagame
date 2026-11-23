package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentDetailBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CommentDetailActivity_ extends CommentDetailActivity implements xc.a, zc.a, zc.b {
    public static final String BESPEAK_SWITCH_EXTRA = "bespeakSwitch";
    public static final String COMMENT_ID_EXTRA = "commentId";
    public static final String COMMENT_SCORE_SWITCH_EXTRA = "commentScoreSwitch";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String GAME_IS_START_EXTRA = "gameIsStart";
    public static final String GAME_TYPE_EXTRA = "gameType";
    public static final String PACKAGE_NAME_EXTRA = "packageName";
    public static final String SGC_SWITCH_EXTRA = "sgcSwitch";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50979b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50980c;

        a(final List val$subCommentBeanXs, final int val$maxItem) {
            this.f50979b = val$subCommentBeanXs;
            this.f50980c = val$maxItem;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.showMain(this.f50979b, this.f50980c);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.showLodingFailed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.updateListFooter();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50984b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommentCreateBean.InfoBean f50985c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f50986d;

        d(final String val$msg, final CommentCreateBean.InfoBean val$bean, final boolean val$b) {
            this.f50984b = val$msg;
            this.f50985c = val$bean;
            this.f50986d = val$b;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.resultShow4(this.f50984b, this.f50985c, this.f50986d);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50988b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f50989c;

        e(final String val$msg, final boolean val$b) {
            this.f50988b = val$msg;
            this.f50989c = val$b;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.resultShow2(this.f50988b, this.f50989c);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50991b;

        f(final int val$i) {
            this.f50991b = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.checkReset(this.f50991b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50993b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f50994c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50995d;

        g(final String val$msg, final boolean val$b, final int val$type) {
            this.f50993b = val$msg;
            this.f50994c = val$b;
            this.f50995d = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.resultShow(this.f50993b, this.f50994c, this.f50995d);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50997b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f50998c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50999d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f51000e;

        h(final String val$msg, final boolean val$b, final int val$position, final int val$type) {
            this.f50997b = val$msg;
            this.f50998c = val$b;
            this.f50999d = val$position;
            this.f51000e = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.resultShow3(this.f50997b, this.f50998c, this.f50999d, this.f51000e);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f51002b;

        i(final CommentResponse val$bean) {
            this.f51002b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.resultShow2(this.f51002b);
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51004b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final String val$sort) {
            super(id2, delay, serial);
            this.f51004b = val$sort;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.getCommentList(this.f51004b);
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
            CommentDetailActivity_.this.setNetwork();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51007b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f51008c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f51009d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f51010e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f51011f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ String f51012g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f51013h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final String val$replyCommentId, final String val$str, final String val$upPhoneModel, final String val$reply_comment_user_id, final String val$reply_comment_user_name, final String val$reply_comment_id, final int val$replyPn) {
            super(id2, delay, serial);
            this.f51007b = val$replyCommentId;
            this.f51008c = val$str;
            this.f51009d = val$upPhoneModel;
            this.f51010e = val$reply_comment_user_id;
            this.f51011f = val$reply_comment_user_name;
            this.f51012g = val$reply_comment_id;
            this.f51013h = val$replyPn;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.toCreateComment(this.f51007b, this.f51008c, this.f51009d, this.f51010e, this.f51011f, this.f51012g, this.f51013h);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {
        m(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.deleteMyComment();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class n extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f51016b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51017c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String id2, long delay, String serial, final CommentDetailBean.MainCommentBean val$bean, final int val$type) {
            super(id2, delay, serial);
            this.f51016b = val$bean;
            this.f51017c = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.onUnPraise(this.f51016b, this.f51017c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f51019b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51020c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String id2, long delay, String serial, final CommentDetailBean.MainCommentBean val$mainCommentBean, final int val$type) {
            super(id2, delay, serial);
            this.f51019b = val$mainCommentBean;
            this.f51020c = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.topPraise(this.f51019b, this.f51020c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f51022b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51023c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51024d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String id2, long delay, String serial, final CommentDetailBean.MainCommentBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f51022b = val$bean;
            this.f51023c = val$position;
            this.f51024d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentDetailActivity_.super.onPraise(this.f51022b, this.f51023c, this.f51024d);
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
                CommentDetailActivity_.super.getToken();
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
            CommentDetailActivity_.this.back_image();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentDetailActivity_.this.imTopRight();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.showLodingDialog();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.dismissLodingDialog();
        }
    }

    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.showDeleteView();
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.MainCommentBean f51032b;

        w(final CommentDetailBean.MainCommentBean val$temp) {
            this.f51032b = val$temp;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.setTopComment(this.f51032b);
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentDetailBean.GameInfoBean f51034b;

        x(final CommentDetailBean.GameInfoBean val$bean) {
            this.f51034b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.setTopGame(this.f51034b);
        }
    }

    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentDetailActivity_.super.showLoding();
        }
    }

    public static class z extends org.androidannotations.api.builder.a<z> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51037a;

        public z(Context context) {
            super(context, (Class<?>) CommentDetailActivity_.class);
        }

        public z a(int bespeakSwitch) {
            return (z) super.extra("bespeakSwitch", bespeakSwitch);
        }

        public z b(String commentId) {
            return (z) super.extra("commentId", commentId);
        }

        public z c(String commentScoreSwitch) {
            return (z) super.extra("commentScoreSwitch", commentScoreSwitch);
        }

        public z d(String gameId) {
            return (z) super.extra("gameId", gameId);
        }

        public z e(int gameIsStart) {
            return (z) super.extra("gameIsStart", gameIsStart);
        }

        public z f(String gameType) {
            return (z) super.extra("gameType", gameType);
        }

        public z g(String packageName) {
            return (z) super.extra("packageName", packageName);
        }

        public z h(int sgcSwitch) {
            return (z) super.extra("sgcSwitch", sgcSwitch);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51037a;
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
            super(fragment.getActivity(), (Class<?>) CommentDetailActivity_.class);
            this.f51037a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
        supportRequestWindowFeature(10);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("commentId")) {
                this.commentId = extras.getString("commentId");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("commentScoreSwitch")) {
                this.commentScoreSwitch = extras.getString("commentScoreSwitch");
            }
            if (extras.containsKey("packageName")) {
                this.packageName = extras.getString("packageName");
            }
            if (extras.containsKey("bespeakSwitch")) {
                this.bespeakSwitch = extras.getInt("bespeakSwitch");
            }
            if (extras.containsKey("sgcSwitch")) {
                this.sgcSwitch = extras.getInt("sgcSwitch");
            }
            if (extras.containsKey("gameType")) {
                this.gameType = extras.getString("gameType");
            }
            if (extras.containsKey("gameIsStart")) {
                this.gameIsStart = extras.getInt("gameIsStart");
            }
        }
    }

    public static z intent(Context context) {
        return new z(context);
    }

    @Override // com.join.mgps.activity.CommentDetailActivity
    public void checkReset(final int i10) {
        org.androidannotations.api.b.e("", new f(i10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void deleteMyComment() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void dismissLodingDialog() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void getCommentList(final String sort) {
        org.androidannotations.api.a.l(new j("", 0L, "", sort));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void getToken() {
        org.androidannotations.api.a.l(new q("", 0L, ""));
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
        setContentView(R.layout.comment_detail_activity);
    }

    @Override // com.join.mgps.activity.CommentDetailActivity, com.join.mgps.adapter.CommentDetailAdapter.h
    public void onPraise(final CommentDetailBean.MainCommentBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new p("", 0L, "", bean, position, type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void onUnPraise(final CommentDetailBean.MainCommentBean bean, final int type) {
        org.androidannotations.api.a.l(new n("", 0L, "", bean, type));
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.imTopRight = (ImageView) hasViews.internalFindViewById(R.id.imTopRight);
        this.deletedTv = (TextView) hasViews.internalFindViewById(R.id.deletedTv);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.comment_detail_list = (XListView2) hasViews.internalFindViewById(R.id.comment_detail_list);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.inputLl = (LinearLayout) hasViews.internalFindViewById(R.id.inputLl);
        this.btn_chat_praise = (Button) hasViews.internalFindViewById(R.id.btn_chat_praise);
        this.btn_chat_extension = (Button) hasViews.internalFindViewById(R.id.btn_chat_extension);
        this.edit_comment_count = (TextView) hasViews.internalFindViewById(R.id.edit_comment_count);
        this.edit_user_comment = (ClearEditText) hasViews.internalFindViewById(R.id.edit_user_comment);
        this.btn_chat_send = (Button) hasViews.internalFindViewById(R.id.btn_chat_send);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new r());
        }
        ImageView imageView2 = this.imTopRight;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new s());
        }
        afterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void resultShow(final String msg, final boolean b10, final int type) {
        org.androidannotations.api.b.e("", new g(msg, b10, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void resultShow2(final String msg, final boolean b10) {
        org.androidannotations.api.b.e("", new e(msg, b10), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void resultShow3(final String msg, final boolean b10, final int position, final int type) {
        org.androidannotations.api.b.e("", new h(msg, b10, position, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void resultShow4(final String msg, final CommentCreateBean.InfoBean bean, final boolean b10) {
        org.androidannotations.api.b.e("", new d(msg, bean, b10), 0L);
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
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void setTopComment(final CommentDetailBean.MainCommentBean temp) {
        org.androidannotations.api.b.e("", new w(temp), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void setTopGame(final CommentDetailBean.GameInfoBean bean) {
        org.androidannotations.api.b.e("", new x(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void showDeleteView() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void showLodingDialog() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void showMain(final List<CommentDetailBean.MainCommentBean> subCommentBeanXs, final int maxItem) {
        org.androidannotations.api.b.e("", new a(subCommentBeanXs, maxItem), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void toCreateComment(final String replyCommentId, final String str, final String upPhoneModel, final String reply_comment_user_id, final String reply_comment_user_name, final String reply_comment_id, final int replyPn) {
        org.androidannotations.api.a.l(new l("", 0L, "", replyCommentId, str, upPhoneModel, reply_comment_user_id, reply_comment_user_name, reply_comment_id, replyPn));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void topPraise(final CommentDetailBean.MainCommentBean mainCommentBean, final int type) {
        org.androidannotations.api.a.l(new o("", 0L, "", mainCommentBean, type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    public static z intent(Fragment supportFragment) {
        return new z(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentDetailActivity
    public void resultShow2(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new i(bean), 0L);
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
