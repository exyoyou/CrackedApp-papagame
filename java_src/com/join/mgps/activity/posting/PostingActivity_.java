package com.join.mgps.activity.posting;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.CustomEdittext;
import com.join.mgps.dto.GameTagBean;
import com.join.mgps.dto.GroupListBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class PostingActivity_ extends PostingActivity implements xc.a, zc.a, zc.b {
    public static final String FID_EXTRA = "fid";
    public static final String FROM_TYPE_EXTRA = "fromType";
    public static final String GAME_ID_EXTRA = "game_id";
    public static final String GAME_TAG_EXTRA = "gameTag";
    public static final String LABEL_EXTRA = "label";
    public static final String POSTING_GROUP_EXTRA = "postingGroup";
    public static final String POSTING_TYPE_EXTRA = "postingType";
    public static final String TAG_ID_EXTRA = "tag_id";
    public static final String TAG_NAME_EXTRA = "tag_name";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showLoading();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showFailed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.hideLoading();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57875b;

        d(final String val$value) {
            this.f57875b = val$value;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.setPostingHint(this.f57875b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GroupListBean f57877b;

        e(final GroupListBean val$listBean) {
            this.f57877b = val$listBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.initPostingGroup(this.f57877b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GroupListBean f57879b;

        f(final GroupListBean val$listBean) {
            this.f57879b = val$listBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showPopGroup(this.f57879b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f57881b;

        g(final String val$info) {
            this.f57881b = val$info;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showToast(this.f57881b);
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showDialog();
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PostingActivity_.super.doSubmit();
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
                PostingActivity_.super.getPostingAuthority();
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
            PostingActivity_.this.btnSubmit();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f57887b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final boolean val$isFirstInit) {
            super(id2, delay, serial);
            this.f57887b = val$isFirstInit;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                PostingActivity_.super.getGroupInfoLists(this.f57887b);
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
                PostingActivity_.super.getPostingHint();
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
            PostingActivity_.this.relodingimag();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.setNetwork();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.back_image();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.fl_insert_label();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PostingActivity_.this.fl_insert_pic();
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.hideLoadingDialog();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.goTargetActivity();
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f57897b;

        u(final int val$type) {
            this.f57897b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            PostingActivity_.super.showPrePostingHintDialog(this.f57897b);
        }
    }

    public static class v extends org.androidannotations.api.builder.a<v> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f57899a;

        public v(Context context) {
            super(context, (Class<?>) PostingActivity_.class);
        }

        public v a(int fid) {
            return (v) super.extra("fid", fid);
        }

        public v b(int fromType) {
            return (v) super.extra("fromType", fromType);
        }

        public v c(ArrayList<GameTagBean> gameTag) {
            return (v) super.extra(PostingActivity_.GAME_TAG_EXTRA, gameTag);
        }

        public v d(String game_id) {
            return (v) super.extra("game_id", game_id);
        }

        public v e(String label) {
            return (v) super.extra(PostingActivity_.LABEL_EXTRA, label);
        }

        public v f(String postingGroup) {
            return (v) super.extra("postingGroup", postingGroup);
        }

        public v g(int postingType) {
            return (v) super.extra(PostingActivity_.POSTING_TYPE_EXTRA, postingType);
        }

        public v h(String tag_id) {
            return (v) super.extra("tag_id", tag_id);
        }

        public v i(String tag_name) {
            return (v) super.extra("tag_name", tag_name);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f57899a;
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
            super(fragment.getActivity(), (Class<?>) PostingActivity_.class);
            this.f57899a = fragment;
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
            if (extras.containsKey("fromType")) {
                this.fromType = extras.getInt("fromType");
            }
            if (extras.containsKey(GAME_TAG_EXTRA)) {
                this.gameTag = (ArrayList) extras.getSerializable(GAME_TAG_EXTRA);
            }
            if (extras.containsKey(POSTING_TYPE_EXTRA)) {
                this.postingType = extras.getInt(POSTING_TYPE_EXTRA);
            }
            if (extras.containsKey("postingGroup")) {
                this.postingGroup = extras.getString("postingGroup");
            }
            if (extras.containsKey("tag_id")) {
                this.tag_id = extras.getString("tag_id");
            }
            if (extras.containsKey("tag_name")) {
                this.tag_name = extras.getString("tag_name");
            }
            if (extras.containsKey("fid")) {
                this.fid = extras.getInt("fid");
            }
            if (extras.containsKey("game_id")) {
                this.game_id = extras.getString("game_id");
            }
            if (extras.containsKey(LABEL_EXTRA)) {
                this.label = extras.getString(LABEL_EXTRA);
            }
        }
    }

    public static v intent(Context context) {
        return new v(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void doSubmit() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void getGroupInfoLists(final boolean isFirstInit) {
        org.androidannotations.api.a.l(new l("", 0L, "", isFirstInit));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void getPostingAuthority() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void getPostingHint() {
        org.androidannotations.api.a.l(new m("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void goTargetActivity() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void hideLoading() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void hideLoadingDialog() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void initPostingGroup(final GroupListBean listBean) {
        org.androidannotations.api.b.e("", new e(listBean), 0L);
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
        setContentView(R.layout.activity_posting);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.posts_title = (CustomEdittext) hasViews.internalFindViewById(R.id.posts_title);
        this.posts_res_link = (CustomEdittext) hasViews.internalFindViewById(R.id.posts_res_link);
        this.posts_res_line = hasViews.internalFindViewById(R.id.posts_res_line);
        this.posts_content = (EditText) hasViews.internalFindViewById(R.id.posts_content);
        this.posts_pic_hlist = (HListView) hasViews.internalFindViewById(R.id.posts_pic_hlist);
        this.fl_posting_type_container = (FrameLayout) hasViews.internalFindViewById(R.id.fl_posting_type_container);
        this.ll_help_posting = (LinearLayout) hasViews.internalFindViewById(R.id.ll_help_posting);
        this.tv_coins = (TextView) hasViews.internalFindViewById(R.id.tv_coins);
        this.btn_selectedCoins = (Button) hasViews.internalFindViewById(R.id.btn_selectedCoins);
        this.ll_posting_rec_game = (RelativeLayout) hasViews.internalFindViewById(R.id.ll_posting_rec_game);
        this.tv_rec_game = (TextView) hasViews.internalFindViewById(R.id.tv_rec_game);
        this.btn_selectedGames = (Button) hasViews.internalFindViewById(R.id.btn_selectedGames);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.iv_posting_location = (ImageView) hasViews.internalFindViewById(R.id.iv_posting_location);
        this.tv_posting_group = (TextView) hasViews.internalFindViewById(R.id.tv_posting_group);
        this.iv_posting_select = (ImageView) hasViews.internalFindViewById(R.id.iv_posting_select);
        this.btnSubmit = (Button) hasViews.internalFindViewById(R.id.btnSubmit);
        this.ll_bottom = (LinearLayout) hasViews.internalFindViewById(R.id.ll_bottom);
        this.rl_main = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_main);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.fl_insert_label = (FrameLayout) hasViews.internalFindViewById(R.id.fl_insert_label);
        this.ll_top_center = (LinearLayout) hasViews.internalFindViewById(R.id.ll_top_center);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.setNetwork);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.fl_insert_pic);
        Button button = this.btnSubmit;
        if (button != null) {
            button.setOnClickListener(new k());
        }
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new n());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new o());
        }
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new p());
        }
        FrameLayout frameLayout = this.fl_insert_label;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new q());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new r());
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
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void setPostingHint(final String value) {
        org.androidannotations.api.b.e("", new d(value), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showLoading() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showPopGroup(final GroupListBean listBean) {
        org.androidannotations.api.b.e("", new f(listBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showPrePostingHintDialog(final int type) {
        org.androidannotations.api.b.e("", new u(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.posting.PostingActivity
    public void showToast(final String info) {
        org.androidannotations.api.b.e("", new g(info), 0L);
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
