package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.Fragment;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.activity.CommentSelfListActivity_;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.VoucherCodesBoxActivity_;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountUserInfoRequestBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.JumpInfoBean;
import com.join.mgps.dto.MessageRedPointBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.dto.UserCenterBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.MemberTitleInfo;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
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

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_usercenter)
public class d6 extends Fragment {
    com.join.mgps.rpc.i A;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f69307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ImageView f69308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f69309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    ImageView f69310f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f69311g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f69312h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    TextView f69313i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    TextView f69314j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    TextView f69315k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    LinearLayout f69316l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    LinearLayout f69317m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    LinearLayout f69318n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    GridView f69319o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    h f69320p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private UserInfo f69322r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Activity f69323s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    com.join.mgps.rpc.b f69324t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private q.rorbin.badgeview.a f69325u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Pref
    PrefDef_ f69326v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    com.join.mgps.rpc.e f69327w;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    View f69321q = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f69328x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private List<UserCenterBean.UserCenterItem> f69329y = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    volatile boolean f69330z = false;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            synchronized (d6.this.f69329y) {
                if (d6.this.f69329y.size() <= 0) {
                    return;
                }
                try {
                    UserCenterBean.UserCenterItem userCenterItem = (UserCenterBean.UserCenterItem) d6.this.f69329y.get(position);
                    JumpInfoBean jumpInfoBean = userCenterItem.getSub().get(0);
                    int i10 = Integer.parseInt(jumpInfoBean.getJump_type());
                    int i11 = Integer.parseInt(jumpInfoBean.getLink_type());
                    if (userCenterItem.getMain() != null && userCenterItem.getMain().getLabel() != null) {
                        d6.this.changeMgState(userCenterItem.getMain().getLabel(), i10);
                    }
                    if (i11 != 3) {
                        d6.this.gotoTargetActivity(jumpInfoBean, i11);
                    } else if (i10 == 29) {
                        IntentUtil.getInstance().goMGSettingActivity(d6.this.f69323s);
                    } else if (i10 != 32) {
                        switch (i10) {
                            case 15:
                                MApplication.T = 0;
                                d6.this.hideRedPoint();
                                IntentUtil.getInstance().goForumProfileMessageActivity(d6.this.f69323s);
                                break;
                            case 16:
                                IntentUtil.getInstance().goForumMyDynamicActivity(d6.this.getActivity());
                                break;
                            case 17:
                                IntentUtil.getInstance().goForumAndPrfileActivity(0, d6.this.f69323s);
                                break;
                            case 18:
                                d6 d6Var = d6.this;
                                d6Var.f69322r = AccountUtil_.getInstance_(d6Var.f69323s).getAccountData();
                                if (!d6.this.goLogin()) {
                                    IntentUtil.getInstance().goPAPayCenterActivity(d6.this.f69323s);
                                }
                                break;
                            case 19:
                                if (!d6.this.goLogin()) {
                                    VoucherCodesBoxActivity_.intent(d6.this.f69323s).b(0).a(d6.this.f69322r.getUid()).start();
                                }
                                break;
                            case 20:
                                d6 d6Var2 = d6.this;
                                d6Var2.f69322r = AccountUtil_.getInstance_(d6Var2.f69323s).getAccountData();
                                if (!d6.this.goLogin()) {
                                    VoucherCodesBoxActivity_.intent(d6.this.f69323s).b(1).a(d6.this.f69322r.getUid()).start();
                                }
                                break;
                            case 21:
                                IntentUtil.getInstance().goFaceTransferHomePageActivity(d6.this.f69323s);
                                break;
                            case 22:
                                IntentUtil.getInstance().goJoystickManager(d6.this.f69323s);
                                break;
                            case 23:
                                IntentUtil.getInstance().goShareWebActivity(d6.this.f69323s, com.join.mgps.rpc.h.f72397x + "/Auxiliary_tool");
                                break;
                            case 24:
                                IntentUtil.getInstance().goDownloadSettingActivity(d6.this.f69323s);
                                break;
                            case 25:
                                IntentUtil.getInstance().goFeedback(d6.this.f69323s);
                                break;
                            default:
                                d6.this.gotoTargetActivity(jumpInfoBean, i11);
                                break;
                        }
                    } else {
                        IntentUtil.getInstance().goCommentSelfListActivity(d6.this.f69323s);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goVip(d6.this.f69323s);
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goSvip(d6.this.f69323s);
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (d6.this.goLogin()) {
                return;
            }
            CommentSelfListActivity_.intent(v10.getContext()).a(d6.this.f69322r.getUid()).start();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (d6.this.goLogin()) {
                return;
            }
            CommentSelfListActivity_.intent(v10.getContext()).a(d6.this.f69322r.getUid()).start();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (d6.this.goLogin()) {
                return;
            }
            CommentSelfListActivity_.intent(v10.getContext()).a(d6.this.f69322r.getUid()).start();
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goVip(d6.this.f69323s);
        }
    }

    private class h extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<UserCenterBean.UserCenterItem> f69338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f69339c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f69340d = false;

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            LinearLayout f69342a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            View f69343b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            SimpleDraweeView f69344c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            TextView f69345d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            TextView f69346e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            TextView f69347f;

            a() {
            }
        }

