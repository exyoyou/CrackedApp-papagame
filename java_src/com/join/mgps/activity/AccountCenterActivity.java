package com.join.mgps.activity;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.PullableScrollView;
import com.join.mgps.customview.VipView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.EverdayLogin;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameOLHeadAdBean;
import com.join.mgps.dto.RecomCentrebean;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_account_center)
public class AccountCenterActivity extends BaseActivity {

    @ViewById
    TextView account;
    private UserInfo accountBean;

    @ViewById
    ImageView accountCenterImageView;

    @ViewById
    View accountCenterLine;

    @ViewById
    ImageView accountCenterMsgBg;

    @ViewById
    SimpleDraweeView avatar;

    @ViewById
    ImageView back_image;

    @ViewById
    RelativeLayout back_layout;

    @ViewById
    TextView brass_title;
    RecomDatabean cash_coupon;
    RecomDatabean copper;

    @ViewById
    TextView couponNumber;

    @ViewById
    TextView couponNumberTxt;
    RecomDatabean currency_red_packets;
    private GameOLHeadAdBean databean;

    @ViewById
    RelativeLayout downloads;

    @ViewById
    RelativeLayout feedback;
    RecomDatabean game_packs;

    @ViewById
    TextView game_packs_txt;

    @ViewById
    SimpleDraweeView img_brass;

    @ViewById
    SimpleDraweeView img_gift;

    @ViewById
    SimpleDraweeView img_voucher;
    private boolean isShowPabiIntent;
    private boolean isShowTokenFail;

    @ViewById
    RelativeLayout joystick;

    @ViewById
    LinearLayout layoutText;

    @ViewById
    TextView levelBadge;

    @ViewById
    RelativeLayout liveLayout;

    @ViewById
    RelativeLayout mBrass;
    private Context mContext;

    @ViewById
    RelativeLayout mGiftBox;

    @ViewById
    RelativeLayout mMessages;

    @ViewById
    RelativeLayout mPosts;
    com.join.mgps.rpc.o mRpcPawalletClient;

    @ViewById
    TextView messageBadge;

    @ViewById
    RelativeLayout myGameTip;

    @ViewById
    RelativeLayout myVoucher;

    @ViewById
    TextView nickname;

    @ViewById
    RelativeLayout paCreditCenter;

    @ViewById
    SimpleDraweeView paCreditCenterIcon;

    @ViewById
    RelativeLayout paVip;

    @ViewById
    TextView paVipAd;

    @ViewById
    SimpleDraweeView paVipIcon;

    @ViewById
    TextView pabiAd;

    @ViewById
    TextView papaBrasss;

    @ViewById
    TextView papaMoney;

    @ViewById
    RelativeLayout papaMore;

    @ViewById
    TextView papaliveText;
    RecomDatabean personal_information;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;
    com.join.mgps.rpc.e rpcClient;
    com.join.mgps.rpc.i rpcForumClient;

    @ViewById
    PullableScrollView scrollView;

    @ViewById
    TextView signBadge;

    @ViewById
    RelativeLayout signIn;

    @ViewById
    VipView svipText;

    @ViewById
    TextView title_textview;

    @ViewById
    RelativeLayout tools;
    int topHeight;

    @ViewById
    TextView tourTip;

    @ViewById
    ImageView userIconBg;

    @ViewById
    FrameLayout userLogin;

    @ViewById
    ImageView userisLogin;
    RecomDatabean vip;

    @ViewById
    VipView vipItem;

    @ViewById
    TextView vipMessage;

    @ViewById
    VipView vipText;
    RecomDatabean vip_1;

    @ViewById
    TextView vip_1_txt;
    RecomDatabean vip_2;

    @ViewById
    TextView vip_2_txt;

    @ViewById
    SimpleDraweeView vip_icon_1;

    @ViewById
    SimpleDraweeView vip_icon_2;

    @ViewById
    LinearLayout vip_lay;

    @ViewById
    LinearLayout vip_lay_1;

    @ViewById
    LinearLayout vip_lay_2;

