package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
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
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.ForumBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumProfileMessageReplyActivity_ extends ForumProfileMessageReplyActivity implements xc.a, zc.a, zc.b {
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51948b;

        a(final String val$msg) {
            this.f51948b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showToast(this.f51948b);
        }
    }

    class a0 extends org.androidannotations.api.a.c {
        a0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.sendComment();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RewardType f51951b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51952c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51953d;

        b(final RewardType val$type, final int val$money, final int val$exp) {
            this.f51951b = val$type;
            this.f51952c = val$money;
            this.f51953d = val$exp;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showRewardToast(this.f51951b, this.f51952c, this.f51953d);
        }
    }

    class b0 extends org.androidannotations.api.a.c {
        b0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showMoreLoading();
        }
    }

    class c0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51957b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c0(String id2, long delay, String serial, final int val$pid) {
            super(id2, delay, serial);
            this.f51957b = val$pid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.deleteComment(this.f51957b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.notifyLoginSuccess();
        }
    }

    class d0 extends org.androidannotations.api.a.c {
        d0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.praisePosts();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51961b;

        e(final String val$message) {
            this.f51961b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.error(this.f51961b);
        }
    }

    class e0 extends org.androidannotations.api.a.c {
        e0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.sendCommentReply();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.dismissSendPromptDialog();
        }
    }

    class f0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51965b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f0(String id2, long delay, String serial, final int val$rid) {
            super(id2, delay, serial);
            this.f51965b = val$rid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.deleteCommentReply(this.f51965b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f51967b;

        g(final ForumBean.ForumCommentBean val$bean) {
            this.f51967b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.processCommentSendSuccess(this.f51967b);
        }
    }

    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity_.this.btn_chat_praise();
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51970b;

        h(final int val$pid) {
            this.f51970b = val$pid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.processCommentDeleteSuccess(this.f51970b);
        }
    }

    class h0 extends org.androidannotations.api.a.c {
        h0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.doForumPostReport();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51973b;

        i(final int val$diff) {
            this.f51973b = val$diff;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.processSendCommentResultRefreshCommenCount(this.f51973b);
        }
    }

    class i0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51976c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String id2, long delay, String serial, final int val$cid, final int val$rid) {
            super(id2, delay, serial);
            this.f51975b = val$cid;
            this.f51976c = val$rid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.doForumPostReport(this.f51975b, this.f51976c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f51978b;

        j(final ForumBean.ForumCommentReplyBean val$bean) {
            this.f51978b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.processCommentReplyDirectSendSuccess(this.f51978b);
        }
    }

    class j0 extends org.androidannotations.api.a.c {
        j0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.deletePosts();
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
            ForumProfileMessageReplyActivity_.this.back_image();
        }
    }

    class k0 implements View.OnClickListener {
        k0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity_.this.btn_chat_send();
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f51983b;

        l(final ForumBean.ForumCommentReplyBean val$bean) {
            this.f51983b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.processCommentReplySendSuccess(this.f51983b);
        }
    }

    class l0 implements Runnable {
        l0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.checkKeyboard();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51986b;

        m(final int val$rid) {
            this.f51986b = val$rid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.processDeleteCommentReplySuccess(this.f51986b);
        }
    }

    class m0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f51988b;

        m0(final ForumBean.ForumCommentBean val$bean) {
            this.f51988b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.updateMessageData(this.f51988b);
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.clearCommentMessage();
        }
    }

    class n0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51991b;

        n0(final int val$state) {
            this.f51991b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.changeLoadingState(this.f51991b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51993b;

        o(final int val$type) {
            this.f51993b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showSendPromptDialog(this.f51993b);
        }
    }

    class o0 implements Runnable {
        o0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.hideExtensionBoard();
        }
    }

    class p0 implements Runnable {
        p0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.notifyAdapter();
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f51998b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51999c;

        q(final View val$anchor, final int val$type) {
            this.f51998b = val$anchor;
            this.f51999c = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showPopupwindow(this.f51998b, this.f51999c);
        }
    }

    public static class q0 extends org.androidannotations.api.builder.a<q0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f52001a;

        public q0(Context context) {
            super(context, (Class<?>) ForumProfileMessageReplyActivity_.class);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f52001a;
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

        public q0(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ForumProfileMessageReplyActivity_.class);
            this.f52001a = fragment;
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f52002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f52003c;

        r(final boolean val$deleteVisible, final boolean val$commentVisible) {
            this.f52002b = val$deleteVisible;
            this.f52003c = val$commentVisible;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.setPopupWindowAttr(this.f52002b, this.f52003c);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f52005b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52006c;

        s(final boolean val$like, final int val$count) {
            this.f52005b = val$like;
            this.f52006c = val$count;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.modifyPraiseView(this.f52005b, this.f52006c);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52008b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f52009c;

        t(final int val$pid, final int val$rid) {
            this.f52008b = val$pid;
            this.f52009c = val$rid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showPromptDialog(this.f52008b, this.f52009c);
        }
    }

    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showDialog();
        }
    }

    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumProfileMessageReplyActivity_.this.layout_title_right();
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f52013b;

        w(final String val$message) {
            this.f52013b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showMessage(this.f52013b);
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f52015b;

        x(final int val$type) {
            this.f52015b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumProfileMessageReplyActivity_.super.showPrePostingHintDialog(this.f52015b);
        }
    }

    class y extends org.androidannotations.api.a.c {
        y(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.loadSrvData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z extends org.androidannotations.api.a.c {
        z(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumProfileMessageReplyActivity_.super.getForumProfileMessageReplyData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private void init_(Bundle savedInstanceState) {
        Resources resources = getResources();
        zc.c.b(this);
        this.netExcption = resources.getString(R.string.net_excption);
        this.netConnectException = resources.getString(R.string.connect_server_excption);
    }

    public static q0 intent(Context context) {
        return new q0(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new n0(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void checkKeyboard() {
        org.androidannotations.api.b.e("", new l0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void clearCommentMessage() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void deleteComment(final int pid) {
        org.androidannotations.api.a.l(new c0("", 0L, "", pid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void deleteCommentReply(final int rid) {
        org.androidannotations.api.a.l(new f0("", 0L, "", rid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void deletePosts() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void dismissSendPromptDialog() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void doForumPostReport() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new e(message), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void getForumProfileMessageReplyData() {
        org.androidannotations.api.a.l(new z("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void hideExtensionBoard() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void loadSrvData() {
        org.androidannotations.api.a.l(new y("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void modifyPraiseView(final boolean like, final int count) {
        org.androidannotations.api.b.e("", new s(like, count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void notifyAdapter() {
        org.androidannotations.api.b.e("", new p0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void notifyLoginSuccess() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_forum_profile_message_reply_activity);
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.layout_forum_posts_title = (RelativeLayout) hasViews.internalFindViewById(R.id.layout_forum_posts_title);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.layout_title_right = (TextView) hasViews.internalFindViewById(R.id.layout_title_right);
        this.loadingView = (ForumLoadingView) hasViews.internalFindViewById(R.id.loadingView);
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
        this.mg_forum_profile_message_list = (XListView) hasViews.internalFindViewById(R.id.mg_forum_profile_message_list);
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new k());
        }
        TextView textView = this.layout_title_right;
        if (textView != null) {
            textView.setOnClickListener(new v());
        }
        Button button = this.btn_chat_praise;
        if (button != null) {
            button.setOnClickListener(new g0());
        }
        Button button2 = this.btn_chat_send;
        if (button2 != null) {
            button2.setOnClickListener(new k0());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void praisePosts() {
        org.androidannotations.api.a.l(new d0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void processCommentDeleteSuccess(final int pid) {
        org.androidannotations.api.b.e("", new h(pid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void processCommentReplyDirectSendSuccess(final ForumBean.ForumCommentReplyBean bean) {
        org.androidannotations.api.b.e("", new j(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void processCommentReplySendSuccess(final ForumBean.ForumCommentReplyBean bean) {
        org.androidannotations.api.b.e("", new l(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void processCommentSendSuccess(final ForumBean.ForumCommentBean bean) {
        org.androidannotations.api.b.e("", new g(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void processDeleteCommentReplySuccess(final int rid) {
        org.androidannotations.api.b.e("", new m(rid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void processSendCommentResultRefreshCommenCount(final int diff) {
        org.androidannotations.api.b.e("", new i(diff), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void sendComment() {
        org.androidannotations.api.a.l(new a0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void sendCommentReply() {
        org.androidannotations.api.a.l(new e0("", 0L, ""));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void setPopupWindowAttr(final boolean deleteVisible, final boolean commentVisible) {
        org.androidannotations.api.b.e("", new r(deleteVisible, commentVisible), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new w(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showMoreLoading() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showPopupwindow(final View anchor, final int type) {
        org.androidannotations.api.b.e("", new q(anchor, type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showPrePostingHintDialog(final int type) {
        org.androidannotations.api.b.e("", new x(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showPromptDialog(final int pid, final int rid) {
        org.androidannotations.api.b.e("", new t(pid, rid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showRewardToast(final RewardType type, final int money, final int exp) {
        org.androidannotations.api.b.e("", new b(type, money, exp), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showSendPromptDialog(final int type) {
        org.androidannotations.api.b.e("", new o(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void showToast(final String msg) {
        org.androidannotations.api.b.e("", new a(msg), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new o0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new b0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void updateMessageData(final ForumBean.ForumCommentBean bean) {
        org.androidannotations.api.b.e("", new m0(bean), 0L);
    }

    public static q0 intent(Fragment supportFragment) {
        return new q0(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumProfileMessageReplyActivity
    public void doForumPostReport(final int cid, final int rid) {
        org.androidannotations.api.a.l(new i0("", 0L, "", cid, rid));
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
