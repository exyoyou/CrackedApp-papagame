package com.join.mgps.activity.login;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.internal.view.SupportMenu;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.MApplication;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.drawable.o;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.k2;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.w;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.adapter.m8;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.JumpInfoBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.dto.UserCenterItemBean;
import com.join.mgps.event.r;
import com.join.mgps.event.y;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.h;
import com.join.mgps.rpc.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.t;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import q.rorbin.badgeview.QBadgeView;

/* JADX INFO: loaded from: classes9.dex */
@EFragment(R.layout.fragment_usercenter_new)
public class UsercenterFragmentNew extends Fragment {
    private UserInfo accountBean;

    @ViewById
    TextView detail;
    List<DownloadTask> downloadTasks;

    @ViewById
    CustomerDownloadView downloadView1;

    @ViewById
    CustomerDownloadView downloadView2;

    @ViewById
    SimpleDraweeView everdayGiftIcon;

    @ViewById
    LinearLayout everdayGiftLayout;

    @ViewById
    TextView everdayGiftText;

    @ViewById
    SimpleDraweeView fingerIcon;

    @ViewById
    LinearLayout fingerLayout;

    @ViewById
    TextView fingerText;

    @ViewById
    ImageView iv_arrow;

    @ViewById
    SimpleDraweeView iv_user_avatar;

    @ViewById
    SimpleDraweeView iv_user_avatar2;

    @ViewById
    ImageView iv_user_vip;
    private long lastClickLoginTime;

    @ViewById
    TextView ll_copperTitle;

    @ViewById
    View ll_membersNew;

    @ViewById
    ConstraintLayout ll_svip;

    @ViewById
    LinearLayout ll_userinfo;
    private Activity mActivity;
    m8 mAdapter;
    m8 mAdapter2;
    m8 mAdapter3;

    @ViewById
    RecyclerView mGridView;

    @ViewById
    RecyclerView mGridView2;

    @ViewById
    RecyclerView mGridView3;
    com.join.mgps.rpc.e mRpcClient;
    private q.rorbin.badgeview.a messagebadge1;

    @ViewById
    View modNotVipView;

    @ViewById
    TextView onekeyMessage;

    @ViewById
    TextView onekeyTitle;

    @ViewById
    SimpleDraweeView onkeyIcon;

    @ViewById
    LinearLayout onkeyLayout;

    @ViewById
    TextView onkeyText;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    RelativeLayout rl_members;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.c rpcAccountClientV2;
    i rpcForumClient;

    @ViewById
    NestedScrollView scroolView;

    @ViewById
    View statubar;

    @ViewById
    TextView svipTitle;

    @ViewById
    View test;

    @ViewById
    View titleLayout;

    @ViewById
    TextView tv_user_account;

    @ViewById
    TextView tv_user_coppers;

    @ViewById
    TextView tv_user_member;

    @ViewById
    TextView tv_user_nickname;

    @ViewById
    TextView tv_user_rank;

    @ViewById
    TextView tv_user_svip;

    @ViewById
    View userLayout;

    @ViewById
    SimpleDraweeView vipModIcon;

    @ViewById
    LinearLayout vipModLayout;

    @ViewById
    TextView vipModText;

    @ViewById
    TextView vipTime;
    View view = null;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    UserCenterBean userCenterBeans = new UserCenterBean();
    boolean isGetViewConfigs = false;
    private List<UserCenterBean.UserCenterItem> mUserCenterDatas = Collections.synchronizedList(new ArrayList());
    private List<UserCenterBean.UserCenterItem> mUserCenterDatas2 = Collections.synchronizedList(new ArrayList());
    private List<UserCenterBean.UserCenterItem> mUserCenterDatas3 = Collections.synchronizedList(new ArrayList());
    volatile boolean isGetingUserInfo = false;
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();

    private void addDivider(List<UserCenterBean.UserCenterItem> datas) {
        datas.add(createItem());
        datas.add(createItem());
        datas.add(createItem());
    }

    private boolean isLogined(Context context) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        return accountData != null && t2.i(accountData.getToken());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$0() {
        updateDownloadView();
        return null;
    }