    @ViewById
    View vip_lay_2_line;
    private int userBgHeight = 195;
    com.join.mgps.customview.t mDialog = null;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLogin(v10.getContext())) {
                return;
            }
            com.join.mgps.Util.r0.R0(v10.getContext());
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLogin(v10.getContext())) {
                return;
            }
            IntentUtil.getInstance().goMYAccountDetialActivity(v10.getContext());
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLogin(v10.getContext())) {
                return;
            }
            com.join.mgps.Util.r0.R0(v10.getContext());
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.personal_information.getSub().get(0).getIntentDataBean());
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goLogin(v10.getContext());
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goLogin(v10.getContext());
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goLogin(v10.getContext());
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goVip(AccountCenterActivity.this.mContext);
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goVip(AccountCenterActivity.this.mContext);
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (IntentUtil.getInstance().goLogin(v10.getContext())) {
                return;
            }
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.copper.getSub().get(0).getIntentDataBean());
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.currency_red_packets.getSub().get(0).getIntentDataBean());
        }
    }

    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.personal_information.getSub().get(0).getIntentDataBean());
        }
    }

    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.vip_1.getSub().get(0).getIntentDataBean());
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.vip_2.getSub().get(0).getIntentDataBean());
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            try {
                if (IntentUtil.getInstance().goLogin(v10.getContext())) {
                    return;
                }
                IntentUtil.getInstance().intentActivity(AccountCenterActivity.this.mContext, AccountCenterActivity.this.databean.getSub().get(0).getIntentDataBean());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil intentUtil = IntentUtil.getInstance();
            AccountCenterActivity accountCenterActivity = AccountCenterActivity.this;
            intentUtil.intentActivity(accountCenterActivity, accountCenterActivity.personal_information.getSub().get(0).getIntentDataBean());
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    @Click
    void accountCenterImageView() {
        com.papa.sim.statistic.pref.b.k(getApplicationContext()).A(false);
    }

    @AfterViews
    void afterViews() {
        try {
            this.mContext = this;
            this.back_layout.setBackgroundColor(-1);
            this.topHeight = com.join.mgps.Util.i0.a(this, this.userBgHeight - 60);
            this.accountBean = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
            this.rpcClient = com.join.mgps.rpc.impl.d.O1();
            newUpdate();
        } catch (Exception unused) {
        }
    }

    @Click
    void back_image() {
        finish();
    }

    @Click
    void back_layout() {
        finish();
    }

    @Click({R.id.face_transfer_rl})
    void btn_face_transfer() {
        IntentUtil.getInstance().goFaceTransferHomePageActivity(this);
    }

    @UiThread
    void checkMessageInfoSuccess(int number) {
        if (number < 1) {
            this.messageBadge.setVisibility(8);
            return;
        }
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.messageBadge.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.messageBadge.setLayoutParams(layoutParams);
            this.messageBadge.setCompoundDrawables(null, null, null, null);
            this.messageBadge.setBackgroundResource(R.drawable.mygame_big_round);
            this.messageBadge.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.messageBadge.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.messageBadge.setGravity(17);
            this.messageBadge.setLayoutParams(layoutParams2);
            this.messageBadge.setCompoundDrawables(null, null, null, null);
            this.messageBadge.setBackgroundResource(R.drawable.message_round);
            this.messageBadge.setPadding(1, 0, 2, 1);
        }
        this.messageBadge.setText(number + "");
        this.messageBadge.setVisibility(0);
    }

    @Background
    void checkUserInfo() {
        if (!com.join.android.app.common.utils.m.j(this) || this.accountBean == null) {
            return;
        }
        try {
            MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.accountBean.getUid());
            bVarNewBuilder.setToken(this.accountBean.getToken());
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            ResponseResult responseResultA = this.rpcAccountClientV2.A(bVarNewBuilder.build());
            if (responseResultA != null) {
                if (responseResultA.getError() != 200) {
                    if (responseResultA.getError() == 701) {
                        tokenFailure();
                        return;
                    }
                    return;
                }
                UserInfo data = responseResultA.getData();
                if (data != null && data.getUid() != 0) {
                    UserInfo.b builder = this.accountBean.toBuilder();
                    builder.setSVIPLevel(data.getSVIPLevel()).setVipLevel(data.getVipLevel()).setLiveTotalCharm(data.getLiveTotalCharm()).setIsAnchor(data.getIsAnchor()).setGameTime(data.getGameTime()).setPapaMoney(data.getPapaMoney());
                    this.accountBean = builder.build();
                    AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(this.accountBean, getApplicationContext());
                }
                refreshViews();
                this.isShowTokenFail = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void downloads() {
        IntentUtil.getInstance().goDownloadSettingActivity(this);
    }

    @UiThread
    void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @Click
    void feedback() {
        IntentUtil.getInstance().goFeedback(this);
    }

    @UiThread
    void initUpdate(RecomCentrebean recomCentrebean) {
        try {
            RecomDatabean vip = recomCentrebean.getVip();
            this.vip = vip;
            if (vip == null || vip.getMain() == null || this.vip.getMain().getAd_switch() != 1) {
                this.paVip.setVisibility(8);
            } else {
                this.paVipAd.setText(this.vip.getMain().getTitle());
                this.paVip.setVisibility(0);
                com.join.android.app.common.utils.l.d(this.paVipIcon, R.drawable.papa_vip, this.vip.getMain().getPic_remote());
                this.vipItem.setVipData(this.accountBean.getVipLevel(), this.accountBean.getSVIPLevel());
                if (com.join.mgps.Util.b.piv(this.accountBean)) {
                    long vipExpTime = this.accountBean.getVipExpTime();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j10 = (vipExpTime - jCurrentTimeMillis) / 86400000;
                    if (vipExpTime <= jCurrentTimeMillis || j10 > 7) {
                        this.vipMessage.setVisibility(8);
                    } else {
                        this.vipMessage.setText(com.join.mgps.Util.e0.s(vipExpTime) + "到期");
                    }
                } else {
                    this.vipMessage.setVisibility(0);
                    RecomDatabean recomDatabean = this.vip;
                    if (recomDatabean != null) {
                        this.vipMessage.setText(recomDatabean.getMain().getSub_title());
                    } else {
                        this.vipMessage.setText("开通VIP，成为悟饭特权派");
                    }
                    this.vipMessage.setTextColor(getResources().getColor(R.color.vip_color));
                }
                this.paVip.setOnClickListener(new i());
            }
            RecomDatabean copper = recomCentrebean.getCopper();
            this.copper = copper;
            if (copper == null || copper.getMain() == null || this.copper.getMain().getAd_switch() != 1) {
                this.papaBrasss.setVisibility(0);
            } else {
                this.brass_title.setText(this.copper.getMain().getTitle());
                com.join.android.app.common.utils.l.d(this.img_brass, R.drawable.papa_brass, this.copper.getMain().getPic_remote());
                this.papaBrasss.setText(this.copper.getMain().getSub_title());
                this.mBrass.setOnClickListener(new j());
            }
            RecomDatabean currency_red_packets = recomCentrebean.getCurrency_red_packets();
            this.currency_red_packets = currency_red_packets;
            if (currency_red_packets == null || currency_red_packets.getMain() == null || this.currency_red_packets.getMain().getAd_switch() != 1) {
                this.papaMoney.setVisibility(0);
            } else {
                this.pabiAd.setText(this.currency_red_packets.getMain().getTitle());
                this.papaMoney.setText(this.currency_red_packets.getMain().getSub_title());
                com.join.android.app.common.utils.l.h(this.paCreditCenterIcon, this.currency_red_packets.getMain().getPic_remote());
                this.paCreditCenter.setOnClickListener(new k());
            }
            RecomDatabean personal_information = recomCentrebean.getPersonal_information();
            this.personal_information = personal_information;
            if (personal_information != null && personal_information.getMain() != null && this.personal_information.getMain().getAd_switch() == 1) {
                this.avatar.setOnClickListener(new l());
            }
            RecomDatabean members_center_first = recomCentrebean.getMembers_center_first();
            this.vip_1 = members_center_first;
            if (members_center_first != null && members_center_first.getMain() != null && this.vip_1.getMain().getAd_switch() == 1) {
                this.vip_lay_1.setVisibility(0);
                com.join.android.app.common.utils.l.d(this.vip_icon_1, R.drawable.papa_vip, this.vip_1.getMain().getPic_remote());
                this.vip_1_txt.setText(this.vip_1.getMain().getTitle());
                this.vip_lay_1.setOnClickListener(new m());
            }
            RecomDatabean members_center_second = recomCentrebean.getMembers_center_second();
            this.vip_2 = members_center_second;
            if (members_center_second == null || members_center_second.getMain() == null || this.vip_2.getMain().getAd_switch() != 1) {
                return;
            }
            if (this.vip_lay_1.getVisibility() == 8) {
                this.vip_lay_2_line.setVisibility(8);
            } else {
                this.vip_lay_2_line.setVisibility(0);
            }
            this.vip_lay_2.setVisibility(0);
            com.join.android.app.common.utils.l.d(this.vip_icon_2, R.drawable.papa_vip, this.vip_2.getMain().getPic_remote());
            this.vip_2_txt.setText(this.vip_2.getMain().getTitle());
            this.vip_lay_2.setOnClickListener(new n());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void joystick() {
        IntentUtil.getInstance().goJoystickManager(this);
    }

    @Click
    void liveLayout() {
    }

    @Click
    void mBrass() {
        if (IntentUtil.getInstance().goLogin(this)) {
            return;
        }
        IntentUtil.getInstance().goFormDetial(this, "13162");
    }

    @Click
    void mGiftBox() {
    }

    @Click
    void mMessages() {
        IntentUtil.getInstance().goForumProfileMessageActivity(this);
    }

    @Click
    void mPosts() {
        IntentUtil.getInstance().goForumMyDynamicActivity(this);
    }

    @Click
    void myVoucher() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(3);
        intentDateBean.setJump_type(12);
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    @Background
    void newUpdate() {
        try {
            initUpdate(this.rpcClient.m(RequestBeanUtil.getInstance(this).personalCenter()).getMessages().getData().get(0));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void notifyLoginSuccess() {
        refreshViews();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.join.mgps.Util.g1.b("AccountCenterActivity", "method onResume() called.");
        refreshViews();
        com.join.mgps.Util.g1.b("AccountCenterActivity", "method refreshViews() called end.");
        touristLogin();
        com.join.mgps.Util.g1.b("AccountCenterActivity", "method touristLogin() called end.");
        this.accountBean = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        if (this.rpcClient == null) {
            this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        }
        if (this.rpcAccountClient == null) {
            this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        }
        if (this.mRpcPawalletClient == null) {
            this.mRpcPawalletClient = com.join.mgps.rpc.impl.n.i();
        }
        if (this.rpcForumClient == null) {
            this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        }
        com.join.mgps.Util.g1.b("AccountCenterActivity", "init rpc end.");
        updateVipItem();
        com.join.mgps.Util.g1.b("AccountCenterActivity", "method updateVipItem() called end.");
        checkUserInfo();
        com.join.mgps.Util.g1.b("AccountCenterActivity", "method checkUserInfo() called end.");
        pullMyProfileInfo();
        com.join.mgps.Util.g1.b("AccountCenterActivity", "method pullMyProfileInfo() called end.");
    }

    @Click
    void paCreditCenter() {
        if (IntentUtil.getInstance().goLogin(this)) {
            return;
        }
        IntentUtil.getInstance().goPAPayCenterActivity(this);
    }

    @Click
    void papaMore() {
        IntentUtil.getInstance().goMGSettingActivity(this);
    }

    @Background
    void pullMyProfileInfo() {
        ForumResponse<ForumData.ForumProfilePostsData> forumResponseH;
        ForumData.ForumProfilePostsData data;
        ForumBean.ForumProfilePostUserInfoBean user_info;
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                if (accountData == null || accountData.getUid() == 0 || (forumResponseH = this.rpcForumClient.h(accountData.getUid(), accountData.getToken(), 1, 0, "")) == null || (data = forumResponseH.getData()) == null || (user_info = data.getUser_info()) == null) {
                    return;
                }
                checkMessageInfoSuccess(user_info.getUnread_message());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void refreshViews() {
        EverdayLogin everdayLogin;
        RecomDatabean recomDatabean;
        this.avatar.setOnClickListener(null);
        this.userLogin.setOnClickListener(null);
        this.levelBadge.setVisibility(8);
        this.nickname.setText("未登录");
        this.avatar.setImageResource(R.drawable.unloginstatus);
        this.userisLogin.setVisibility(8);
        UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        this.accountBean = accountData;
        if (accountData.getIsAnchor() == 1) {
            this.liveLayout.setVisibility(0);
        } else {
            this.liveLayout.setVisibility(8);
        }
        UserInfo userInfo = this.accountBean;
        if (userInfo == null) {
            this.account.setVisibility(8);
            this.tourTip.setVisibility(8);
            this.vipText.setVisibility(8);
            this.svipText.setVisibility(8);
            RecomDatabean recomDatabean2 = this.personal_information;
            if (recomDatabean2 == null || recomDatabean2.getMain() == null || this.personal_information.getMain().getAd_switch() != 1) {
                this.avatar.setOnClickListener(new e());
            } else {
                this.avatar.setOnClickListener(new d());
            }
            this.userLogin.setOnClickListener(new f());
            this.nickname.setOnClickListener(new g());
            return;
        }
        if (userInfo.getLiveTotalCharm() != 0) {
            try {
                this.papaliveText.setText(com.join.mgps.Util.t2.a(this.accountBean.getLiveTotalCharm()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.tourTip.setVisibility(0);
        if (this.accountBean.getVipExpTime() < System.currentTimeMillis()) {
            this.vipText.setVipDataForUserCenter(this.accountBean.getVipLevel(), 0);
        }
        this.vipText.setVisibility(0);
        this.svipText.setVipDataForUserCenter(0, this.accountBean.getVipLevel(), true);
        this.svipText.setVisibility(0);
        String nickname = this.accountBean.getNickname();
        String avatarSrc = this.accountBean.getAvatarSrc();
        this.account.setText(this.accountBean.getAccount());
        this.nickname.setText(nickname);
        if (!UtilsMy.S3(this, this.nickname, this.accountBean.getVipLevel(), this.accountBean.getSVIPLevel())) {
            this.nickname.setTextColor(-1);
        }
        com.join.android.app.common.utils.l.u(this.avatar, avatarSrc);
        int level = this.accountBean.getLevel();
        if (level > 0) {
            com.join.mgps.Util.w.h(level, this.levelBadge);
            this.levelBadge.setText("LV." + level);
        }
        if (this.accountBean.getAccountType() == 2) {
            this.svipText.setVipDataForUserCenter(0, 0, true);
            this.vipText.setVipDataForUserCenter(0, 0);
            this.tourTip.setVisibility(0);
            this.vip_lay.setVisibility(8);
            this.account.setVisibility(8);
            this.userLogin.getHeight();
            this.topHeight = com.join.mgps.Util.i0.a(this, this.userBgHeight - 50);
            this.userisLogin.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(com.join.mgps.Util.i0.a(this, 67.0f), com.join.mgps.Util.i0.a(this, 67.0f));
            layoutParams.addRule(13);
            layoutParams.topMargin = 0;
            this.userIconBg.setLayoutParams(layoutParams);
            this.avatar.setLayoutParams(layoutParams);
        } else {
            this.account.setVisibility(0);
            this.tourTip.setVisibility(8);
            this.vip_lay.setVisibility(0);
            this.userLogin.getHeight();
            this.topHeight = com.join.mgps.Util.i0.a(this, this.userBgHeight - 50);
            this.userisLogin.setVisibility(0);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(com.join.mgps.Util.i0.a(this, 67.0f), com.join.mgps.Util.i0.a(this, 67.0f));
            layoutParams2.addRule(13);
            layoutParams2.topMargin = 0;
            this.userIconBg.setLayoutParams(layoutParams2);
            this.avatar.setLayoutParams(layoutParams2);
        }
        if (this.accountBean.getPapaMoney() != 0 && !this.isShowPabiIntent && ((recomDatabean = this.copper) == null || recomDatabean.getMain() == null || this.copper.getMain().getAd_switch() != 1)) {
            this.papaBrasss.setVisibility(this.accountBean.getPapaMoney() != 0 ? 0 : 8);
            this.papaBrasss.setText(this.accountBean.getPapaMoney() + "");
        }
        RecomDatabean recomDatabean3 = this.personal_information;
        if (recomDatabean3 == null || recomDatabean3.getMain() == null || this.personal_information.getMain().getAd_switch() != 1) {
            this.avatar.setOnClickListener(new a());
        } else {
            this.avatar.setOnClickListener(new p());
        }
        com.join.mgps.Util.r0.W0(this.vipText);
        this.userLogin.setOnClickListener(new b());
        this.nickname.setOnClickListener(new c());
        String strJ = com.join.mgps.pref.h.n(this).j();
        if (!com.join.mgps.Util.t2.i(strJ) || (everdayLogin = (EverdayLogin) JsonMapper.getInstance().fromJson(strJ, EverdayLogin.class)) == null) {
            return;
        }
        com.join.android.app.common.utils.i.h(everdayLogin.getHasGetGiftTime());
    }

    @UiThread
    void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    @UiThread
    void showPabiIntent() {
        this.isShowPabiIntent = true;
        this.brass_title.setText(this.databean.getMain().getSub_title());
        com.join.android.app.common.utils.l.h(this.img_brass, this.databean.getMain().getPic_remote());
        this.papaBrasss.setVisibility(8);
        this.mBrass.setOnClickListener(new o());
    }

    @Click
    void signIn() {
        IntentUtil.getInstance().goForumProfileFavoritesActivity(this);
    }

    @UiThread
    void tokenFailure() {
        if (this.isShowTokenFail) {
            return;
        }
        this.isShowTokenFail = true;
        showMessage(getString(R.string.pay_token_fail));
        AccountUtil_.getInstance_(getApplicationContext()).accountLoginOut(this);
        touristLogin();
    }

    @Click
    void tools() {
        IntentUtil.getInstance().goShareWebActivity(this, com.join.mgps.rpc.h.f72397x + "/Auxiliary_tool");
    }

    @Background
    void touristLogin() {
        if (!com.join.android.app.common.utils.m.j(this) || isLogined(this)) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(getApplicationContext()).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(this.prefDef.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.k2.g(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = this.rpcAccountClient.I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI == null || accountResultMainBeanI.getError() != 0) {
                return;
            }
            if (!accountResultMainBeanI.getData().is_success()) {
                error(accountResultMainBeanI.getData().getError_msg());
                return;
            }
            AccountBean user_info = accountResultMainBeanI.getData().getUser_info();
            if (user_info != null) {
                AccountUtil_.getInstance_(getApplicationContext()).saveAccountData(g8.a.a(user_info), getApplicationContext());
            }
            notifyLoginSuccess();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {p5.a.B})
    public void updateInfo(Context context) {
        refreshViews();
        touristLogin();
        this.accountBean = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
        if (this.rpcClient == null) {
            this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        }
        if (this.rpcAccountClient == null) {
            this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        }
        if (this.rpcAccountClientV2 == null) {
            this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
        }
        if (this.mRpcPawalletClient == null) {
            this.mRpcPawalletClient = com.join.mgps.rpc.impl.n.i();
        }
        if (this.rpcForumClient == null) {
            this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        }
        updateVipItem();
        pullMyProfileInfo();
    }

    void updateVipItem() {
        UserInfo userInfo = this.accountBean;
        if (userInfo != null) {
            this.vipItem.setVipData(userInfo.getVipLevel(), this.accountBean.getSVIPLevel());
        }
        UserInfo userInfo2 = this.accountBean;
        if (userInfo2 == null || !com.join.mgps.Util.b.piv(userInfo2)) {
            this.vipMessage.setVisibility(0);
            RecomDatabean recomDatabean = this.vip;
            if (recomDatabean == null || recomDatabean.getMain() == null) {
                this.vipMessage.setText("开通VIP，成为悟饭特权派");
            } else {
                this.vipMessage.setText(this.vip.getMain().getSub_title());
            }
            this.vipMessage.setTextColor(getResources().getColor(R.color.vip_color));
        } else {
            long vipExpTime = this.accountBean.getVipExpTime();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j10 = (vipExpTime - jCurrentTimeMillis) / 86400000;
            if (vipExpTime <= jCurrentTimeMillis || j10 > 7) {
                this.vipMessage.setVisibility(8);
            } else {
                this.vipMessage.setText(com.join.mgps.Util.e0.s(vipExpTime) + "到期");
            }
        }
        this.paVip.setOnClickListener(new h());
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(getApplicationContext()).isTourist();
    }
}
