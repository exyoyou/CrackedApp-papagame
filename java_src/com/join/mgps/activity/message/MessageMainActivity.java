package com.join.mgps.activity.message;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.NotificationManagerCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.BaseFragmentActivity;
import com.MApplication;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.flyco.tablayout.SlidingTabLayout;
import com.flyco.tablayout.widget.MsgView;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.adapter.h0;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.event.y;
import com.join.mgps.pref.h;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.activity_message_main)
public class MessageMainActivity extends BaseFragmentActivity {
    private UserInfo accountBean;

    @ViewById
    ImageView back;
    com.join.mgps.activity.message.a communityFragment;
    Context context;
    Fragment fg;

    @Extra
    IntentDateBean intentDateBean;
    com.join.mgps.activity.message.c messagePriaceFragment;
    e noticeFragment;
    com.join.mgps.rpc.e rpcClient;

    @ViewById
    SlidingTabLayout tableLayout;
    private String typeId;

    @ViewById
    ViewPager viewPager;

    @Extra
    int index = 0;

    @Extra
    boolean isLike = false;

    @Extra
    boolean isMessage = false;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageMainActivity messageMainActivity = MessageMainActivity.this;
            messageMainActivity.tableLayout.k(messageMainActivity.index);
            int i10 = MessageMainActivity.this.index;
            if (i10 == 1) {
                MApplication.P.setCommunity_surplus_number(0);
                MessageMainActivity messageMainActivity2 = MessageMainActivity.this;
                if (messageMainActivity2.isLike) {
                    messageMainActivity2.communityFragment.b0();
                    return;
                }
                return;
            }
            if (i10 == 2) {
                MApplication.P.setReplay_surplus_number(0);
                MessageMainActivity messageMainActivity3 = MessageMainActivity.this;
                if (messageMainActivity3.isLike) {
                    messageMainActivity3.messagePriaceFragment.d0();
                    return;
                }
                return;
            }
            if (i10 == 0) {
                MApplication.P.setNotice_surplus_number(0);
                if (MessageMainActivity.this.intentDateBean != null) {
                    IntentUtil intentUtil = IntentUtil.getInstance();
                    MessageMainActivity messageMainActivity4 = MessageMainActivity.this;
                    intentUtil.intentActivity(messageMainActivity4.context, messageMainActivity4.intentDateBean);
                }
            }
        }
    }

    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            MessageMainActivity.this.tableLayout.k(position);
            if (position == 0) {
                MessageMainActivity messageMainActivity = MessageMainActivity.this;
                messageMainActivity.fg = messageMainActivity.noticeFragment;
                return;
            }
            if (position == 1) {
                MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
                if (dataBean != null) {
                    dataBean.setCommunity_surplus_number(0);
                }
                MessageMainActivity messageMainActivity2 = MessageMainActivity.this;
                messageMainActivity2.fg = messageMainActivity2.communityFragment;
                return;
            }
            if (position == 2) {
                MessageRedPointBean.MessagesBean.DataBean dataBean2 = MApplication.P;
                if (dataBean2 != null) {
                    dataBean2.setReplay_surplus_number(0);
                }
                MessageMainActivity messageMainActivity3 = MessageMainActivity.this;
                messageMainActivity3.fg = messageMainActivity3.messagePriaceFragment;
            }
        }
    }

    class c implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.b f57514a;

        c(final com.join.mgps.dialog.b val$changeNameDialog) {
            this.f57514a = val$changeNameDialog;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            if (this.f57514a.c()) {
                h.n(MessageMainActivity.this.context).h0(false);
            }
            this.f57514a.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            if (this.f57514a.c()) {
                h.n(MessageMainActivity.this.context).h0(false);
            }
            Intent intent = new Intent();
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, "com.join.android.app.mgsim.wufun", null));
            MessageMainActivity.this.startActivity(intent);
            this.f57514a.dismiss();
        }
    }

    @AfterViews
    void afterview() {
        this.context = this;
        org.greenrobot.eventbus.c.f().v(this.context);
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        h0 h0Var = new h0(getSupportFragmentManager());
        ArrayList arrayList = new ArrayList();
        this.noticeFragment = new f();
        this.communityFragment = new com.join.mgps.activity.message.b();
        this.messagePriaceFragment = new d();
        h0.a aVar = new h0.a("通知", this.noticeFragment);
        h0.a aVar2 = new h0.a("社区", this.communityFragment);
        h0.a aVar3 = new h0.a("点评", this.messagePriaceFragment);
        arrayList.add(aVar);
        arrayList.add(aVar2);
        arrayList.add(aVar3);
        h0Var.e(arrayList);
        this.viewPager.setAdapter(h0Var);
        this.viewPager.setOffscreenPageLimit(3);
        this.tableLayout.setViewPager(this.viewPager);
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
        if (dataBean != null) {
            if (dataBean.getNotice_surplus_number() > 0) {
                this.tableLayout.q(0, 0);
            }
            if (MApplication.P.getCommunity_surplus_number() > 0 || MApplication.P.getCommunity_praise_surplus_number() > 0) {
                this.tableLayout.q(1, 0);
            }
            if (MApplication.P.getReplay_surplus_number() > 0 || MApplication.P.getPraise_surplus_number() > 0) {
                this.tableLayout.q(2, 0);
            }
            if (!this.isMessage) {
                if (MApplication.P.getNotice_surplus_number() > 0) {
                    this.viewPager.setCurrentItem(0);
                    MApplication.P.setNotice_surplus_number(0);
                    this.tableLayout.k(0);
                } else if (MApplication.P.getCommunity_surplus_number() > 0 || MApplication.P.getCommunity_praise_surplus_number() > 0) {
                    this.viewPager.setCurrentItem(1);
                    MApplication.P.setCommunity_surplus_number(0);
                    this.tableLayout.k(1);
                } else if (MApplication.P.getReplay_surplus_number() > 0 || MApplication.P.getPraise_surplus_number() > 0) {
                    this.viewPager.setCurrentItem(2);
                    MApplication.P.setReplay_surplus_number(0);
                    this.tableLayout.k(2);
                }
            }
        }
        MsgView msgViewI = this.tableLayout.i(2);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgViewI.getLayoutParams();
        marginLayoutParams.height = 10;
        marginLayoutParams.width = 10;
        msgViewI.setLayoutParams(marginLayoutParams);
        MsgView msgViewI2 = this.tableLayout.i(1);
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) msgViewI2.getLayoutParams();
        marginLayoutParams2.height = 10;
        marginLayoutParams2.width = 10;
        msgViewI2.setLayoutParams(marginLayoutParams2);
        MsgView msgViewI3 = this.tableLayout.i(0);
        ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) msgViewI3.getLayoutParams();
        marginLayoutParams3.height = 10;
        marginLayoutParams3.width = 10;
        msgViewI3.setLayoutParams(marginLayoutParams3);
        if (this.isMessage) {
            this.viewPager.setCurrentItem(this.index);
            new Handler().postDelayed(new a(), 500L);
        }
        this.viewPager.addOnPageChangeListener(new b());
        if (!h.n(this.context).t() || NotificationManagerCompat.from(this.context).areNotificationsEnabled()) {
            return;
        }
        com.join.mgps.dialog.b bVar = new com.join.mgps.dialog.b(this.context, R.style.HKDialogLoading);
        bVar.k("请开启通知权限");
        bVar.g("第一时间收到重要消息及互动回复。");
        bVar.d("取消");
        bVar.j("去开启");
        bVar.f(0);
        bVar.i(new c(bVar));
        bVar.show();
    }

    @Click
    void back() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        m.j(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getRedPointData() {
        UserInfo accountData;
        if (!m.j(this.context) || (accountData = AccountUtil_.getInstance_(this.context).getAccountData()) == null || accountData.getUid() == 0 || AccountUtil_.getInstance_(this.context).isTourist()) {
            return;
        }
        try {
            MessageRedPointBean messageRedPointBeanH1 = this.rpcClient.H1(RequestBeanUtil.getInstance(this.context).getGRedPointNum(accountData.getUid()));
            if (messageRedPointBeanH1 == null || messageRedPointBeanH1.getMessages() == null || messageRedPointBeanH1.getMessages().getData() == null) {
                return;
            }
            MessageRedPointBean.MessagesBean.DataBean data = messageRedPointBeanH1.getMessages().getData();
            MApplication.P = data;
            int community_praise_surplus_number = data.getCommunity_praise_surplus_number() + MApplication.P.getCommunity_surplus_number() + MApplication.P.getNotice_surplus_number() + MApplication.P.getPraise_surplus_number() + MApplication.P.getReplay_surplus_number();
            MApplication.T = community_praise_surplus_number;
            if (community_praise_surplus_number > 0) {
                reCheckRed();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this.context);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(y jPushNotifEvent) {
        this.typeId = jPushNotifEvent.f68233a;
        getRedPointData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void reCheckRed() {
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
        if (dataBean != null) {
            if (dataBean.getNotice_surplus_number() > 0) {
                this.tableLayout.q(0, 0);
            }
            if (MApplication.P.getCommunity_surplus_number() > 0 || MApplication.P.getCommunity_praise_surplus_number() > 0) {
                this.tableLayout.q(1, 0);
            }
            if (MApplication.P.getReplay_surplus_number() > 0 || MApplication.P.getPraise_surplus_number() > 0) {
                this.tableLayout.q(2, 0);
            }
        }
        if (this.typeId.equals("1")) {
            this.noticeFragment.f57735o = true;
            if (this.viewPager.getCurrentItem() == 0) {
                this.tableLayout.k(0);
                MApplication.P.setNotice_surplus_number(0);
                e eVar = this.noticeFragment;
                eVar.f57732l = 1;
                eVar.Q();
                return;
            }
            return;
        }
        if (this.typeId.equals("2")) {
            this.communityFragment.f57555v = true;
            if (this.viewPager.getCurrentItem() == 1) {
                this.tableLayout.k(1);
                MApplication.P.setCommunity_surplus_number(0);
                com.join.mgps.activity.message.a aVar = this.communityFragment;
                aVar.f57546m = 1;
                aVar.P();
                return;
            }
            return;
        }
        if (this.typeId.equals("3")) {
            this.messagePriaceFragment.f57648u = true;
            if (this.viewPager.getCurrentItem() == 2) {
                this.tableLayout.k(2);
                MApplication.P.setReplay_surplus_number(0);
                com.join.mgps.activity.message.c cVar = this.messagePriaceFragment;
                cVar.f57641n = 1;
                cVar.Q();
            }
        }
    }

    @Click
    void setting() {
        MessageSettingActivity_.intent(this.context).start();
    }
}
