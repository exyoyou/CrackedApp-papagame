package com.join.mgps.activity.label;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
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
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.MainLabelHeaderView;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.dto.MainLabelBean;
import java.util.HashMap;
import java.util.Map;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class MainLabelActivity_ extends MainLabelActivity implements xc.a, zc.a, zc.b {
    public static final String FID_EXTRA = "fid";
    public static final String FROM_TYPE_EXTRA = "fromType";
    public static final String POSTING_GROUP_EXTRA = "postingGroup";
    public static final String TAG_ID_EXTRA = "tag_id";
    public static final String TAG_NAME_EXTRA = "tag_name";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.playVideoDelay();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.showLoading1();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.showFailed();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.hideLoading();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57425b;

        e(final String val$info) {
            this.f57425b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.showToast(this.f57425b);
        }
    }

    class f extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57427b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String id2, long delay, String serial, final int val$type) {
            super(id2, delay, serial);
            this.f57427b = val$type;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                MainLabelActivity_.super.attention(this.f57427b);
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
                MainLabelActivity_.super.getMainLabelInfo();
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
            MainLabelActivity_.this.btnFocus();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.back_image();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.rlOrderBy();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.btnSendPosts();
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.relodingimag();
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MainLabelActivity_.this.setNetwork();
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.showDialog();
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f57437b;

        o(final boolean val$isAttention) {
            this.f57437b = val$isAttention;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.updateAttention(this.f57437b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MainLabelBean f57439b;

        p(final MainLabelBean val$mainLabelBean) {
            this.f57439b = val$mainLabelBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            MainLabelActivity_.super.updateMainUi(this.f57439b);
        }
    }

    public static class q extends org.androidannotations.api.builder.a<q> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f57441a;

        public q(Context context) {
            super(context, (Class<?>) MainLabelActivity_.class);
        }

        public q a(int fid) {
            return (q) super.extra("fid", fid);
        }

        public q b(int fromType) {
            return (q) super.extra("fromType", fromType);
        }

        public q c(String postingGroup) {
            return (q) super.extra("postingGroup", postingGroup);
        }

        public q d(int tag_id) {
            return (q) super.extra("tag_id", tag_id);
        }

        public q e(String tag_name) {
            return (q) super.extra("tag_name", tag_name);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f57441a;
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
            super(fragment.getActivity(), (Class<?>) MainLabelActivity_.class);
            this.f57441a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        this.accountUtil = AccountUtil_.getInstance_(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("tag_id")) {
                this.tag_id = extras.getInt("tag_id");
            }
            if (extras.containsKey("tag_name")) {
                this.tag_name = extras.getString("tag_name");
            }
            if (extras.containsKey("fromType")) {
                this.fromType = extras.getInt("fromType");
            }
            if (extras.containsKey("fid")) {
                this.fid = extras.getInt("fid");
            }
            if (extras.containsKey("postingGroup")) {
                this.postingGroup = extras.getString("postingGroup");
            }
        }
    }

    public static q intent(Context context) {
        return new q(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void attention(final int type) {
        org.androidannotations.api.a.l(new f("", 0L, "", type));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void getMainLabelInfo() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void hideLoading() {
        org.androidannotations.api.b.e("", new d(), 0L);
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
        setContentView(R.layout.activity_main_label);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.btnFocus = (TextView) hasViews.internalFindViewById(R.id.btnFocus);
        this.btnSendPosts = (Button) hasViews.internalFindViewById(R.id.btnSendPosts);
        this.tabsLayout = (SlidingTabLayout6) hasViews.internalFindViewById(R.id.tabsLayout);
        this.scrollableLayout = (ScrollableLayout) hasViews.internalFindViewById(R.id.scrollableLayout);
        this.viewPager = (ViewPager) hasViews.internalFindViewById(R.id.viewPager);
        this.rl_main = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_main);
        this.rl_title = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_title);
        this.rlOrderBy = (RelativeLayout) hasViews.internalFindViewById(R.id.rlOrderBy);
        this.iv_order = (ImageView) hasViews.internalFindViewById(R.id.iv_order);
        this.mScrollableHeader = (MainLabelHeaderView) hasViews.internalFindViewById(R.id.mScrollableHeader);
        this.iv_label_administrator_avatar = (SimpleDraweeView) hasViews.internalFindViewById(R.id.iv_label_administrator_avatar);
        this.tv_label_administrator_nickname = (TextView) hasViews.internalFindViewById(R.id.tv_label_administrator_nickname);
        this.tv_posts_counts = (TextView) hasViews.internalFindViewById(R.id.tv_posts_counts);
        this.tv_label_name_head = (TextView) hasViews.internalFindViewById(R.id.tv_label_name_head);
        this.ll_label_property = (LinearLayout) hasViews.internalFindViewById(R.id.ll_label_property);
        this.iv_close_send_posting = (ImageView) hasViews.internalFindViewById(R.id.iv_close_send_posting);
        this.ll_multi_type_posts = (RelativeLayout) hasViews.internalFindViewById(R.id.ll_multi_type_posts);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.back_image);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        TextView textView = this.btnFocus;
        if (textView != null) {
            textView.setOnClickListener(new h());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new i());
        }
        RelativeLayout relativeLayout = this.rlOrderBy;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new j());
        }
        Button button = this.btnSendPosts;
        if (button != null) {
            button.setOnClickListener(new k());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new l());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new m());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void playVideoDelay() {
        org.androidannotations.api.b.e("", new a(), 400L);
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
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void showFailed() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void showLoading1() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new e(info), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void updateAttention(final boolean isAttention) {
        org.androidannotations.api.b.e("", new o(isAttention), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.label.MainLabelActivity
    public void updateMainUi(final MainLabelBean mainLabelBean) {
        org.androidannotations.api.b.e("", new p(mainLabelBean), 0L);
    }

    public static q intent(Fragment supportFragment) {
        return new q(supportFragment);
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
