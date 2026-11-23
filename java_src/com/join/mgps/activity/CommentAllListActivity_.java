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
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentBaseBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CommentAllListActivity_ extends CommentAllListActivity implements xc.a, zc.a, zc.b {
    public static final String BESPEAK_SWITCH_EXTRA = "bespeakSwitch";
    public static final String COMMENT_CONTENT_EXTRA = "commentContent";
    public static final String COMMENT_ID_EXTRA = "commentId";
    public static final String COMMENT_SCORE_SWITCH_EXTRA = "commentScoreSwitch";
    public static final String COMMENT_STARS_EXTRA = "commentStars";
    public static final String GAME_ID_EXTRA = "gameId";
    public static final String GAME_IS_START_EXTRA = "gameIsStart";
    public static final String GAME_TYPE_EXTRA = "gameType";
    public static final String PACKAGE_NAME_EXTRA = "packageName";
    public static final String SGC_SWITCH_EXTRA = "sgcSwitch";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f50889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50890d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f50891e;

        a(final String val$msg, final boolean val$b, final int val$position, final int val$type) {
            this.f50888b = val$msg;
            this.f50889c = val$b;
            this.f50890d = val$position;
            this.f50891e = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.resultShow(this.f50888b, this.f50889c, this.f50890d, this.f50891e);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentResponse f50893b;

        b(final CommentResponse val$bean) {
            this.f50893b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.resultShow2(this.f50893b);
        }
    }

    class c extends org.androidannotations.api.a.c {
        c(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentAllListActivity_.super.getCommentList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f50896b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50897c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50898d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f50896b = val$bean;
            this.f50897c = val$position;
            this.f50898d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentAllListActivity_.super.onPraise(this.f50896b, this.f50897c, this.f50898d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentBaseBean f50900b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50901c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50902d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String id2, long delay, String serial, final CommentBaseBean val$bean, final int val$position, final int val$type) {
            super(id2, delay, serial);
            this.f50900b = val$bean;
            this.f50901c = val$position;
            this.f50902d = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CommentAllListActivity_.super.onUnPraise(this.f50900b, this.f50901c, this.f50902d);
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
                CommentAllListActivity_.super.getToken();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.this.back_image();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentAllListActivity_.this.textTopRight();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommentAllListBean.ScoringDetailsBean f50907b;

        i(final CommentAllListBean.ScoringDetailsBean val$scoringDetailsBean) {
            this.f50907b = val$scoringDetailsBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.setLinechartData(this.f50907b);
        }
    }

    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.showLoding();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50910b;

        k(final List val$commentBaseBeans) {
            this.f50910b = val$commentBaseBeans;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.showMain(this.f50910b);
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.showLodingFailed();
        }
    }

    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.updateListFooter();
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50914b;

        n(final String val$message) {
            this.f50914b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.showMessage(this.f50914b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f50916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50917c;

        o(final int val$position, final int val$i) {
            this.f50916b = val$position;
            this.f50917c = val$i;
        }

        @Override // java.lang.Runnable
        public void run() {
            CommentAllListActivity_.super.checkReset(this.f50916b, this.f50917c);
        }
    }

    public static class p extends org.androidannotations.api.builder.a<p> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50919a;

        public p(Context context) {
            super(context, (Class<?>) CommentAllListActivity_.class);
        }

        public p a(int bespeakSwitch) {
            return (p) super.extra("bespeakSwitch", bespeakSwitch);
        }

        public p b(String commentContent) {
            return (p) super.extra("commentContent", commentContent);
        }

        public p c(String commentId) {
            return (p) super.extra("commentId", commentId);
        }

        public p d(String commentScoreSwitch) {
            return (p) super.extra("commentScoreSwitch", commentScoreSwitch);
        }

        public p e(float commentStars) {
            return (p) super.extra("commentStars", commentStars);
        }

        public p f(String gameId) {
            return (p) super.extra("gameId", gameId);
        }

        public p g(int gameIsStart) {
            return (p) super.extra("gameIsStart", gameIsStart);
        }

        public p h(String gameType) {
            return (p) super.extra("gameType", gameType);
        }

        public p i(String packageName) {
            return (p) super.extra("packageName", packageName);
        }

        public p j(int sgcSwitch) {
            return (p) super.extra("sgcSwitch", sgcSwitch);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50919a;
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

        public p(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CommentAllListActivity_.class);
            this.f50919a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        this.prefDef = new PrefDef_(this);
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("commentId")) {
                this.commentId = extras.getString("commentId");
            }
            if (extras.containsKey("commentContent")) {
                this.commentContent = extras.getString("commentContent");
            }
            if (extras.containsKey("commentStars")) {
                this.commentStars = extras.getFloat("commentStars");
            }
            if (extras.containsKey("gameId")) {
                this.gameId = extras.getString("gameId");
            }
            if (extras.containsKey("packageName")) {
                this.packageName = extras.getString("packageName");
            }
            if (extras.containsKey("commentScoreSwitch")) {
                this.commentScoreSwitch = extras.getString("commentScoreSwitch");
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

    public static p intent(Context context) {
        return new p(context);
    }

    @Override // com.join.mgps.activity.CommentAllListActivity
    public void checkReset(final int position, final int i10) {
        org.androidannotations.api.b.e("", new o(position, i10), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void getCommentList() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void getToken() {
        org.androidannotations.api.a.l(new f("", 0L, ""));
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
        setContentView(R.layout.comment_all_list_activity);
    }

    @Override // com.join.mgps.activity.CommentAllListActivity, com.join.mgps.adapter.CommentAllListAdapter.h
    public void onPraise(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new d("", 0L, "", bean, position, type));
    }

    @Override // com.join.mgps.activity.CommentAllListActivity, com.join.mgps.adapter.CommentAllListAdapter.h
    public void onUnPraise(final CommentBaseBean bean, final int position, final int type) {
        org.androidannotations.api.a.l(new e("", 0L, "", bean, position, type));
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.title_textview = (TextView) hasViews.internalFindViewById(R.id.title_textview);
        this.textTopRight = (TextView) hasViews.internalFindViewById(R.id.textTopRight);
        this.mPtrFrame = (PtrClassicFrameLayout) hasViews.internalFindViewById(R.id.mPtrFrame);
        this.comment_all_list = (XListView2) hasViews.internalFindViewById(R.id.comment_all_list);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.noCommentLl = (LinearLayout) hasViews.internalFindViewById(R.id.noCommentLl);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new g());
        }
        TextView textView = this.textTopRight;
        if (textView != null) {
            textView.setOnClickListener(new h());
        }
        afterView();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void resultShow(final String msg, final boolean b10, final int position, final int type) {
        org.androidannotations.api.b.e("", new a(msg, b10, position, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void resultShow2(final CommentResponse bean) {
        org.androidannotations.api.b.e("", new b(bean), 0L);
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
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void setLinechartData(final CommentAllListBean.ScoringDetailsBean scoringDetailsBean) {
        org.androidannotations.api.b.e("", new i(scoringDetailsBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void showMain(final List<CommentBaseBean> commentBaseBeans) {
        org.androidannotations.api.b.e("", new k(commentBaseBeans), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new n(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CommentAllListActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    public static p intent(Fragment supportFragment) {
        return new p(supportFragment);
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