        public h(List<UserCenterBean.UserCenterItem> datas) {
            this.f69338b = datas;
        }

        public void a(int totalnum) {
            this.f69340d = !this.f69340d;
            this.f69339c = totalnum;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f69338b.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return this.f69338b.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            if (convertView == null) {
                convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_usercenter, (ViewGroup) null);
                aVar = new a();
                d6.this.f69321q = aVar.f69344c;
                aVar.f69344c = (SimpleDraweeView) convertView.findViewById(R.id.iv_module_icon);
                aVar.f69345d = (TextView) convertView.findViewById(R.id.tv_module_name);
                aVar.f69346e = (TextView) convertView.findViewById(R.id.tv_module_doings);
                aVar.f69342a = (LinearLayout) convertView.findViewById(R.id.ll_content);
                aVar.f69343b = convertView.findViewById(R.id.emptyDivider);
                TextView textView = (TextView) convertView.findViewById(R.id.messageBadge);
                aVar.f69347f = textView;
                textView.setVisibility(8);
                convertView.setTag(aVar);
            } else {
                aVar = (a) convertView.getTag();
            }
            UserCenterBean.UserCenterItem userCenterItem = this.f69338b.get(position);
            if (!AccountUtil_.getInstance_(d6.this.f69323s).isTourist()) {
                if (position != 0 || this.f69339c <= 0) {
                    aVar.f69347f.setVisibility(8);
                } else {
                    aVar.f69347f.setVisibility(0);
                    if (this.f69339c > 99) {
                        aVar.f69347f.setText("+99");
                    } else {
                        aVar.f69347f.setText("" + this.f69339c);
                    }
                }
            }
            if (userCenterItem.isEmpty()) {
                aVar.f69343b.setVisibility(0);
                aVar.f69342a.setVisibility(8);
            } else {
                aVar.f69343b.setVisibility(8);
                if (userCenterItem.isPlaceHolder()) {
                    aVar.f69342a.setVisibility(4);
                } else {
                    aVar.f69342a.setVisibility(0);
                }
                if (userCenterItem.getMain() != null) {
                    com.join.android.app.common.utils.l.i(aVar.f69344c, userCenterItem.getMain().getPic_remote(), com.facebook.drawee.drawable.s.c.f27288e);
                    aVar.f69345d.setText(userCenterItem.getMain().getSub_title());
                    aVar.f69346e.setText(userCenterItem.getMain().getLabel());
                }
            }
            return convertView;
        }
    }

    private void Q(List<UserCenterBean.UserCenterItem> datas, int num) {
        for (int i10 = 0; i10 < num; i10++) {
            UserCenterBean.UserCenterItem userCenterItem = new UserCenterBean.UserCenterItem();
            userCenterItem.setPlaceHolder(true);
            datas.add(userCenterItem);
        }
    }

    private void addDivider(List<UserCenterBean.UserCenterItem> datas) {
        datas.add(createItem());
        datas.add(createItem());
        datas.add(createItem());
    }

    private boolean isLogined(Context context) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        return accountData != null && com.join.mgps.Util.t2.i(accountData.getToken());
    }

    private void showRedPoint(View view) {
        MessageRedPointBean.MessagesBean.DataBean dataBean;
        int community_praise_surplus_number;
        if (view == null || (dataBean = MApplication.P) == null || (community_praise_surplus_number = dataBean.getCommunity_praise_surplus_number() + MApplication.P.getCommunity_surplus_number() + MApplication.P.getNotice_surplus_number() + MApplication.P.getPraise_surplus_number() + MApplication.P.getReplay_surplus_number()) <= 0) {
            return;
        }
        try {
            Thread.sleep(200L);
            if (this.f69325u == null) {
                this.f69325u = new QBadgeView(this.f69323s).n(view).g(community_praise_surplus_number).d(SupportMenu.CATEGORY_MASK).w(getResources().getDimensionPixelSize(R.dimen.wdp20), false).u(8388693).s(-1);
            }
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    private void testAddCommentSelf(List<UserCenterBean.UserCenterItem> firstGroups) {
    }

    List<UserCenterBean.UserCenterItem> R(UserCenterBean userCenterBean) {
        ArrayList arrayList = new ArrayList();
        try {
            List<UserCenterBean.UserCenterItem> first_group = userCenterBean.getFirst_group();
            if (first_group != null) {
                arrayList.addAll(first_group);
                int size = first_group.size() % 3;
                if (size != 0) {
                    size = 3 - size;
                }
                Q(arrayList, size);
                addDivider(arrayList);
            }
            List<UserCenterBean.UserCenterItem> second_group = userCenterBean.getSecond_group();
            if (second_group != null) {
                arrayList.addAll(second_group);
                int size2 = second_group.size() % 3;
                if (size2 != 0) {
                    size2 = 3 - size2;
                }
                Q(arrayList, size2);
                addDivider(arrayList);
            }
            if (userCenterBean.getThird_group() != null) {
                arrayList.addAll(userCenterBean.getThird_group());
                int size3 = userCenterBean.getThird_group().size() % 3;
                if (size3 != 0) {
                    size3 = 3 - size3;
                }
                Q(arrayList, size3);
            }
            return arrayList;
        } catch (Exception e10) {
            e10.printStackTrace();
            return arrayList;
        }
    }

    @AfterViews
    void afterViews() {
        org.greenrobot.eventbus.c.f().v(this);
        this.f69327w = com.join.mgps.rpc.impl.d.O1();
        this.A = com.join.mgps.rpc.impl.g.A0();
        UserCenterBean userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.f69326v.userCenterViewConfigsv2().d(), UserCenterBean.class);
        if (userCenterBean != null) {
            this.f69329y.clear();
            this.f69329y.addAll(R(userCenterBean));
        }
        h hVar = new h(this.f69329y);
        this.f69320p = hVar;
        this.f69319o.setAdapter((ListAdapter) hVar);
        this.f69319o.setOnItemClickListener(new a());
        this.f69320p.notifyDataSetChanged();
        pullMyProfileInfo();
        showNotifUi();
    }

    void calculateVIPExpTime() {
        long vipExpTime = this.f69322r.getVipExpTime() * 1000;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = (vipExpTime - jCurrentTimeMillis) / 86400000;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f69314j.getLayoutParams();
        if (vipExpTime <= jCurrentTimeMillis) {
            layoutParams.topMargin = com.join.mgps.Util.i0.a(this.f69323s, 11.0f);
            this.f69314j.setLayoutParams(layoutParams);
            this.f69310f.setVisibility(8);
            this.f69314j.setTextColor(Color.parseColor("#FFD4A9"));
            this.f69314j.setText("去开通");
            this.f69318n.setOnClickListener(new g());
            return;
        }
        layoutParams.topMargin = com.join.mgps.Util.i0.a(this.f69323s, 2.0f);
        this.f69314j.setLayoutParams(layoutParams);
        int i10 = 0;
        this.f69310f.setVisibility(0);
        this.f69314j.setTextColor(Color.parseColor("#FFCC9C"));
        String str = com.join.mgps.Util.e0.s(vipExpTime) + "到期";
        try {
            i10 = Integer.parseInt(com.join.mgps.Util.e0.w(vipExpTime));
        } catch (Exception unused) {
        }
        if (j10 > 30) {
            if (i10 > 2037) {
                this.f69314j.setText("终生会员");
                return;
            } else {
                this.f69314j.setText(str);
                return;
            }
        }
        this.f69314j.setText(Html.fromHtml(str + "\n<font color=#FFFFFF>剩余" + j10 + "天</font>"));
    }

    @Background
    void changeMgState(String content, int tag_id) {
        if (com.join.android.app.common.utils.m.j(this.f69323s)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.f69323s).getAccountData();
                this.f69322r = accountData;
                if (accountData != null && isOfficialAccount()) {
                    if (this.f69327w.C(RequestBeanUtil.getInstance(this.f69323s).getRequestMsgState(this.f69322r.getUid(), content, tag_id)).getMessages().getData().get(0).isVal()) {
                        com.join.mgps.Util.g1.b("UserCenter", "changeMgState success");
                    } else {
                        com.join.mgps.Util.g1.b("UserCenter", "changeMgState failure");
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

    @Background
    void getUserInfo() {
        if (this.f69330z) {
            return;
        }
        this.f69330z = true;
        this.f69322r = AccountUtil_.getInstance_(this.f69323s).getAccountData();
        if (!com.join.android.app.common.utils.m.j(this.f69323s)) {
            this.f69330z = false;
            loadViewConfigsFromLocal();
            return;
        }
        UserInfo userInfo = this.f69322r;
        if (userInfo == null || TextUtils.isEmpty(userInfo.getToken())) {
            touristLogin();
            return;
        }
        try {
            AccountUserInfoRequestBean accountUserInfoRequestBean = new AccountUserInfoRequestBean();
            accountUserInfoRequestBean.setUid(this.f69322r.getUid() + "");
            accountUserInfoRequestBean.setToken(this.f69322r.getToken());
            accountUserInfoRequestBean.setDevice_id("");
            accountUserInfoRequestBean.setSign(com.join.mgps.Util.k2.g(accountUserInfoRequestBean));
            AccountResultMainBean<AccountBean> accountResultMainBeanI = this.f69324t.i(accountUserInfoRequestBean.getParams());
            if (accountResultMainBeanI == null) {
                this.f69330z = false;
                getViewConfigs();
                return;
            }
            if (accountResultMainBeanI.getError() != 0) {
                if (accountResultMainBeanI.getError() == 701) {
                    tokenFailure();
                    return;
                } else {
                    this.f69330z = false;
                    getViewConfigs();
                    return;
                }
            }
            AccountBean data = accountResultMainBeanI.getData();
            if (data != null && data.getUid() != 0) {
                UserInfo.b builder = this.f69322r.toBuilder();
                builder.setSVIPLevel(data.getSvip_level()).setVipLevel(data.getVip_level()).setLiveTotalCharm(data.getLive_total_charm()).setIsAnchor(data.getIs_anchor()).setPapaMoney(data.getPapaMoney()).setGameTime(data.getGameTime()).setSecretKey(data.getSecretKey());
                if (data.getMember_title() != null) {
                    MemberTitleInfo.b bVarNewBuilder = MemberTitleInfo.newBuilder();
                    bVarNewBuilder.setBattleTitle(data.getMember_title().getBattleTitle());
                    bVarNewBuilder.setLevel(data.getLevel());
                    bVarNewBuilder.setBattleTitleColor(data.getMember_title().getBattleTitleColor());
                    builder.setMemberTitle(bVarNewBuilder);
                }
                if (com.join.mgps.Util.t2.i(data.getNickname())) {
                    builder.setNickname(data.getNickname());
                }
                this.f69322r = builder.build();
            }
            AccountUtil_.getInstance_(this.f69323s).saveAccountData(this.f69322r, this.f69323s);
            this.f69330z = false;
            refreshViews();
            getViewConfigs();
        } catch (Exception e10) {
            this.f69330z = false;
            getViewConfigs();
            e10.printStackTrace();
        }
    }

    @Background
    void getViewConfigs() {
        Activity activity;
        if (!com.join.android.app.common.utils.m.j(this.f69323s)) {
            loadViewConfigsFromLocal();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this.f69323s).getAccountData();
            this.f69322r = accountData;
            if (accountData == null || (activity = this.f69323s) == null || this.f69328x) {
                return;
            }
            int i10 = 1;
            this.f69328x = true;
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(activity);
            int uid = this.f69322r.getUid();
            String token = this.f69322r.getToken();
            if (!com.join.mgps.Util.b.piv(this.f69322r)) {
                i10 = 0;
            }
            ResultMainBean<UserCenterBean> resultMainBeanQ1 = this.f69327w.q1(requestBeanUtil.getUserCenterViewConfigs(uid, token, i10));
            if (resultMainBeanQ1 == null || resultMainBeanQ1.getCode() != 600) {
                loadViewConfigsFromLocal();
            } else {
                this.f69326v.userCenterViewConfigs().g(JsonMapper.toJsonString(resultMainBeanQ1.getMessages().getData()));
                loadViewConfigsFromLocal();
            }
            this.f69328x = false;
        } catch (Exception e10) {
            this.f69328x = false;
            e10.printStackTrace();
            loadViewConfigsFromLocal();
        }
    }

    boolean goLogin() {
        return IntentUtil.getInstance().goLogin(getContext());
    }

    void gotoTargetActivity(JumpInfoBean jumpInfoBean, int linkType) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(jumpInfoBean.getTpl_type());
        intentDateBean.setLink_type(linkType);
        intentDateBean.setJump_type(Integer.parseInt(jumpInfoBean.getJump_type()));
        intentDateBean.setCrc_link_type_val(jumpInfoBean.getCrc_link_type_val());
        intentDateBean.setLink_type_val(jumpInfoBean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.f69323s, intentDateBean);
    }

    @UiThread
    void hideRedPoint() {
        q.rorbin.badgeview.a aVar = this.f69325u;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    boolean isActivityFinish() {
        Activity activity = this.f69323s;
        if (activity != null) {
            return activity.isFinishing() || this.f69323s.isDestroyed();
        }
        return false;
    }

    boolean isOfficialAccount() {
        if (AccountUtil_.getInstance_(this.f69323s).getAccountData() == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this.f69323s).isTourist();
    }

    @Click
    void ll_copper() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72382s);
        ShareWebActivity_.intent(this).b(intentDateBean).start();
    }

    @UiThread
    void loadViewConfigsFromLocal() {
        try {
            UserCenterBean userCenterBean = (UserCenterBean) JsonMapper.getInstance().fromJson(this.f69326v.userCenterViewConfigs().d(), UserCenterBean.class);
            if (userCenterBean != null && this.f69323s != null) {
                synchronized (this.f69329y) {
                    this.f69329y.clear();
                    this.f69329y.addAll(R(userCenterBean));
                    this.f69320p.notifyDataSetChanged();
                    pullMyProfileInfo();
                }
                showNotifUi();
            }
        } catch (Exception e10) {
            com.join.mgps.Util.g1.b("UserCenter", "loadViewConfigsFromLocal exception:" + e10.getMessage());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f69323s = (Activity) context;
        this.f69324t = com.join.mgps.rpc.impl.a.c0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        this.f69323s = null;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.y jPushNotifEvent) {
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
    }

    @Background
    void pullMyProfileInfo() {
        ForumResponse<ForumData.ForumProfilePostsData> forumResponseH;
        ForumData.ForumProfilePostsData data;
        ForumBean.ForumProfilePostUserInfoBean user_info;
        if (com.join.android.app.common.utils.m.j(this.f69323s)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this.f69323s).getAccountData();
                if (accountData == null || accountData.getUid() == 0 || (forumResponseH = this.A.h(accountData.getUid(), accountData.getToken(), 1, 0, "")) == null || (data = forumResponseH.getData()) == null || (user_info = data.getUser_info()) == null) {
                    return;
                }
                updateAdapterByNewMsgCount(user_info.getUnread_message());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void refreshUserCenter() {
        if (this.f69323s == null) {
            return;
        }
        refreshViews();
        if (this.f69330z) {
            return;
        }
        getUserInfo();
    }

    @UiThread
    void refreshViews() {
        Activity activity = this.f69323s;
        if (activity == null) {
            return;
        }
        this.f69322r = AccountUtil_.getInstance_(activity).getAccountData();
        this.f69309e.setText("未登录");
        this.f69307c.getHierarchy().z(new com.facebook.drawee.drawable.o(Color.parseColor("#99BDC9")));
        this.f69307c.setImageResource(R.drawable.unloginstatus);
        this.f69312h.setText("");
        this.f69313i.setText("--");
        this.f69314j.setText("--");
        this.f69315k.setText("---");
        this.f69311g.setText("");
        this.f69311g.setVisibility(8);
        this.f69318n.setOnClickListener(null);
        this.f69317m.setOnClickListener(null);
        UserInfo userInfo = this.f69322r;
        if (userInfo != null) {
            this.f69309e.setText(userInfo.getNickname());
            com.join.android.app.common.utils.l.u(this.f69307c, this.f69322r.getAvatarSrc());
            if (com.join.mgps.Util.b.piv(this.f69322r)) {
                calculateVIPExpTime();
            } else {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f69314j.getLayoutParams();
                layoutParams.topMargin = com.join.mgps.Util.i0.a(this.f69323s, 11.0f);
                this.f69314j.setLayoutParams(layoutParams);
                this.f69314j.setTextColor(Color.parseColor("#FFD4A9"));
                this.f69314j.setText("去开通");
                this.f69310f.setVisibility(8);
            }
            if (com.join.mgps.Util.b.piv(this.f69322r) && this.f69322r.getMemberTitle() != null && !TextUtils.isEmpty(this.f69322r.getMemberTitle().getBattleTitle())) {
                this.f69311g.setVisibility(0);
                this.f69311g.setText(this.f69322r.getMemberTitle().getBattleTitle());
            }
            if (this.f69322r.getAccountType() == 2) {
                this.f69312h.setTextColor(Color.parseColor("#F47500"));
                this.f69312h.setText("完善资料 / 领礼包 / 抢红包");
                this.f69312h.setTextSize(13.0f);
                this.f69312h.setBackgroundResource(R.drawable.account_msg_bg);
                int iA = com.join.mgps.Util.i0.a(this.f69323s, 5.0f);
                int iA2 = com.join.mgps.Util.i0.a(this.f69323s, 17.0f);
                this.f69312h.setPadding(iA2, iA, iA2, iA);
            } else {
                this.f69312h.setPadding(0, 0, 0, 0);
                this.f69312h.setBackgroundDrawable(null);
                this.f69312h.setTextSize(14.0f);
                this.f69312h.setTextColor(Color.parseColor("#FFFFFF"));
                this.f69312h.setText(this.f69322r.getAccount());
            }
            this.f69313i.setText(this.f69322r.getPapaMoney() + "");
            if (this.f69322r.getSVIPLevel() == 0) {
                this.f69315k.setTextColor(Color.parseColor("#FFD4A9"));
                this.f69315k.setText("去开通");
            } else {
                this.f69315k.setTextColor(Color.parseColor("#FFFFFF"));
                this.f69315k.setBackgroundResource(R.drawable.bg_border_b65400_100);
                this.f69315k.setText("SVIP" + this.f69322r.getSVIPLevel());
            }
        } else {
            this.f69310f.setVisibility(8);
        }
        this.f69318n.setOnClickListener(new b());
        this.f69317m.setOnClickListener(new c());
        this.f69307c.setOnClickListener(new d());
        this.f69308d.setOnClickListener(new e());
        this.f69316l.setOnClickListener(new f());
    }

    public void showNotif() {
        showNotifUi();
    }

    @UiThread
    void showNotifUi() {
        View childAt;
        h hVar = this.f69320p;
        if (hVar != null) {
            hVar.a(MApplication.T);
            this.f69320p.notifyDataSetChanged();
        }
        GridView gridView = this.f69319o;
        if (gridView == null || (childAt = gridView.getChildAt(0)) == null || !(childAt.getTag() instanceof h.a)) {
            return;
        }
        h.a aVar = (h.a) childAt.getTag();
        aVar.f69347f.setVisibility(8);
        if (AccountUtil_.getInstance_(this.f69323s).isTourist() || MApplication.T <= 0) {
            return;
        }
        aVar.f69347f.setVisibility(0);
        if (MApplication.T > 99) {
            aVar.f69347f.setText("+99");
            return;
        }
        aVar.f69347f.setText("" + MApplication.T);
    }

    @UiThread
    void showToast(String info) {
        if (isActivityFinish()) {
            return;
        }
        com.join.mgps.Util.a3.b(this.f69323s).d(info);
    }

    @UiThread
    void tokenFailure() {
        showToast(getString(R.string.pay_token_fail));
        AccountUtil_.getInstance_(this.f69323s).accountLoginOut(this.f69323s);
        touristLogin();
    }

    @Background
    void touristLogin() {
        if (!com.join.android.app.common.utils.m.j(this.f69323s)) {
            this.f69330z = false;
            loadViewConfigsFromLocal();
            return;
        }
        if (isLogined()) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(this.f69323s).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(this.f69326v.touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.k2.g(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = this.f69324t.I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI == null || accountResultMainBeanI.getError() != 0) {
                this.f69330z = false;
                loadViewConfigsFromLocal();
                return;
            }
            if (!accountResultMainBeanI.getData().is_success()) {
                this.f69330z = false;
                showToast(accountResultMainBeanI.getData().getError_msg());
                loadViewConfigsFromLocal();
            } else {
                AccountBean user_info = accountResultMainBeanI.getData().getUser_info();
                if (user_info != null) {
                    AccountUtil_.getInstance_(this.f69323s).saveAccountData(g8.a.a(user_info), this.f69323s);
                }
                this.f69330z = false;
                refreshViews();
                getUserInfo();
            }
        } catch (Exception e10) {
            this.f69330z = false;
            e10.printStackTrace();
            loadViewConfigsFromLocal();
        }
    }

    @UiThread
    void updateAdapterByNewMsgCount(int count) {
        if (count < 1 || this.f69323s == null) {
            return;
        }
        synchronized (this.f69329y) {
            List<UserCenterBean.UserCenterItem> list = this.f69329y;
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
                UserCenterBean.UserCenterItem userCenterItem = this.f69329y.get(i10);
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
                this.f69329y.get(i10).setUnReadCount(count);
            }
            this.f69320p.notifyDataSetChanged();
            showNotifUi();
        }
    }

    @Receiver(actions = {p5.a.B})
    public void updateInfo(Context context) {
        this.f69322r = AccountUtil_.getInstance_(this.f69323s).getAccountData();
        refreshUserCenter();
    }

    private boolean isLogined() {
        UserInfo accountData = AccountUtil_.getInstance_(this.f69323s).getAccountData();
        return accountData != null && com.join.mgps.Util.t2.i(accountData.getToken());
    }
}
