package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.donkingliang.consecutivescroller.ConsecutiveScrollerLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomLoadingView;
import com.join.mgps.customview.ForumStickView;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ForumPostsActivity_ extends ForumPostsActivity implements xc.a, zc.a, zc.b {
    public static final String EXT_BEAN_EXTRA = "extBean";
    private final zc.c onViewChangedNotifier_ = new zc.c();
    private final Map<Class<?>, Object> beans_ = new HashMap();
    private final IntentFilter intentFilter1_ = new IntentFilter();
    private final BroadcastReceiver onPayGameSuccessReceiver_ = new BroadcastReceiver() { // from class: com.join.mgps.activity.ForumPostsActivity_.1

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f51662b = "gameData";

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ForumPostsActivity_.this.onPayGameSuccess((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    };

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.onClickMore();
        }
    }

    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showMoreLoading();
        }
    }

    class a1 extends org.androidannotations.api.a.c {
        a1(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.deletePosts();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51667b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51668c;

        b(final boolean val$like, final int val$count) {
            this.f51667b = val$like;
            this.f51668c = val$count;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.modifyPraiseView(this.f51667b, this.f51668c);
        }
    }

    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.refreshMoreFuncHostImg();
        }
    }

    class b1 implements View.OnClickListener {
        b1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.back_image();
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51672b;

        c(final boolean val$isReload) {
            this.f51672b = val$isReload;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.notifyAdapter(this.f51672b);
        }
    }

    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.refreshMoreFuncFavoriteImg();
        }
    }

    class c1 extends org.androidannotations.api.a.c {
        c1(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.doForumPostBest();
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
            ForumPostsActivity_.super.clearCommentMessage();
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumPostsBean f51677b;

        d0(final ForumBean.ForumPostsBean val$bean) {
            this.f51677b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.show(this.f51677b);
        }
    }

    class d1 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51679b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d1(String id2, long delay, String serial, final String val$gameId) {
            super(id2, delay, serial);
            this.f51679b = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.downloadGameById(this.f51679b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.stopXlistRefreshAndLoadMore();
        }
    }

    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.refreshMoreFuncBestImg();
        }
    }

    class e1 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51683b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e1(String id2, long delay, String serial, final String val$tagList) {
            super(id2, delay, serial);
            this.f51683b = val$tagList;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.addPostTag(this.f51683b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51685b;

        f(final int val$state) {
            this.f51685b = val$state;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.changeLoadingState(this.f51685b);
        }
    }

    class f0 implements View.OnClickListener {
        f0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.btn_chat_praise();
        }
    }

    class f1 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51688b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f1(String id2, long delay, String serial, final String val$tagList) {
            super(id2, delay, serial);
            this.f51688b = val$tagList;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.removePostTag(this.f51688b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51690b;

        g(final int val$type) {
            this.f51690b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showSendPromptDialog(this.f51690b);
        }
    }

    class g0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView f51692b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51693c;

        g0(final RecyclerView val$view, final int val$scrollState) {
            this.f51692b = val$view;
            this.f51693c = val$scrollState;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.videoScrollStateChanged(this.f51692b, this.f51693c);
        }
    }

    class g1 extends org.androidannotations.api.a.c {
        g1(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.setFirstPost();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.dismissSendPromptDialog();
        }
    }

    class h0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView f51697b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51698c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51699d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f51700e;

        h0(final RecyclerView val$view, final int val$firstVisibleItem, final int val$visibleItemCount, final int val$totalItemCount) {
            this.f51697b = val$view;
            this.f51698c = val$firstVisibleItem;
            this.f51699d = val$visibleItemCount;
            this.f51700e = val$totalItemCount;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.videoScroll(this.f51697b, this.f51698c, this.f51699d, this.f51700e);
        }
    }

    class h1 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51703c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f51704d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h1(String id2, long delay, String serial, final String val$guid, final int val$timeType, final String val$remarks) {
            super(id2, delay, serial);
            this.f51702b = val$guid;
            this.f51703c = val$timeType;
            this.f51704d = val$remarks;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.postGag(this.f51702b, this.f51703c, this.f51704d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51706b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51707c;

        i(final int val$pid, final int val$rid) {
            this.f51706b = val$pid;
            this.f51707c = val$rid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showPromptDialog(this.f51706b, this.f51707c);
        }
    }

    class i0 implements Runnable {
        i0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showDialog();
        }
    }

    class i1 implements View.OnClickListener {
        i1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.btn_chat_send();
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CharSequence f51711b;

        j(final CharSequence val$charSequence) {
            this.f51711b = val$charSequence;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showToast(this.f51711b);
        }
    }

    class j0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51713b;

        j0(final String val$message) {
            this.f51713b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showMessage(this.f51713b);
        }
    }

    class j1 implements View.OnClickListener {
        j1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.btn_chat_extension();
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RewardType f51716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51717c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51718d;

        k(final RewardType val$type, final int val$money, final int val$exp) {
            this.f51716b = val$type;
            this.f51717c = val$money;
            this.f51718d = val$exp;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showRewardToast(this.f51716b, this.f51717c, this.f51718d);
        }
    }

    class k0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DetailResultBean f51720b;

        k0(final DetailResultBean val$detialResultBean) {
            this.f51720b = val$detialResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.startDown(this.f51720b);
        }
    }

    class k1 implements View.OnClickListener {
        k1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.image_add();
        }
    }

    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.hideExtensionBoard();
        }
    }

    class l0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51724b;

        l0(final String val$tagList) {
            this.f51724b = val$tagList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.notifyTagAdded(this.f51724b);
        }
    }

    class l1 implements View.OnClickListener {
        l1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.postFuncMore();
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumPostsBean f51727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f51728c;

        m(final ForumBean.ForumPostsBean val$posts, final boolean val$isShowFooterDivider) {
            this.f51727b = val$posts;
            this.f51728c = val$isShowFooterDivider;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.setPostViewData(this.f51727b, this.f51728c);
        }
    }

    class m0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51730b;

        m0(final String val$tagList) {
            this.f51730b = val$tagList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.notifyTagRemoved(this.f51730b);
        }
    }

    public static class m1 extends org.androidannotations.api.builder.a<m1> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Fragment f51732a;

        public m1(Context context) {
            super(context, (Class<?>) ForumPostsActivity_.class);
        }

        public m1 a(ExtBean extBean) {
            return (m1) super.extra("extBean", extBean);
        }

        @Override // org.androidannotations.api.builder.a, org.androidannotations.api.builder.b
        public org.androidannotations.api.builder.f startForResult(int requestCode) {
            Fragment fragment = this.f51732a;
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

        public m1(Fragment fragment) {
            super(fragment.getActivity(), (Class<?>) ForumPostsActivity_.class);
            this.f51732a = fragment;
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51733b;

        n(final boolean val$showEmpty) {
            this.f51733b = val$showEmpty;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.changeCommentUI(this.f51733b);
        }
    }

    class n0 extends org.androidannotations.api.a.c {
        n0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.praisePosts();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f51736b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51737c;

        o(final List val$comment_list, final int val$page) {
            this.f51736b = val$comment_list;
            this.f51737c = val$page;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processCommentList(this.f51736b, this.f51737c);
        }
    }

    class o0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f51739b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f51740c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51741d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String id2, long delay, String serial, final boolean val$isReload, final boolean val$clearComment, final int val$page) {
            super(id2, delay, serial);
            this.f51739b = val$isReload;
            this.f51740c = val$clearComment;
            this.f51741d = val$page;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.loadForumPostsData(this.f51739b, this.f51740c, this.f51741d);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.lodingVideo();
        }
    }

    class p0 extends org.androidannotations.api.a.c {
        p0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.sendComment();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51745b;

        q(final int val$type) {
            this.f51745b = val$type;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.showPrePostingHintDialog(this.f51745b);
        }
    }

    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.btn_chat_star();
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f51748b;

        r(final String val$message) {
            this.f51748b = val$message;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.error(this.f51748b);
        }
    }

    class r0 extends org.androidannotations.api.a.c {
        r0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.touristLogin();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51751b;

        s(final int val$diff) {
            this.f51751b = val$diff;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processSendCommentResultRefreshCommenCount(this.f51751b);
        }
    }

    class s0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51753b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s0(String id2, long delay, String serial, final int val$pid) {
            super(id2, delay, serial);
            this.f51753b = val$pid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.deleteComment(this.f51753b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentBean f51755b;

        t(final ForumBean.ForumCommentBean val$bean) {
            this.f51755b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processCommentSendSuccess(this.f51755b);
        }
    }

    class t0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51758c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t0(String id2, long delay, String serial, final int val$pid, final int val$rid) {
            super(id2, delay, serial);
            this.f51757b = val$pid;
            this.f51758c = val$rid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.helpSolvePosts(this.f51757b, this.f51758c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumPostsActivity_.this.onScrollStickView();
        }
    }

    class u0 extends org.androidannotations.api.a.c {
        u0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.sendCommentReply();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51762b;

        v(final int val$pid) {
            this.f51762b = val$pid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processCommentDeleteSuccess(this.f51762b);
        }
    }

    class v0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51764b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        v0(String id2, long delay, String serial, final int val$rid) {
            super(id2, delay, serial);
            this.f51764b = val$rid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.deleteCommentReply(this.f51764b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51766b;

        w(final int val$pid) {
            this.f51766b = val$pid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processCommentHelpSolveSuccess(this.f51766b);
        }
    }

    class w0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ListView f51768b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51769c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f51770d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f51771e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w0(String id2, long delay, String serial, final ListView val$view, final int val$firstVisibleItem, final int val$lastVisiblePos, final int val$totalItemCount) {
            super(id2, delay, serial);
            this.f51768b = val$view;
            this.f51769c = val$firstVisibleItem;
            this.f51770d = val$lastVisiblePos;
            this.f51771e = val$totalItemCount;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.preLoadImages(this.f51768b, this.f51769c, this.f51770d, this.f51771e);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f51773b;

        x(final ForumBean.ForumCommentReplyBean val$bean) {
            this.f51773b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processCommentReplyDirectSendSuccess(this.f51773b);
        }
    }

    class x0 extends org.androidannotations.api.a.c {
        x0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.doForumPostFavorite();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumCommentReplyBean f51776b;

        y(final ForumBean.ForumCommentReplyBean val$bean) {
            this.f51776b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processCommentReplySendSuccess(this.f51776b);
        }
    }

    class y0 extends org.androidannotations.api.a.c {
        y0(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.doForumPostReport();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51779b;

        z(final int val$rid) {
            this.f51779b = val$rid;
        }

        @Override // java.lang.Runnable
        public void run() {
            ForumPostsActivity_.super.processDeleteCommentReplySuccess(this.f51779b);
        }
    }

    class z0 extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51781b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51782c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        z0(String id2, long delay, String serial, final int val$cid, final int val$rid) {
            super(id2, delay, serial);
            this.f51781b = val$cid;
            this.f51782c = val$rid;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                ForumPostsActivity_.super.doForumPostReport(this.f51781b, this.f51782c);
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
        injectExtras_();
        supportRequestWindowFeature(10);
        this.intentFilter1_.addAction(p5.a.I);
        this.intentFilter1_.addAction(p5.a.G);
        registerReceiver(this.onPayGameSuccessReceiver_, this.intentFilter1_);
    }

    private void injectExtras_() {
        Bundle extras = getIntent().getExtras();
        if (extras == null || !extras.containsKey("extBean")) {
            return;
        }
        this.extBean = (ExtBean) extras.getSerializable("extBean");
    }

    public static m1 intent(Context context) {
        return new m1(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void addPostTag(final String tagList) {
        org.androidannotations.api.a.l(new e1("", 0L, "", tagList));
    }

    @Override // com.join.mgps.activity.ForumPostsActivity
    public void changeCommentUI(final boolean showEmpty) {
        org.androidannotations.api.b.e("", new n(showEmpty), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void changeLoadingState(final int state) {
        org.androidannotations.api.b.e("", new f(state), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void clearCommentMessage() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void deleteComment(final int pid) {
        org.androidannotations.api.a.l(new s0("", 0L, "", pid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void deleteCommentReply(final int rid) {
        org.androidannotations.api.a.l(new v0("", 0L, "", rid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void deletePosts() {
        org.androidannotations.api.a.l(new a1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void dismissSendPromptDialog() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void doForumPostBest() {
        org.androidannotations.api.a.l(new c1("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void doForumPostFavorite() {
        org.androidannotations.api.a.l(new x0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void doForumPostReport() {
        org.androidannotations.api.a.l(new y0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void downloadGameById(final String gameId) {
        org.androidannotations.api.a.l(new d1("", 0L, "", gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void error(final String message) {
        org.androidannotations.api.b.e("", new r(message), 0L);
    }

    @Override // xc.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.beans_.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void helpSolvePosts(final int pid, final int rid) {
        org.androidannotations.api.a.l(new t0("", 0L, "", pid, rid));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void hideExtensionBoard() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void loadForumPostsData(final boolean isReload, final boolean clearComment, final int page) {
        org.androidannotations.api.a.l(new o0("", 0L, "", isReload, clearComment, page));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void lodingVideo() {
        org.androidannotations.api.b.e("", new p(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void modifyPraiseView(final boolean like, final int count) {
        org.androidannotations.api.b.e("", new b(like, count), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void notifyAdapter(final boolean isReload) {
        org.androidannotations.api.b.e("", new c(isReload), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void notifyTagAdded(final String tagList) {
        org.androidannotations.api.b.e("", new l0(tagList), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void notifyTagRemoved(final String tagList) {
        org.androidannotations.api.b.e("", new m0(tagList), 0L);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        zc.c cVarC = zc.c.c(this.onViewChangedNotifier_);
        init_(savedInstanceState);
        super.onCreate(savedInstanceState);
        zc.c.c(cVarC);
        setContentView(R.layout.mg_forum_post_activity);
    }

    @Override // com.join.mgps.activity.ForumPostsActivity, com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        unregisterReceiver(this.onPayGameSuccessReceiver_);
        super.onDestroy();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) throws Throwable {
        this.actionbarLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.actionbarLayout);
        this.back_image = (ImageView) hasViews.internalFindViewById(R.id.back_image);
        this.layout_title = (TextView) hasViews.internalFindViewById(R.id.layout_title);
        this.forum_post_nickname = (TextView) hasViews.internalFindViewById(R.id.forum_post_nickname);
        this.loadingView = (CustomLoadingView) hasViews.internalFindViewById(R.id.loadingView);
        this.postFunction = (LinearLayout) hasViews.internalFindViewById(R.id.postFunction);
        this.postFuncHost = (TextView) hasViews.internalFindViewById(R.id.postFuncHost);
        this.postFuncMore = (LinearLayout) hasViews.internalFindViewById(R.id.postFuncMore);
        this.layout_chat_cell_container = (LinearLayout) hasViews.internalFindViewById(R.id.layout_chat_cell_container);
        this.edit_user_comment = (ClearEditText) hasViews.internalFindViewById(R.id.edit_user_comment);
        this.btn_chat_praise = (Button) hasViews.internalFindViewById(R.id.btn_chat_praise);
        this.btn_chat_star = (Button) hasViews.internalFindViewById(R.id.btn_chat_star);
        this.btn_chat_send = (Button) hasViews.internalFindViewById(R.id.btn_chat_send);
        this.edit_comment_count = (TextView) hasViews.internalFindViewById(R.id.edit_comment_count);
        this.rl_comment_count = (RelativeLayout) hasViews.internalFindViewById(R.id.rl_comment_count);
        this.image_add = (ImageView) hasViews.internalFindViewById(R.id.image_add);
        this.footer_tip = (TextView) hasViews.internalFindViewById(R.id.footer_tip);
        this.btn_chat_extension = (Button) hasViews.internalFindViewById(R.id.btn_chat_extension);
        this.chat_layout_more = (LinearLayout) hasViews.internalFindViewById(R.id.chat_layout_more);
        this.chat_layout_extension = hasViews.internalFindViewById(R.id.chat_layout_extension);
        this.chat_layout_extension_container = (LinearLayout) hasViews.internalFindViewById(R.id.chat_layout_extension_container);
        this.matchListView = (HListView) hasViews.internalFindViewById(R.id.matchListView);
        this.sdv_head = (SimpleDraweeView) hasViews.internalFindViewById(R.id.sdv_head);
        this.vipFlag = (VipView) hasViews.internalFindViewById(R.id.vipFlag);
        this.copperTitleTv = (TextView) hasViews.internalFindViewById(R.id.copperTitleTv);
        this.moderator = (TextView) hasViews.internalFindViewById(R.id.moderator);
        this.member_honor = (TextView) hasViews.internalFindViewById(R.id.member_honor);
        this.forum_post_host = (Button) hasViews.internalFindViewById(R.id.forum_post_host);
        this.officialIcon = (ImageView) hasViews.internalFindViewById(R.id.officialIcon);
        this.forum_post_moderator = (ImageView) hasViews.internalFindViewById(R.id.forum_post_moderator);
        this.forum_post_stickie = (TextView) hasViews.internalFindViewById(R.id.forum_post_stickie);
        this.rv_comment_list = (XQuickRecyclerView) hasViews.internalFindViewById(R.id.rv_comment_list);
        this.csl_view = (ConsecutiveScrollerLayout) hasViews.internalFindViewById(R.id.csl_view);
        this.fsv_stick = (ForumStickView) hasViews.internalFindViewById(R.id.fsv_stick);
        this.iv_more = (ImageView) hasViews.internalFindViewById(R.id.iv_more);
        this.rv_head = (RecyclerView) hasViews.internalFindViewById(R.id.rv_head);
        this.view_empty = hasViews.internalFindViewById(R.id.view_empty);
        this.videoContainer = (FrameLayout) hasViews.internalFindViewById(R.id.videoContainer);
        this.videoLayout = (RelativeLayout) hasViews.internalFindViewById(R.id.videoLayout);
        this.video = (MyVideoView) hasViews.internalFindViewById(R.id.video);
        this.cover = (SimpleDraweeView) hasViews.internalFindViewById(R.id.cover);
        this.play = (ImageView) hasViews.internalFindViewById(R.id.play);
        this.loadingLayout = (LinearLayout) hasViews.internalFindViewById(R.id.loadingLayout);
        RelativeLayout relativeLayout = this.rl_comment_count;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new u());
        }
        Button button = this.btn_chat_praise;
        if (button != null) {
            button.setOnClickListener(new f0());
        }
        Button button2 = this.btn_chat_star;
        if (button2 != null) {
            button2.setOnClickListener(new q0());
        }
        ImageView imageView = this.back_image;
        if (imageView != null) {
            imageView.setOnClickListener(new b1());
        }
        Button button3 = this.btn_chat_send;
        if (button3 != null) {
            button3.setOnClickListener(new i1());
        }
        Button button4 = this.btn_chat_extension;
        if (button4 != null) {
            button4.setOnClickListener(new j1());
        }
        ImageView imageView2 = this.image_add;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new k1());
        }
        LinearLayout linearLayout = this.postFuncMore;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new l1());
        }
        ImageView imageView3 = this.iv_more;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new a());
        }
        afterViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void postGag(final String guid, final int timeType, final String remarks) {
        org.androidannotations.api.a.l(new h1("", 0L, "", guid, timeType, remarks));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void praisePosts() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void preLoadImages(final ListView view, final int firstVisibleItem, final int lastVisiblePos, final int totalItemCount) {
        org.androidannotations.api.a.l(new w0("", 0L, "", view, firstVisibleItem, lastVisiblePos, totalItemCount));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processCommentDeleteSuccess(final int pid) {
        org.androidannotations.api.b.e("", new v(pid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processCommentHelpSolveSuccess(final int pid) {
        org.androidannotations.api.b.e("", new w(pid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processCommentList(final List<ForumBean.ForumCommentBean> comment_list, final int page) {
        org.androidannotations.api.b.e("", new o(comment_list, page), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processCommentReplyDirectSendSuccess(final ForumBean.ForumCommentReplyBean bean) {
        org.androidannotations.api.b.e("", new x(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processCommentReplySendSuccess(final ForumBean.ForumCommentReplyBean bean) {
        org.androidannotations.api.b.e("", new y(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processCommentSendSuccess(final ForumBean.ForumCommentBean bean) {
        org.androidannotations.api.b.e("", new t(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processDeleteCommentReplySuccess(final int rid) {
        org.androidannotations.api.b.e("", new z(rid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void processSendCommentResultRefreshCommenCount(final int diff) {
        org.androidannotations.api.b.e("", new s(diff), 0L);
    }

    @Override // xc.a
    public <T> void putBean(Class<T> key, T value) {
        this.beans_.put(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void refreshMoreFuncBestImg() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void refreshMoreFuncFavoriteImg() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void refreshMoreFuncHostImg() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void removePostTag(final String tagList) {
        org.androidannotations.api.a.l(new f1("", 0L, "", tagList));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void sendComment() {
        org.androidannotations.api.a.l(new p0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void sendCommentReply() {
        org.androidannotations.api.a.l(new u0("", 0L, ""));
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        this.onViewChangedNotifier_.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void setFirstPost() {
        org.androidannotations.api.a.l(new g1("", 0L, ""));
    }

    @Override // android.app.Activity
    public void setIntent(Intent newIntent) {
        super.setIntent(newIntent);
        injectExtras_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void setPostViewData(final ForumBean.ForumPostsBean posts, final boolean isShowFooterDivider) {
        org.androidannotations.api.b.e("", new m(posts, isShowFooterDivider), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void show(final ForumBean.ForumPostsBean bean) {
        org.androidannotations.api.b.e("", new d0(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showDialog() {
        org.androidannotations.api.b.e("", new i0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showMessage(final String message) {
        org.androidannotations.api.b.e("", new j0(message), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showMoreLoading() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showPrePostingHintDialog(final int type) {
        org.androidannotations.api.b.e("", new q(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showPromptDialog(final int pid, final int rid) {
        org.androidannotations.api.b.e("", new i(pid, rid), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showRewardToast(final RewardType type, final int money, final int exp) {
        org.androidannotations.api.b.e("", new k(type, money, exp), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showSendPromptDialog(final int type) {
        org.androidannotations.api.b.e("", new g(type), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void showToast(final CharSequence charSequence) {
        org.androidannotations.api.b.e("", new j(charSequence), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void startDown(final DetailResultBean detialResultBean) {
        org.androidannotations.api.b.e("", new k0(detialResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void stopXlistRefreshAndLoadMore() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void touristLogin() {
        org.androidannotations.api.a.l(new r0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void videoScroll(final RecyclerView view, final int firstVisibleItem, final int visibleItemCount, final int totalItemCount) {
        org.androidannotations.api.b.e("", new h0(view, firstVisibleItem, visibleItemCount, totalItemCount), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void videoScrollStateChanged(final RecyclerView view, final int scrollState) {
        org.androidannotations.api.b.e("", new g0(view, scrollState), 0L);
    }

    public static m1 intent(Fragment supportFragment) {
        return new m1(supportFragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.ForumPostsActivity
    public void doForumPostReport(final int cid, final int rid) {
        org.androidannotations.api.a.l(new z0("", 0L, "", cid, rid));
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