    private void setCardData(final UserCenterBean.UserCenterItem item, final View layout, SimpleDraweeView imageview, TextView textView) {
        layout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.11
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (item.getSub() == null || item.getSub().size() <= 0) {
                    return;
                }
                IntentUtil.getInstance().intentActivity(layout.getContext(), item.getSub().get(0).getIntentDataBean());
            }
        });
        UserCenterItemBean main = item.getMain();
        if (main != null) {
            l.h(imageview, main.getPic_remote());
            textView.setText(main.getSub_title());
        }
    }

    private void setListener(m8 adapter, final List<UserCenterBean.UserCenterItem> mUserCenterDatas) {
        adapter.setOnItemClickListener(new BaseQuickAdapter.d<UserCenterBean.UserCenterItem>() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.2
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public void onClick(BaseQuickAdapter<UserCenterBean.UserCenterItem, ?> adapter1, View view, int position) {
                synchronized (mUserCenterDatas) {
                    if (mUserCenterDatas.size() <= 0) {
                        return;
                    }
                    try {
                        UserCenterBean.UserCenterItem userCenterItem = (UserCenterBean.UserCenterItem) mUserCenterDatas.get(position);
                        JumpInfoBean jumpInfoBean = userCenterItem.getSub().get(0);
                        int i10 = Integer.parseInt(jumpInfoBean.getJump_type());
                        int i11 = Integer.parseInt(jumpInfoBean.getLink_type());
                        if (userCenterItem.getMain() != null && userCenterItem.getMain().getLabel() != null) {
                            UsercenterFragmentNew.this.changeMgState(userCenterItem.getMain().getLabel(), i10);
                        }
                        if (userCenterItem.getExtBean() != null) {
                            t.l(UsercenterFragmentNew.this.requireContext()).R1(Event.commonClick, userCenterItem.getExtBean().buildScene().toExt());
                        }
                        if (i11 != 3) {
                            UsercenterFragmentNew.this.gotoTargetActivity(jumpInfoBean, i11);
                        } else if (i10 != 29) {
                            switch (i10) {
                                case 15:
                                    MApplication.T = 0;
                                    UsercenterFragmentNew.this.hideRedPoint();
                                    IntentUtil.getInstance().goForumProfileMessageActivity(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 16:
                                    IntentUtil.getInstance().goForumMyDynamicActivity(UsercenterFragmentNew.this.getActivity());
                                    break;
                                case 17:
                                    IntentUtil.getInstance().goForumAndPrfileActivity(0, UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 18:
                                    UsercenterFragmentNew usercenterFragmentNew = UsercenterFragmentNew.this;
                                    usercenterFragmentNew.accountBean = AccountUtil_.getInstance_(usercenterFragmentNew.mActivity).getAccountData();
                                    if (!UsercenterFragmentNew.this.goLogin()) {
                                        IntentUtil.getInstance().goPAPayCenterActivity(UsercenterFragmentNew.this.mActivity);
                                    }
                                    break;
                                case 19:
                                    if (!UsercenterFragmentNew.this.goLogin()) {
                                        IntentUtil.getInstance().goShareWebActivity(UsercenterFragmentNew.this.mActivity, h.f72349j + "/static/vip2020/v2/index.html#/giftCenter");
                                    }
                                    break;
                                case 20:
                                    UsercenterFragmentNew usercenterFragmentNew2 = UsercenterFragmentNew.this;
                                    usercenterFragmentNew2.accountBean = AccountUtil_.getInstance_(usercenterFragmentNew2.mActivity).getAccountData();
                                    if (!UsercenterFragmentNew.this.goLogin()) {
                                        VoucherCodesBoxActivity_.intent(UsercenterFragmentNew.this.mActivity).b(1).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                                    }
                                    break;
                                case 21:
                                    IntentUtil.getInstance().goFaceTransferHomePageActivity(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 22:
                                    IntentUtil.getInstance().goJoystickManager(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 23:
                                    IntentUtil.getInstance().goShareWebActivity(UsercenterFragmentNew.this.mActivity, h.f72397x + "/Auxiliary_tool");
                                    break;
                                case 24:
                                    IntentUtil.getInstance().goDownloadSettingActivity(UsercenterFragmentNew.this.mActivity);
                                    break;
                                case 25:
                                    IntentUtil.getInstance().goFeedback(UsercenterFragmentNew.this.mActivity);
                                    break;
                                default:
                                    switch (i10) {
                                        case 47:
                                            if (!UsercenterFragmentNew.this.goLogin()) {
                                                IntentUtil.getInstance().goMYAccountDetialActivity(UsercenterFragmentNew.this.mActivity);
                                            }
                                            break;
                                        case 48:
                                            IntentDateBean intentDateBean = new IntentDateBean();
                                            intentDateBean.setLink_type(4);
                                            intentDateBean.setLink_type_val(h.f72382s);
                                            ShareWebActivity_.intent(UsercenterFragmentNew.this.mActivity).b(intentDateBean).start();
                                            break;
                                        case 49:
                                            IntentUtil.getInstance().goSvip(UsercenterFragmentNew.this.mActivity);
                                            break;
                                        case 50:
                                            IntentUtil.getInstance().goMGSettingActivity(UsercenterFragmentNew.this.mActivity);
                                            break;
                                        case 51:
                                            w.i(UsercenterFragmentNew.this.mActivity);
                                            break;
                                        default:
                                            UsercenterFragmentNew.this.gotoTargetActivity(jumpInfoBean, i11);
                                            break;
                                    }
                                    break;
                            }
                        } else {
                            IntentUtil.getInstance().goDownloadSettingActivity(UsercenterFragmentNew.this.mActivity);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        });
    }

    private void showRedPoint(View view) {
        MessageRedPointBean.MessagesBean.DataBean dataBean;
        int community_praise_surplus_number;
        if (view == null || (dataBean = MApplication.P) == null || (community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.P.getCommunity_surplus_number() + MApplication.P.getNotice_surplus_number() + MApplication.P.getPraise_surplus_number() + MApplication.P.getReplay_surplus_number()) <= 0) {
            return;
        }
        try {
            Thread.sleep(200L);
            if (this.messagebadge1 == null) {
                this.messagebadge1 = new QBadgeView(this.mActivity).n(view).g(community_praise_surplus_number).d(SupportMenu.CATEGORY_MASK).w(getResources().getDimensionPixelSize(R.dimen.wdp12), false).u(8388693).s(-1);
            }
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    private void testAddCommentSelf(List<UserCenterBean.UserCenterItem> firstGroups) {
    }

    private void updateViewH(List<UserCenterBean.UserCenterItem> mUserCenterDatas, RecyclerView gridView) {
    }

    @AfterViews
    void afterViews() {
        org.greenrobot.eventbus.c.f().v(this);
        List<DownloadTask> listD = q5.f.M().d();
        this.downloadTasks = listD;
        if (listD != null && listD.size() > 0) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.statubar.getLayoutParams();
        layoutParams.height = q.v(getContext());
        this.statubar.setLayoutParams(layoutParams);
        getDownloadTaskInfo();
        this.mRpcClient = com.join.mgps.rpc.impl.d.O1();
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        UserCenterBean userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.prefDef.userCenterViewConfigsv2().d(), UserCenterBean.class);
        this.userCenterBeans = userCenterBean;
        if (userCenterBean != null) {
            this.mUserCenterDatas.clear();
            this.mUserCenterDatas2.clear();
            this.mUserCenterDatas3.clear();
            this.mUserCenterDatas.addAll(wrapDatas(this.userCenterBeans, 0));
            this.mUserCenterDatas2.addAll(wrapDatas(this.userCenterBeans, 1));
            this.mUserCenterDatas3.addAll(wrapDatas(this.userCenterBeans, 2));
        }
        this.scroolView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.1
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            public void onScrollChange(NestedScrollView nestedScrollView, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                Rect rect = new Rect();
                UsercenterFragmentNew.this.scroolView.getHitRect(rect);
                if (UsercenterFragmentNew.this.userLayout.getLocalVisibleRect(rect) && UsercenterFragmentNew.this.titleLayout.getVisibility() == 0) {
                    UsercenterFragmentNew.this.titleLayout.setVisibility(8);
                    UsercenterFragmentNew.this.titleLayout.startAnimation(AnimationUtils.loadAnimation(UsercenterFragmentNew.this.mActivity, R.anim.out_translate_top));
                } else {
                    if (UsercenterFragmentNew.this.userLayout.getLocalVisibleRect(rect) || UsercenterFragmentNew.this.titleLayout.getVisibility() != 8) {
                        return;
                    }
                    UsercenterFragmentNew.this.titleLayout.setVisibility(0);
                    UsercenterFragmentNew.this.titleLayout.startAnimation(AnimationUtils.loadAnimation(UsercenterFragmentNew.this.mActivity, R.anim.in_translate_top));
                }
            }
        });
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 5);
        GridLayoutManager gridLayoutManager2 = new GridLayoutManager(getContext(), 5);
        GridLayoutManager gridLayoutManager3 = new GridLayoutManager(getContext(), 5);
        this.mGridView.setLayoutManager(gridLayoutManager);
        this.mGridView2.setLayoutManager(gridLayoutManager2);
        this.mGridView3.setLayoutManager(gridLayoutManager3);
        this.mGridView.setNestedScrollingEnabled(false);
        this.mGridView2.setNestedScrollingEnabled(false);
        this.mGridView3.setNestedScrollingEnabled(false);
        this.mAdapter = new m8(this.mUserCenterDatas);
        this.mAdapter2 = new m8(this.mUserCenterDatas2);
        this.mAdapter3 = new m8(this.mUserCenterDatas3);
        this.mGridView.setAdapter(this.mAdapter);
        this.mGridView2.setAdapter(this.mAdapter2);
        this.mGridView3.setAdapter(this.mAdapter3);
        setListener(this.mAdapter, this.mUserCenterDatas);
        setListener(this.mAdapter2, this.mUserCenterDatas2);
        setListener(this.mAdapter3, this.mUserCenterDatas3);
        this.mAdapter.notifyDataSetChanged();
        pullMyProfileInfo();
        showNotifUi();
        if (com.join.android.app.common.http.c.f34547c) {
            this.test.setVisibility(0);
        } else {
            this.test.setVisibility(8);
        }
    }

    void calculateVIPExpTime() {
        try {
            long vipExpTime = this.accountBean.getVipExpTime() * 1000;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j10 = (vipExpTime - jCurrentTimeMillis) / 86400000;
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.tv_user_member.getLayoutParams();
            if (vipExpTime > jCurrentTimeMillis) {
                this.tv_user_member.setLayoutParams(layoutParams);
                int i10 = 0;
                this.iv_user_vip.setVisibility(0);
                String str = "有效期至" + e0.s(vipExpTime);
                try {
                    i10 = Integer.parseInt(e0.w(vipExpTime));
                } catch (Exception unused) {
                }
                if (j10 <= 30) {
                    this.tv_user_member.setText(Html.fromHtml(str + "\n<font color=#FFFFFF>剩余" + j10 + "天</font>"));
                } else if (i10 > 2037) {
                    this.tv_user_member.setText("有效期至2099-05-12");
                } else {
                    this.tv_user_member.setText(str);
                }
            } else {
                this.tv_user_member.setLayoutParams(layoutParams);
                this.iv_user_vip.setVisibility(8);
                this.tv_user_member.setText("去开通");
                this.rl_members.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.9
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        IntentUtil.getInstance().goVip(UsercenterFragmentNew.this.mActivity);
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.put(crc_link_type_val, task);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                return;
            }
            this.downloadingMap.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.remove(crc_link_type_val);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.put(crc_link_type_val, task);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    return;
                }
                this.downloadingMap.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
            this.downloadedMap.remove(crc_link_type_val);
        }
        if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void changeMgState(String content, int tag_id) {
        if (m.j(this.mActivity)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
                this.accountBean = accountData;
                if (accountData != null && isOfficialAccount()) {
                    if (this.mRpcClient.C(RequestBeanUtil.getInstance(this.mActivity).getRequestMsgState(this.accountBean.getUid(), content, tag_id)).getMessages().getData().get(0).isVal()) {
                        g1.b("UserCenter", "changeMgState success");
                    } else {
                        g1.b("UserCenter", "changeMgState failure");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    UserCenterBean.UserCenterItem createItem() {
        UserCenterBean.UserCenterItem userCenterItem = new UserCenterBean.UserCenterItem();
        userCenterItem.setEmpty(true);
        return userCenterItem;
    }

    @Click
    void detail() {
        UserCenterBean userCenterBean = this.userCenterBeans;
        if (userCenterBean == null) {
            return;
        }
        UserCenterBean.UserCenterItem detail_entrance = userCenterBean.getDetail_entrance();
        if (detail_entrance != null) {
            IntentUtil.getInstance().intentActivity(this.mActivity, detail_entrance.getSub().get(0).getIntentDataBean());
            return;
        }
        if (!com.join.mgps.Util.b.piv(this.accountBean)) {
            IntentUtil.getInstance().goVip(this.mActivity);
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(3);
        intentDateBean.setJump_type(56);
        IntentUtil.getInstance().intentActivity(this.mActivity, intentDateBean);
    }

    @Click
    void downloadView1() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.mActivity);
    }

    @Click
    void downloadView2() {
        IntentUtil.getInstance().goMyGameManagerActivity(this.mActivity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getDownloadTaskInfo() {
        List<DownloadTask> listR = q5.f.M().r();
        List<DownloadTask> listQ = q5.f.M().q();
        if (listQ != null && listQ.size() > 0) {
            for (DownloadTask downloadTask : listQ) {
                this.downloadedMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
            }
        }
        if (listR != null && listR.size() > 0) {
            for (DownloadTask downloadTask2 : listR) {
                this.downloadingMap.put(downloadTask2.getCrc_link_type_val(), downloadTask2);
            }
        }
        updateDownloadView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getUserInfo() {
        if (this.isGetingUserInfo) {
            return;
        }
        this.isGetingUserInfo = true;
        this.accountBean = AccountUtil_.getInstance_(this.mActivity).getAccountData();
        if (!m.j(this.mActivity)) {
            this.isGetingUserInfo = false;
            loadViewConfigsFromLocal();
            return;
        }
        UserInfo userInfo = this.accountBean;
        if (userInfo == null || TextUtils.isEmpty(userInfo.getToken())) {
            touristLogin();
            return;
        }
        try {
            MessageUserInfoRequest.RequestParameters.b bVarNewBuilder = MessageUserInfoRequest.RequestParameters.newBuilder();
            bVarNewBuilder.setUid(this.accountBean.getUid());
            bVarNewBuilder.setToken(this.accountBean.getToken());
            bVarNewBuilder.setAppVersion(g8.b.a(getContext()));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(k2.d(map));
            ResponseResult responseResultA = this.rpcAccountClientV2.A(bVarNewBuilder.build());
            if (responseResultA == null) {
                this.isGetingUserInfo = false;
                getViewConfigs();
                return;
            }
            if (responseResultA.getError() != 200) {
                if (responseResultA.getError() == 701) {
                    tokenFailure();
                    return;
                } else {
                    this.isGetingUserInfo = false;
                    getViewConfigs();
                    return;
                }
            }
            UserInfo data = responseResultA.getData();
            if (data != null && data.getUid() != 0) {
                this.accountBean = data.toBuilder().build();
                AccountUtil_.getInstance_(this.mActivity).saveAccountData(this.accountBean, this.mActivity);
            }
            UtilsMy.a3(this.mActivity);
            this.isGetingUserInfo = false;
            refreshViews();
            getViewConfigs();
        } catch (Exception e10) {
            this.isGetingUserInfo = false;
            getViewConfigs();
            e10.printStackTrace();
        }
    }

    void getViewConfigs() {
        Activity activity;
        if (!m.j(this.mActivity)) {
            loadViewConfigsFromLocal();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
            this.accountBean = accountData;
            if (accountData == null || (activity = this.mActivity) == null || this.isGetViewConfigs) {
                return;
            }
            int i10 = 1;
            this.isGetViewConfigs = true;
            RequestModel<RequestUserCenterArgs> requestModel = new RequestModel<>(activity);
            int uid = this.accountBean.getUid();
            String token = this.accountBean.getToken();
            if (!com.join.mgps.Util.b.piv(this.accountBean)) {
                i10 = 0;
            }
            requestModel.setArgs(new RequestUserCenterArgs(uid, token, i10));
            ResponseModel<UserCenterBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().a1(requestModel).execute().body();
            if (responseModelBody == null || responseModelBody.getCode() != 600) {
                loadViewConfigsFromLocal();
            } else {
                this.prefDef.userCenterViewConfigsv2().g(JsonMapper.toJsonString(responseModelBody.getData()));
                loadViewConfigsFromLocal();
            }
            this.isGetViewConfigs = false;
        } catch (Exception e10) {
            this.isGetViewConfigs = false;
            e10.printStackTrace();
            loadViewConfigsFromLocal();
        }
    }

    boolean goLogin() {
        if (System.currentTimeMillis() - this.lastClickLoginTime < 1000) {
            return true;
        }
        this.lastClickLoginTime = System.currentTimeMillis();
        return IntentUtil.getInstance().goLogin(getContext());
    }

    void gotoTargetActivity(JumpInfoBean jumpInfoBean, int linkType) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(jumpInfoBean.getTpl_type());
        intentDateBean.setLink_type(linkType);
        intentDateBean.setJump_type(Integer.parseInt(jumpInfoBean.getJump_type()));
        intentDateBean.setCrc_link_type_val(jumpInfoBean.getCrc_link_type_val());
        intentDateBean.setLink_type_val(jumpInfoBean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.mActivity, intentDateBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideRedPoint() {
        q.rorbin.badgeview.a aVar = this.messagebadge1;
        if (aVar != null) {
            aVar.hide(false);
        }
        MApplication.T = 0;
    }

    boolean isActivityFinish() {
        Activity activity = this.mActivity;
        if (activity != null) {
            return activity.isFinishing() || this.mActivity.isDestroyed();
        }
        return false;
    }

    boolean isOfficialAccount() {
        if (AccountUtil_.getInstance_(this.mActivity).getAccountData() == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.mActivity).isTourist();
    }

    @Click
    void ll_copper() {
        if (this.userCenterBeans == null) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        List<UserCenterBean.TitleItemBean> member_func = this.userCenterBeans.getMember_func();
        if (member_func != null && member_func.size() > 0) {
            intentDateBean.setLink_type_val(member_func.get(0).getJumpUrl());
        }
        ShareWebActivity_.intent(this).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void loadViewConfigsFromLocal() {
        UserCenterBean.TitleItemBean join_member;
        int i10;
        try {
            UserCenterBean userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.prefDef.userCenterViewConfigsv2().d(), UserCenterBean.class);
            this.userCenterBeans = userCenterBean;
            if (userCenterBean != null && this.mActivity != null) {
                synchronized (this.mUserCenterDatas) {
                    this.mUserCenterDatas.clear();
                    this.mUserCenterDatas2.clear();
                    this.mUserCenterDatas3.clear();
                    this.mUserCenterDatas.addAll(wrapDatas(this.userCenterBeans, 0));
                    this.mUserCenterDatas2.addAll(wrapDatas(this.userCenterBeans, 1));
                    this.mUserCenterDatas3.addAll(wrapDatas(this.userCenterBeans, 2));
                    updateViewH(this.mUserCenterDatas, this.mGridView);
                    updateViewH(this.mUserCenterDatas2, this.mGridView2);
                    updateViewH(this.mUserCenterDatas3, this.mGridView3);
                    this.mAdapter.notifyDataSetChanged();
                    this.mAdapter2.notifyDataSetChanged();
                    this.mAdapter3.notifyDataSetChanged();
                    for (UserCenterBean.UserCenterItem userCenterItem : this.mUserCenterDatas2) {
                        if (userCenterItem != null && !userCenterItem.isPlaceHolder() && userCenterItem.getMain() != null) {
                            userCenterItem.setExtBean(new ExtBean().setFirstModule(EventP.FirstModel.home.name()).setSecondModule(EventP.SecondModel.meTab.name()).setSopName(userCenterItem.getMain().getSub_title()));
                            if (!userCenterItem.getExtBean().hasExplore()) {
                                t.l(requireContext()).R1(Event.commonExp, userCenterItem.getExtBean().buildScene().toExt());
                                userCenterItem.getExtBean().setHasExplore(true);
                            }
                        }
                    }
                    UserCenterBean userCenterBean2 = this.userCenterBeans;
                    if (userCenterBean2 != null) {
                        List<UserCenterBean.TitleItemBean> member_func = userCenterBean2.getMember_func();
                        if (member_func != null) {
                            if (member_func.size() >= 0) {
                                UserCenterBean.TitleItemBean titleItemBean = member_func.get(0);
                                this.ll_copperTitle.setText(titleItemBean.getTitle());
                                this.tv_user_coppers.setText(titleItemBean.getSubTitle());
                            }
                            if (member_func.size() >= 1) {
                                UserCenterBean.TitleItemBean titleItemBean2 = member_func.get(1);
                                this.onekeyTitle.setText(titleItemBean2.getTitle());
                                this.onekeyMessage.setText(titleItemBean2.getSubTitle());
                            }
                            if (member_func.size() >= 2) {
                                UserCenterBean.TitleItemBean titleItemBean3 = member_func.get(2);
                                this.svipTitle.setText(titleItemBean3.getTitle());
                                this.tv_user_svip.setText(titleItemBean3.getSubTitle());
                            }
                        }
                        UserInfo accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
                        this.accountBean = accountData;
                        if (com.join.mgps.Util.b.piv(accountData)) {
                            this.modNotVipView.setVisibility(8);
                            this.rl_members.setVisibility(8);
                            this.ll_membersNew.setVisibility(0);
                            if (com.join.mgps.Util.b.piv(this.accountBean)) {
                                long vipExpTime = this.accountBean.getVipExpTime() * 1000;
                                long jCurrentTimeMillis = (vipExpTime - System.currentTimeMillis()) / 86400000;
                                try {
                                    i10 = Integer.parseInt(e0.w(vipExpTime));
                                } catch (Exception unused) {
                                    i10 = 0;
                                }
                                if (jCurrentTimeMillis <= 30) {
                                    this.vipTime.setText("会员剩余：" + jCurrentTimeMillis + "天");
                                } else if (i10 >= 2037) {
                                    this.vipTime.setText("终生会员");
                                } else {
                                    this.vipTime.setText("会员剩余：" + jCurrentTimeMillis + "天");
                                }
                                this.detail.setText("详情");
                            } else {
                                this.detail.setText("开通会员");
                                UserCenterBean userCenterBean3 = this.userCenterBeans;
                                if (userCenterBean3 != null && (join_member = userCenterBean3.getJoin_member()) != null) {
                                    this.tv_user_member.setText(join_member.getSubTitle());
                                    this.vipTime.setText(join_member.getSubTitle());
                                }
                            }
                            this.ll_membersNew.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.10
                                @Override // android.view.View.OnClickListener
                                public void onClick(View v10) {
                                    UsercenterFragmentNew.this.detail();
                                }
                            });
                            List<UserCenterBean.UserCenterItem> module_entrance_list = this.userCenterBeans.getModule_entrance_list();
                            if (module_entrance_list != null && module_entrance_list.size() > 0) {
                                setCardData(module_entrance_list.get(0), this.vipModLayout, this.vipModIcon, this.vipModText);
                                if (module_entrance_list.size() > 1) {
                                    setCardData(module_entrance_list.get(1), this.fingerLayout, this.fingerIcon, this.fingerText);
                                }
                                if (module_entrance_list.size() > 2) {
                                    setCardData(module_entrance_list.get(2), this.onkeyLayout, this.onkeyIcon, this.onkeyText);
                                }
                                if (module_entrance_list.size() > 3) {
                                    setCardData(module_entrance_list.get(3), this.everdayGiftLayout, this.everdayGiftIcon, this.everdayGiftText);
                                }
                            }
                        } else {
                            this.modNotVipView.setVisibility(0);
                            UserCenterBean.TitleItemBean join_member2 = this.userCenterBeans.getJoin_member();
                            if (join_member2 != null) {
                                this.tv_user_member.setText(join_member2.getSubTitle());
                                this.rl_members.setVisibility(0);
                                this.ll_membersNew.setVisibility(8);
                            }
                        }
                    }
                    pullMyProfileInfo();
                }
                showNotifUi();
            }
        } catch (Exception e10) {
            g1.b("UserCenter", "loadViewConfigsFromLocal exception:" + e10.getMessage());
        }
    }

    @Receiver(actions = {p5.a.f96217r})
    public void loginOut(Context context) {
        if (AccountUtil_.getInstance_(context).getAccountData() == null) {
            touristLogin();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mActivity = (Activity) context;
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        this.rpcAccountClientV2 = com.join.mgps.rpc.impl.b.C();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        this.mActivity = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(y jPushNotifEvent) {
        if (((MGMainActivity) getActivity()).getPositionNum() == 1) {
            pullMyProfileInfo();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        refreshUserCenter();
        MessageRedPointBean.MessagesBean.DataBean dataBean = MApplication.P;
        if (dataBean != null) {
            int community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.P.getCommunity_surplus_number() + MApplication.P.getNotice_surplus_number() + MApplication.P.getPraise_surplus_number() + MApplication.P.getReplay_surplus_number();
            MApplication.T = community_praise_surplus_number;
            if (community_praise_surplus_number == 0) {
                hideRedPoint();
            } else {
                showNotifUi();
            }
        }
        updateDownloadView();
    }

    @Click
    void onekey() {
        if (this.userCenterBeans == null) {
            return;
        }
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        List<UserCenterBean.TitleItemBean> member_func = this.userCenterBeans.getMember_func();
        if (member_func != null && member_func.size() > 1) {
            intentDateBean.setLink_type_val(member_func.get(1).getJumpUrl());
        }
        ShareWebActivity_.intent(this.mActivity).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void pullMyProfileInfo() {
        ForumResponse<ForumData.ForumProfilePostsData> forumResponseH;
        ForumData.ForumProfilePostsData data;
        ForumBean.ForumProfilePostUserInfoBean user_info;
        if (m.j(this.mActivity)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
                if (accountData == null || accountData.getUid() == 0 || (forumResponseH = this.rpcForumClient.h(accountData.getUid(), accountData.getToken(), 1, 0, "")) == null || (data = forumResponseH.getData()) == null || (user_info = data.getUser_info()) == null) {
                    return;
                }
                updateAdapterByNewMsgCount(user_info.getUnread_message());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void refreshUserCenter() {
        if (this.mActivity == null) {
            return;
        }
        refreshViews();
        if (this.isGetingUserInfo) {
            return;
        }
        getUserInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshViews() {
        List<UserCenterBean.TitleItemBean> member_func;
        UserCenterBean.TitleItemBean join_member;
        try {
            Activity activity = this.mActivity;
            if (activity == null) {
                return;
            }
            this.accountBean = AccountUtil_.getInstance_(activity).getAccountData();
            this.tv_user_nickname.setText("未登录");
            this.iv_user_avatar.getHierarchy().z(new o(Color.parseColor("#99BDC9")));
            this.iv_user_avatar.setImageResource(R.drawable.unloginstatus);
            this.tv_user_account.setText("");
            this.tv_user_coppers.setText("--");
            this.tv_user_member.setText("--");
            this.tv_user_svip.setText("---");
            this.tv_user_rank.setText("");
            this.tv_user_rank.setVisibility(8);
            this.rl_members.setOnClickListener(null);
            this.ll_svip.setOnClickListener(null);
            UserInfo userInfo = this.accountBean;
            if (userInfo != null) {
                this.tv_user_nickname.setText(userInfo.getNickname());
                l.u(this.iv_user_avatar, this.accountBean.getAvatarSrc());
                l.u(this.iv_user_avatar2, this.accountBean.getAvatarSrc());
                if (com.join.mgps.Util.b.piv(this.accountBean)) {
                    calculateVIPExpTime();
                } else {
                    UserCenterBean userCenterBean = this.userCenterBeans;
                    if (userCenterBean != null && (join_member = userCenterBean.getJoin_member()) != null) {
                        this.tv_user_member.setText(join_member.getSubTitle());
                        this.vipTime.setText(join_member.getSubTitle());
                    }
                    this.iv_user_vip.setVisibility(8);
                }
                if (com.join.mgps.Util.b.piv(this.accountBean) && this.accountBean.getMemberTitle() != null && !TextUtils.isEmpty(this.accountBean.getMemberTitle().getBattleTitle())) {
                    this.tv_user_rank.setVisibility(0);
                    this.tv_user_rank.setText(this.accountBean.getMemberTitle().getBattleTitle());
                }
                if (this.accountBean.getAccountType() == 2) {
                    this.tv_user_account.setTextColor(Color.parseColor("#FF8809"));
                    this.tv_user_account.setText("完善资料/领礼包/抢红包");
                    this.tv_user_account.setBackgroundResource(R.drawable.account_msg_bg);
                } else {
                    this.tv_user_account.setPadding(0, 0, 0, 0);
                    this.tv_user_account.setBackgroundDrawable(null);
                    this.tv_user_account.setTextColor(Color.parseColor("#A9A9A9"));
                    this.tv_user_account.setText(this.accountBean.getAccount());
                }
            } else {
                this.iv_user_vip.setVisibility(8);
            }
            UserCenterBean userCenterBean2 = this.userCenterBeans;
            if (userCenterBean2 != null && (member_func = userCenterBean2.getMember_func()) != null) {
                if (member_func.size() >= 0) {
                    UserCenterBean.TitleItemBean titleItemBean = member_func.get(0);
                    this.ll_copperTitle.setText(titleItemBean.getTitle());
                    this.tv_user_coppers.setText(titleItemBean.getSubTitle());
                }
                if (member_func.size() >= 1) {
                    UserCenterBean.TitleItemBean titleItemBean2 = member_func.get(1);
                    this.onekeyTitle.setText(titleItemBean2.getTitle());
                    this.onekeyMessage.setText(titleItemBean2.getSubTitle());
                }
                if (member_func.size() >= 2) {
                    UserCenterBean.TitleItemBean titleItemBean3 = member_func.get(2);
                    this.svipTitle.setText(titleItemBean3.getTitle());
                    this.tv_user_svip.setText(titleItemBean3.getSubTitle());
                }
            }
            this.rl_members.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    UserCenterBean.TitleItemBean join_member2;
                    UserCenterBean userCenterBean3 = UsercenterFragmentNew.this.userCenterBeans;
                    if (userCenterBean3 == null || (join_member2 = userCenterBean3.getJoin_member()) == null) {
                        return;
                    }
                    IntentUtil.getInstance().goShareWebActivity(UsercenterFragmentNew.this.mActivity, join_member2.getJumpUrl());
                }
            });
            this.ll_svip.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.4
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (UsercenterFragmentNew.this.userCenterBeans == null) {
                        return;
                    }
                    IntentDateBean intentDateBean = new IntentDateBean();
                    intentDateBean.setLink_type(4);
                    List<UserCenterBean.TitleItemBean> member_func2 = UsercenterFragmentNew.this.userCenterBeans.getMember_func();
                    if (member_func2 != null && member_func2.size() > 2) {
                        intentDateBean.setLink_type_val(member_func2.get(2).getJumpUrl());
                    }
                    ShareWebActivity_.intent(v10.getContext()).b(intentDateBean).start();
                }
            });
            this.iv_user_avatar.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.5
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.intent(v10.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
            this.iv_user_avatar2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.6
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.intent(v10.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
            this.iv_arrow.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.7
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.intent(v10.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
            this.ll_userinfo.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.login.UsercenterFragmentNew.8
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (UsercenterFragmentNew.this.goLogin()) {
                        return;
                    }
                    CommentSelfListActivity_.intent(v10.getContext()).a(UsercenterFragmentNew.this.accountBean.getUid()).start();
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void showNotif() {
        showNotifUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNotifUi() {
        try {
            m8 m8Var = this.mAdapter;
            if (m8Var != null) {
                m8Var.l(MApplication.T);
                this.mAdapter.notifyDataSetChanged();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        ToastManager.show(info);
    }

    @Click
    void test() {
        if (com.join.android.app.common.http.c.f34547c) {
            IntentUtil.getInstance().goShareWebActivity(getContext(), "http://apphd.5fun.net/static/papa_url_demo/index.html");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void tokenFailure() {
        if (isDetached() || getContext() == null) {
            return;
        }
        showToast(getString(R.string.pay_token_fail));
        AccountUtil_.getInstance_(getContext()).accountLoginOut(getContext());
        touristLogin();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (!m.j(getContext())) {
            this.isGetingUserInfo = false;
            loadViewConfigsFromLocal();
            return;
        }
        MApplication.T = 0;
        if (isLogined()) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(q.n(getContext()).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(this.prefDef.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(k2.g(touristLoginRequestBean));
            AccountUtil_.getInstance_(getContext()).setLocalUserIcon("");
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = this.rpcAccountClient.I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI == null || accountResultMainBeanI.getError() != 0) {
                this.isGetingUserInfo = false;
                loadViewConfigsFromLocal();
                return;
            }
            if (!accountResultMainBeanI.getData().is_success()) {
                this.isGetingUserInfo = false;
                showToast(accountResultMainBeanI.getData().getError_msg());
                loadViewConfigsFromLocal();
            } else {
                AccountBean user_info = accountResultMainBeanI.getData().getUser_info();
                if (user_info != null) {
                    AccountUtil_.getInstance_(getContext()).saveAccountData(g8.a.a(user_info), getContext());
                }
                this.isGetingUserInfo = false;
                refreshViews();
                getUserInfo();
            }
        } catch (Exception e10) {
            this.isGetingUserInfo = false;
            e10.printStackTrace();
            loadViewConfigsFromLocal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateAdapterByNewMsgCount(int count) {
        if (count < 1 || this.mActivity == null) {
            return;
        }
        synchronized (this.mUserCenterDatas) {
            List<UserCenterBean.UserCenterItem> list = this.mUserCenterDatas;
            if (list == null) {
                return;
            }
            int size = list.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    i10 = -1;
                    break;
                }
                UserCenterBean.UserCenterItem userCenterItem = this.mUserCenterDatas.get(i10);
                if (userCenterItem.getSub() != null) {
                    JumpInfoBean jumpInfoBean = userCenterItem.getSub().get(0);
                    int i11 = Integer.parseInt(jumpInfoBean.getJump_type());
                    if (Integer.parseInt(jumpInfoBean.getLink_type()) == 3 && i11 == 15) {
                        break;
                    }
                }
                i10++;
            }
            if (i10 >= 0) {
                this.mUserCenterDatas.get(i10).setUnReadCount(count);
            }
            this.mAdapter.notifyDataSetChanged();
            showNotifUi();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        int size = this.downloadingMap.size();
        CustomerDownloadView customerDownloadView = this.downloadView1;
        if (customerDownloadView != null) {
            customerDownloadView.setDownloadGameNum();
        }
        CustomerDownloadView customerDownloadView2 = this.downloadView2;
        if (customerDownloadView2 != null) {
            customerDownloadView2.setDownloadGameNum();
        }
        if (size > 0) {
            CustomerDownloadView customerDownloadView3 = this.downloadView1;
            if (customerDownloadView3 != null) {
                customerDownloadView3.d();
            }
            CustomerDownloadView customerDownloadView4 = this.downloadView2;
            if (customerDownloadView4 != null) {
                customerDownloadView4.d();
                return;
            }
            return;
        }
        CustomerDownloadView customerDownloadView5 = this.downloadView1;
        if (customerDownloadView5 != null) {
            customerDownloadView5.g();
        }
        CustomerDownloadView customerDownloadView6 = this.downloadView2;
        if (customerDownloadView6 != null) {
            customerDownloadView6.g();
        }
    }

    @Receiver(actions = {p5.a.B})
    public void updateInfo(Context context) {
        this.accountBean = AccountUtil_.getInstance_(this.mActivity).getAccountData();
        refreshUserCenter();
    }

    List<UserCenterBean.UserCenterItem> wrapDatas(UserCenterBean userCenterBean, int position) {
        ArrayList arrayList = new ArrayList();
        try {
            List<UserCenterBean.UserCenterItem> first_group = userCenterBean.getFirst_group();
            if (first_group != null && position == 0) {
                arrayList.addAll(first_group);
            }
            List<UserCenterBean.UserCenterItem> second_group = userCenterBean.getSecond_group();
            if (second_group != null && position == 1) {
                arrayList.addAll(second_group);
            }
            if (userCenterBean.getThird_group() != null && position == 2) {
                arrayList.addAll(userCenterBean.getThird_group());
            }
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    private boolean isLogined() {
        UserInfo accountData = AccountUtil_.getInstance_(this.mActivity).getAccountData();
        return accountData != null && t2.i(accountData.getToken());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(r downloadTaskEvent) {
        changeDownloadTaskNumber(downloadTaskEvent.a(), downloadTaskEvent.c());
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.login.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57453b.lambda$onEventMainThread$0();
            }
        });
    }
}
