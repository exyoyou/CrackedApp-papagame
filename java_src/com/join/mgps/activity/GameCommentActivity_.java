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
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.InformationCommentBean;
import com.join.mgps.dto.RewardBean;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class GameCommentActivity_ extends GameCommentActivity implements xc.a, zc.a, zc.b {
    public static final String CRC_LINK_TYPE_VAL_EXTRA = "CrcLinkTypeVal";
    public static final String INFORMATION_COMMENT_BEAN_EXTRA = "informationCommentBean";
    public static final String INFORMATION_ID_EXTRA = "informationId";
    public static final String IS_EDIT_EXTRA = "isEdit";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showLoding();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showLodingFailed();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.sendSuccess();
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RewardBean f52301b;

        d(final RewardBean val$rewardBean) {
            this.f52301b = val$rewardBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.toastData(this.f52301b);
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showLodingDialog();
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.dismissLodingDialog();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52305b;

        g(final String val$message) {
            this.f52305b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showMessage(this.f52305b);
        }
    }

    class h extends org.androidannotations.api.a.c {
        h(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameCommentActivity_.super.getGameCommentList();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f52308b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String id2, long delay, String serial, final InformationCommentBean val$bean) {
            super(id2, delay, serial);
            this.f52308b = val$bean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameCommentActivity_.super.postPraised(this.f52308b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UserInfo f52310b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52311c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String id2, long delay, String serial, final UserInfo val$accountBean, final String val$message) {
            super(id2, delay, serial);
            this.f52310b = val$accountBean;
            this.f52311c = val$message;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameCommentActivity_.super.postGameCommentRelpy(this.f52310b, this.f52311c);
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
            GameCommentActivity_.this.relodingimag();
        }
    }

    class l extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AccountBean f52314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f52315c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String id2, long delay, String serial, final AccountBean val$accountBean, final String val$message) {
            super(id2, delay, serial);
            this.f52314b = val$accountBean;
            this.f52315c = val$message;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                GameCommentActivity_.super.postGameComment(this.f52314b, this.f52315c);
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
            GameCommentActivity_.this.back_image();
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCommentActivity_.this.mg_loading();
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCommentActivity_.this.btn_chat_send();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameCommentActivity_.this.setNetwork();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f52321b;

        q(final List val$commitDataBeanList) {
            this.f52321b = val$commitDataBeanList;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.showMain(this.f52321b);
        }
    }

    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.updateListFooter();
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f52324b;

        s(final InformationCommentBean val$bean) {
            this.f52324b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.onPraiseFail(this.f52324b);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ InformationCommentBean f52326b;

        t(final InformationCommentBean val$bean) {
            this.f52326b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            GameCommentActivity_.super.updateAdapter(this.f52326b);
        }
    }

    public static class u extends org.androidannotations.api.builder.a<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52328a;

        public u(Context context) {
            super(context, (Class<?>) GameCommentActivity_.class);
        }

        public u a(String CrcLinkTypeVal) {
            return (u) super.extra(GameCommentActivity_.CRC_LINK_TYPE_VAL_EXTRA, CrcLinkTypeVal);
        }

        public u b(InformationCommentBean informationCommentBean) {
            return (u) super.extra("informationCommentBean", informationCommentBean);
        }

        public u c(String informationId) {
            return (u) super.extra("informationId", informationId);
        }

        public u d(boolean isEdit) {
            return (u) super.extra("isEdit", isEdit);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52328a;
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
            super(fragment.getActivity(), (Class<?>) GameCommentActivity_.class);
            this.f52328a = fragment;
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
            if (extras.containsKey(CRC_LINK_TYPE_VAL_EXTRA)) {
                this.CrcLinkTypeVal = extras.getString(CRC_LINK_TYPE_VAL_EXTRA);
            }
            if (extras.containsKey("isEdit")) {
                this.isEdit = extras.getBoolean("isEdit");
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
    @Override // com.join.mgps.activity.GameCommentActivity
    public void dismissLodingDialog() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void getGameCommentList() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.information_comment_activity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void onPraiseFail(final InformationCommentBean bean) {
        org.androidannotations.api.b.e("", new s(bean), 0L);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void postGameComment(final AccountBean accountBean, final String message) {
        org.androidannotations.api.a.l(new l("", 0L, "", accountBean, message));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void postGameCommentRelpy(final UserInfo accountBean, final String message) {
        org.androidannotations.api.a.l(new j("", 0L, "", accountBean, message));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void postPraised(final InformationCommentBean bean) {
        org.androidannotations.api.a.l(new i("", 0L, "", bean));
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void sendSuccess() {
        org.androidannotations.api.b.e("", new c(), 0L);
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
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showLoding() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showLodingDialog() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showMain(final List<InformationCommentBean> commitDataBeanList) {
        org.androidannotations.api.b.e("", new q(commitDataBeanList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new g(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void toastData(final RewardBean rewardBean) {
        org.androidannotations.api.b.e("", new d(rewardBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void updateAdapter(final InformationCommentBean bean) {
        org.androidannotations.api.b.e("", new t(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.GameCommentActivity
    public void updateListFooter() {
        org.androidannotations.api.b.e("", new r(), 0L);
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
