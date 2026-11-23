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
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.RewardBean;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class CollectionCommentActivity_ extends CollectionCommentActivity implements xc.a, zc.a, zc.b {
    public static final String INFORMATION_COMMENT_BEAN_EXTRA = "informationCommentBean";
    public static final String INFORMATION_ID_EXTRA = "informationId";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showLodingDialog();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.dismissLodingDialog();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50747b;

        c(final List val$informations) {
            this.f50747b = val$informations;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showMain(this.f50747b);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.sendSuccess();
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RewardBean f50750b;

        e(final RewardBean val$rewardBean) {
            this.f50750b = val$rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.toastData(this.f50750b);
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.updateListFooter();
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.noMore();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50754b;

        h(final String val$message) {
            this.f50754b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showMessage(this.f50754b);
        }
    }

    class i extends org.androidannotations.api.a.c {
        i(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionCommentActivity_.super.getInformationData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f50757b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final InformationCommentBean val$bean) {
            super(id2, delay, serial);
            this.f50757b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionCommentActivity_.super.sendParesed(this.f50757b);
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
            CollectionCommentActivity_.this.relodingimag();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f50760b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50761c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final UserInfo val$accountBean, final String val$message) {
            super(id2, delay, serial);
            this.f50760b = val$accountBean;
            this.f50761c = val$message;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                CollectionCommentActivity_.super.sendMessage(this.f50760b, this.f50761c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionCommentActivity_.this.back_image();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionCommentActivity_.this.mg_loading();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionCommentActivity_.this.btn_chat_send();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CollectionCommentActivity_.this.setNetwork();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f50767b;

        q(final InformationCommentBean val$bean) {
            this.f50767b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.updateAdapter(this.f50767b);
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50769b;

        r(final String val$message) {
            this.f50769b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showToast(this.f50769b);
        }
    }

    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showLoding();
        }
    }

    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CollectionCommentActivity_.super.showLodingFailed();
        }
    }

    public static class u extends org.androidannotations.api.builder.a<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f50773a;

        public u(Context context) {
            super(context, (Class<?>) CollectionCommentActivity_.class);
        }

        public u a(InformationCommentBean informationCommentBean) {
            return (u) super.extra("informationCommentBean", informationCommentBean);
        }

        public u b(String informationId) {
            return (u) super.extra("informationId", informationId);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f50773a;
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

        public u(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) CollectionCommentActivity_.class);
            this.f50773a = fragment;
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
                this.informationCommentBean = (InformationCommentBean) extras.getSerializable("informationCommentBean");
            }
        }
    }

    public static u intent(Context context) {
        return new u(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void dismissLodingDialog() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void getInformationData() {
        org.androidannotations.api.a.l(new i("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void noMore() {
        org.androidannotations.api.b.e("", new g(), 0L);
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
            imageView.setOnClickListener(new m());
        }
        if (viewInternalFindViewById2 != null) {
            viewInternalFindViewById2.setOnClickListener(new n());
        }
        Button button = this.btn_chat_send;
        if (button != null) {
            button.setOnClickListener(new o());
        }
        if (viewInternalFindViewById3 != null) {
            viewInternalFindViewById3.setOnClickListener(new p());
        }
        afterview();
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void sendMessage(final UserInfo accountBean, final String message) {
        org.androidannotations.api.a.l(new l("", 0L, "", accountBean, message));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void sendParesed(final InformationCommentBean bean) {
        org.androidannotations.api.a.l(new j("", 0L, "", bean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void sendSuccess() {
        org.androidannotations.api.b.e("", new d(), 0L);
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
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showLodingDialog() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showMain(final List<InformationCommentBean> informations) {
        org.androidannotations.api.b.e("", new c(informations), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new h(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void showToast(final String message) {
        org.androidannotations.api.b.e("", new r(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void toastData(final RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new e(rewardBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void updateAdapter(final InformationCommentBean bean) {
        org.androidannotations.api.b.e("", new q(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.CollectionCommentActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    public static u intent(Fragment supportFragment) {
        return new u(supportFragment);
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
