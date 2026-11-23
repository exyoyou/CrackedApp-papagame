package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.InformationCommentBeanV2;
import com.join.mgps.dto.RewardBean;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameInformationCommentActivity_ extends GameInformationCommentActivity implements xc.a, zc.a, zc.b {
    public static final String INFORMATION_COMMENT_BEAN_EXTRA = "informationCommentBean";
    public static final String INFORMATION_ID_EXTRA = "informationId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52888b;

        a(final List val$informations) {
            this.f52888b = val$informations;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showMain(this.f52888b);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.sendSuccess();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showLodingDialog();
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.dismissLodingDialog();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RewardBean f52893b;

        e(final RewardBean val$rewardBean) {
            this.f52893b = val$rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.toastData(this.f52893b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.updateEditText();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.updateListFooter();
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.noMore();
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52898b;

        i(final String val$message) {
            this.f52898b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showMessage(this.f52898b);
        }
    }

    class j extends org.androidannotations.api.a.c {
        j(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationCommentActivity_.super.getInformationData();
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
            GameInformationCommentActivity_.this.relodingimag();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52902b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final InformationCommentBeanV2 val$bean) {
            super(id2, delay, serial);
            this.f52902b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationCommentActivity_.super.sendParesed(this.f52902b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f52904b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52905c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String id2, long delay, String serial, final UserInfo val$accountBean, final String val$message) {
            super(id2, delay, serial);
            this.f52904b = val$accountBean;
            this.f52905c = val$message;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameInformationCommentActivity_.super.sendMessage(this.f52904b, this.f52905c);
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
            GameInformationCommentActivity_.this.back_image();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationCommentActivity_.this.mg_loading();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationCommentActivity_.this.btn_chat_send();
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameInformationCommentActivity_.this.setNetwork();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBeanV2 f52911b;

        r(final InformationCommentBeanV2 val$bean) {
            this.f52911b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.updateAdapter(this.f52911b);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52913b;

        s(final String val$message) {
            this.f52913b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showToast(this.f52913b);
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showLoding();
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameInformationCommentActivity_.super.showLodingFailed();
        }
    }

    public static class v extends org.androidannotations.api.builder.a<v> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52917a;

        public v(Context context) {
            super(context, (Class<?>) GameInformationCommentActivity_.class);
        }

        public v a(InformationCommentBeanV2 informationCommentBean) {
            return (v) super.extra("informationCommentBean", informationCommentBean);
        }

        public v b(String informationId) {
            return (v) super.extra("informationId", informationId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52917a;
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
            super(fragment.getActivity(), (Class<?>) GameInformationCommentActivity_.class);
            this.f52917a = fragment;
        }
    }

    private void init_(Bundle savedInstanceState) {
        zc.c.b(this);
        injectExtras_();
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            if (extras.containsKey("informationId")) {
                this.informationId = extras.getString("informationId");
            }
            if (extras.containsKey("informationCommentBean")) {
                this.informationCommentBean = (InformationCommentBeanV2) extras.getSerializable("informationCommentBean");
            }
        }
    }

    public static v intent(Context context) {
        return new v(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void dismissLodingDialog() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void getInformationData() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.information_comment_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.layout_forum_posts_title = (RelativeLayout) hasViews.internalFindViewById(R.id.layout_forum_posts_title);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.noMessage = (TextView) hasViews.internalFindViewById(R.id.noMessage);
        this.mg_forum_post_comment_list = (XListView2) hasViews.internalFindViewById(R.id.mg_forum_post_comment_list);
        this.loding_layout = (LinearLayout) hasViews.internalFindViewById(R.id.loding_layout);
        this.loding_faile = (LinearLayout) hasViews.internalFindViewById(R.id.loding_faile);
        this.layout_forum_posts_main = (FrameLayout) hasViews.internalFindViewById(R.id.layout_forum_posts_main);
        this.edit_user_comment = (ClearEditText) hasViews.internalFindViewById(R.id.edit_user_comment);
        this.btn_chat_praise = (Button) hasViews.internalFindViewById(R.id.btn_chat_praise);
        this.btn_chat_send = (Button) hasViews.internalFindViewById(R.id.btn_chat_send);
        this.edit_comment_count = (TextView) hasViews.internalFindViewById(R.id.edit_comment_count);
        this.image_add = (ImageView) hasViews.internalFindViewById(R.id.image_add);
        this.footer_tip = (TextView) hasViews.internalFindViewById(R.id.footer_tip);
        this.btn_chat_extension = (Button) hasViews.internalFindViewById(R.id.btn_chat_extension);
        this.chat_layout_more = (LinearLayout) hasViews.internalFindViewById(R.id.chat_layout_more);
        this.chat_layout_extension = hasViews.internalFindViewById(R.id.chat_layout_extension);
        this.chat_layout_extension_container = (LinearLayout) hasViews.internalFindViewById(R.id.chat_layout_extension_container);
        this.matchListView = (HListView) hasViews.internalFindViewById(R.id.matchListView);
        this.forum_title_center = (TextView) hasViews.internalFindViewById(R.id.forum_title_center);
        this.main = (KeyboardListenLayout) hasViews.internalFindViewById(R.id.main);
        View viewInternalFindViewById = hasViews.internalFindViewById(R.id.relodingimag);
        View viewInternalFindViewById2 = hasViews.internalFindViewById(R.id.mg_loading);
        View viewInternalFindViewById3 = hasViews.internalFindViewById(R.id.setNetwork);
        if (viewInternalFindViewById != null) {
            viewInternalFindViewById.setOnClickListener(new k());
        }
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new n());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new o());
        }
        Button button = this.btn_chat_send;
        if (button != null) {
            button.setOnClickListener(new p());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new q());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void sendMessage(final UserInfo accountBean, final String message) {
        org.androidannotations.api.a.l(new m("", 0L, "", accountBean, message));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void sendParesed(final InformationCommentBeanV2 bean) {
        org.androidannotations.api.a.l(new l("", 0L, "", bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void sendSuccess() {
        org.androidannotations.api.b.e("", new b(), 0L);
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
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showLodingDialog() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showMain(final List<InformationCommentBeanV2> informations) {
        org.androidannotations.api.b.e("", new a(informations), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new i(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new s(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void toastData(final RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new e(rewardBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void updateAdapter(final InformationCommentBeanV2 bean) {
        org.androidannotations.api.b.e("", new r(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void updateEditText() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameInformationCommentActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    public static v intent(Fragment supportFragment) {
        return new v(supportFragment);
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
