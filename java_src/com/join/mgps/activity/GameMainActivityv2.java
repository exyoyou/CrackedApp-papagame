package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.appcompat.widget.Toolbar;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.customview.ViewPagerWithADs;
import com.join.mgps.db.tables.GameMainTable;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameMainDataBean;
import com.join.mgps.dto.GameMainNetBattle;
import com.join.mgps.dto.GameMainPostBean;
import com.join.mgps.dto.GameMainachieve;
import com.join.mgps.dto.GameMaingameinfo;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultMessageBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import com.zyyoona7.wheel.WheelView;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_mainv2)
public class GameMainActivityv2 extends Activity {
    private DownloadTask A;
    GameMainDataBean B;
    private String C = "";
    private boolean D = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById
    TextView f53058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    ImageView f53059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ImageView f53060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    ImageView f53061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f53062f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f53063g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f53064h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f53065i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f53066j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    LinearLayout f53067k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    LinearLayout f53068l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    LinearLayout f53069m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @ViewById
    RelativeLayout f53070n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    RelativeLayout f53071o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    RelativeLayout f53072p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @ViewById
    ViewPagerWithADs f53073q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    LinearLayout f53074r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    ViewFlipper f53075s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    TextView f53076t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Extra
    String f53077u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Pref
    PrefDef_ f53078v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    com.join.mgps.rpc.e f53079w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    UserInfo f53080x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Toolbar f53081y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    Context f53082z;

    class a implements AppBarLayout.OnOffsetChangedListener {
        a() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int verticalOffset) {
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            GameMainActivityv2.this.f53082z.getResources().getDimensionPixelOffset(R.dimen.action_bar_height);
            if (verticalOffset == 0) {
                GameMainActivityv2.this.f53058b.setTextColor(-1);
                GameMainActivityv2.this.f53058b.setText("游戏主页");
                GameMainActivityv2.this.f53059c.setImageResource(R.drawable.icon_black_bg_back);
            } else if ((-verticalOffset) < totalScrollRange - 5) {
                GameMainActivityv2.this.f53058b.setTextColor(-1);
                GameMainActivityv2.this.f53058b.setText("游戏主页");
                GameMainActivityv2.this.f53059c.setImageResource(R.drawable.icon_black_bg_back);
            } else {
                GameMainActivityv2.this.f53058b.setTextColor(WheelView.W2);
                GameMainActivityv2 gameMainActivityv2 = GameMainActivityv2.this;
                gameMainActivityv2.f53058b.setText(gameMainActivityv2.A.getShowName());
                GameMainActivityv2.this.f53059c.setImageResource(R.drawable.gamemain_titleback);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BannerBean f53084b;

        b(final BannerBean val$bannerBean) {
            this.f53084b = val$bannerBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().intentActivity(GameMainActivityv2.this.f53082z, this.f53084b.getIntentDataBean());
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameMainPostBean f53086b;

        c(final GameMainPostBean val$bean) {
            this.f53086b = val$bean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentUtil.getInstance().goFormDetial(GameMainActivityv2.this.f53082z, this.f53086b.getId());
        }
    }

    private void j() {
    }

    private void p() {
        ((AppBarLayout) findViewById(R.id.appBarLayout)).addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new a());
    }

    private void q() {
        GameMainNetBattle net_battle;
        String fight_fun = this.A.getFight_fun();
        if (com.join.mgps.Util.t2.i(fight_fun)) {
            if (fight_fun.length() >= 1) {
                if ('1' == fight_fun.charAt(0)) {
                    this.f53072p.setVisibility(0);
                } else {
                    this.f53072p.setVisibility(8);
                }
            }
            if (fight_fun.length() >= 2) {
                if ('1' != fight_fun.charAt(1)) {
                    this.f53068l.setVisibility(8);
                    return;
                }
                this.f53068l.setVisibility(0);
                GameMainDataBean gameMainDataBean = this.B;
                if (gameMainDataBean != null && (net_battle = gameMainDataBean.getNet_battle()) != null) {
                    this.f53076t.setText(Html.fromHtml("<font color = '#F47500'>" + net_battle.getNumber() + "个房间</font>正在对战,进入\"<font color = '#F47500'>约战</font>\",\"<font color = '#F47500'>大厅对战</font>\""), TextView.BufferType.SPANNABLE);
                }
                UserInfo userInfo = this.f53080x;
                if (userInfo != null && userInfo.getAccountType() == 2) {
                    this.D = false;
                    this.f53060d.setImageResource(R.drawable.switch_close);
                    this.f53060d.setEnabled(false);
                    return;
                }
                GameMainDataBean gameMainDataBean2 = this.B;
                if (gameMainDataBean2 != null && gameMainDataBean2.getNet_battle() != null && this.B.getNet_battle().getSilence_room_switch() == 0) {
                    this.D = false;
                    this.f53060d.setImageResource(R.drawable.switch_close);
                    return;
                }
                GameMainDataBean gameMainDataBean3 = this.B;
                if (gameMainDataBean3 != null && gameMainDataBean3.getNet_battle() != null && this.B.getNet_battle().getSilence_room_switch() == 1) {
                    this.D = true;
                    this.f53060d.setImageResource(R.drawable.switch_open);
                } else if (fight_fun.length() < 7) {
                    this.f53071o.setVisibility(8);
                } else if ('1' == fight_fun.charAt(6)) {
                    this.D = true;
                    this.f53060d.setImageResource(R.drawable.switch_open);
                } else {
                    this.D = false;
                    this.f53060d.setImageResource(R.drawable.switch_close);
                }
            }
        }
    }

    @AfterViews
    void b() {
        j();
        this.f53082z = this;
        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) findViewById(R.id.collapsingToolbarLayout);
        collapsingToolbarLayout.setScrimVisibleHeightTrigger(this.f53082z.getResources().getDimensionPixelOffset(R.dimen.action_bar_height) + this.f53082z.getResources().getDimensionPixelSize(this.f53082z.getResources().getIdentifier("status_bar_height", "dimen", "android")) + 5);
        collapsingToolbarLayout.setScrimAnimationDuration(200L);
        p();
        this.f53079w = com.join.mgps.rpc.impl.d.O1();
        this.A = q5.f.M().G(this.f53077u);
        this.f53080x = AccountUtil_.getInstance_(this.f53082z).getAccountData();
        q();
        DownloadTask downloadTask = this.A;
        if (downloadTask != null) {
            com.join.android.app.common.utils.l.d(this.f53065i, R.drawable.banner_normal_icon, downloadTask.getPortraitURL());
            this.f53063g.setText(this.A.getShowName());
            UtilsMy.K(this.A.getScore(), this.A.getDown_count(), this.A.getShowSize(), this.A.getSp_tag_info(), this.A.getTipBeans(), this.f53067k, this.f53082z);
            this.f53076t.setText(Html.fromHtml("进入\"<font color = '#F47500'>约战</font>\",\"<font color = '#F47500'>大厅对战</font>\""), TextView.BufferType.SPANNABLE);
        }
        f();
        e();
        if (WifiUtils.getInstance(getApplicationContext()).isWifiEnable()) {
            this.f53078v.isWifiConnectedBefore().g(Boolean.TRUE);
        } else {
            this.f53078v.isWifiConnectedBefore().g(Boolean.FALSE);
        }
    }

    @Click
    void c() {
        GameMainDataBean gameMainDataBean = this.B;
        if (gameMainDataBean == null) {
            UtilsMy.l(null, this.A, this.f53082z, 0);
            return;
        }
        GameMainNetBattle net_battle = gameMainDataBean.getNet_battle();
        int silence_room_switch = net_battle.getSilence_room_switch();
        if (silence_room_switch == 0) {
            UtilsMy.l(null, this.A, this.f53082z, 0);
            return;
        }
        String fight_fun = this.A.getFight_fun();
        boolean z10 = com.join.mgps.Util.t2.i(fight_fun) && fight_fun.length() >= 7 && '1' == fight_fun.charAt(6);
        int max_battle_count = this.B.getGame_info() != null ? this.B.getGame_info().getMax_battle_count() : 0;
        if (silence_room_switch == 1) {
            UtilsMy.o(this.A, this.f53082z, 1, net_battle.getIp(), net_battle.getPort(), this.C, max_battle_count);
        } else if (silence_room_switch == 2 && z10) {
            UtilsMy.o(this.A, this.f53082z, 1, net_battle.getIp(), net_battle.getPort(), this.C, max_battle_count);
        } else {
            UtilsMy.l(null, this.A, this.f53082z, 0);
        }
    }

    @Click
    void d() {
        IntentUtil.getInstance().goForumFid(this.f53082z, (int) this.A.getPlugin_area_val());
    }

    @Background
    void e() {
        ResultMessageBean<List<GameMainDataBean>> messages;
        try {
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this);
            String str = this.f53077u;
            UserInfo userInfo = this.f53080x;
            ResultMainBean<List<GameMainDataBean>> resultMainBeanY = this.f53079w.Y(requestBeanUtil.getGameMainData(str, userInfo != null ? userInfo.getUid() : 1));
            if (resultMainBeanY == null || resultMainBeanY.getFlag() != 1 || (messages = resultMainBeanY.getMessages()) == null) {
                return;
            }
            List<GameMainDataBean> data = messages.getData();
            if (data.size() > 0) {
                GameMainDataBean gameMainDataBean = data.get(0);
                GameMainTable gameMainTableO = t6.u.n().o(this.f53077u);
                if (gameMainTableO != null) {
                    GameMainachieve achieve = gameMainDataBean.getAchieve();
                    GameMainDataBean gameMainDataBean2 = (GameMainDataBean) JsonMapper.getInstance().fromJson(gameMainTableO.getGame_main_data(), GameMainDataBean.class);
                    if (gameMainDataBean2 != null) {
                        GameMainachieve achieve2 = gameMainDataBean2.getAchieve();
                        if (achieve != null && achieve2 != null) {
                            achieve.setLastShowVerTime(achieve2.getLastShowVerTime());
                        }
                    }
                    String json = JsonMapper.getInstance().toJson(gameMainDataBean);
                    gameMainTableO.setGameid(this.f53077u);
                    gameMainTableO.setGame_main_data(json);
                    t6.u.n().update(gameMainTableO);
                } else {
                    GameMainTable gameMainTable = new GameMainTable();
                    String json2 = JsonMapper.getInstance().toJson(gameMainDataBean);
                    gameMainTable.setGameid(this.f53077u);
                    gameMainTable.setGame_main_data(json2);
                    t6.u.n().k(gameMainTable);
                }
                r(gameMainDataBean);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void f() {
        GameMainTable gameMainTableO = t6.u.n().o(this.f53077u);
        if (gameMainTableO != null) {
            GameMainDataBean gameMainDataBean = (GameMainDataBean) JsonMapper.getInstance().fromJson(gameMainTableO.getGame_main_data(), GameMainDataBean.class);
            if (gameMainDataBean != null) {
                r(gameMainDataBean);
            }
        }
    }

    @Click
    void g() {
        finish();
    }

    @Click
    void h() {
        if (this.D) {
            this.D = false;
            this.f53060d.setImageResource(R.drawable.switch_close);
            if (this.B.getNet_battle() != null) {
                this.B.getNet_battle().setSilence_room_switch(0);
            } else {
                this.B.setNet_battle(new GameMainNetBattle());
                this.B.getNet_battle().setSilence_room_switch(0);
            }
            o(0);
            return;
        }
        this.D = true;
        this.f53060d.setImageResource(R.drawable.switch_open);
        if (this.B.getNet_battle() != null) {
            this.B.getNet_battle().setSilence_room_switch(1);
        } else {
            this.B.setNet_battle(new GameMainNetBattle());
            this.B.getNet_battle().setSilence_room_switch(1);
        }
        o(1);
    }

    @Click
    void i() {
        new GameInfoBean().setGame_id(this.f53077u);
    }

    @Click
    void k() {
        GameMainDataBean gameMainDataBean;
        GameMainachieve achieve;
        if (IntentUtil.getInstance().goLoginBattle(this) || (gameMainDataBean = this.B) == null || (achieve = gameMainDataBean.getAchieve()) == null) {
            return;
        }
        IntentUtil.getInstance().goShareWebActivity(this.f53082z, achieve.getUrl());
        achieve.setLastShowVerTime(achieve.getTime());
        GameMainTable gameMainTableO = t6.u.n().o(this.f53077u);
        String json = JsonMapper.getInstance().toJson(this.B);
        gameMainTableO.setGameid(this.f53077u);
        gameMainTableO.setGame_main_data(json);
        t6.u.n().update(gameMainTableO);
    }

    @Click
    void l() {
        GameMainDataBean gameMainDataBean = this.B;
        if (gameMainDataBean != null) {
            gameMainDataBean.getGame_info();
        }
    }

    @Click
    void m() {
        IntentUtil.getInstance().goGameDetialActivity(this.f53082z, this.A.getCrc_link_type_val(), this.A.getGame_info_tpl_type(), this.A.getSp_tpl_two_position(), this.A.get_from_type());
    }

    @Click
    void n() {
    }

    @Background
    void o(int silenceSwitch) {
        try {
            com.join.mgps.Util.g1.d("ssss", this.f53079w.i(RequestBeanUtil.getInstance(this.f53082z).getSilenceSwitch(this.f53077u, this.f53080x.getUid(), silenceSwitch)).getCode() + "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        this.f53080x = accountData;
        if (accountData.getAccountType() != 2) {
            this.f53060d.setEnabled(true);
        } else {
            this.f53060d.setImageResource(R.drawable.switch_close);
            this.f53060d.setEnabled(false);
        }
    }

    @UiThread
    void r(GameMainDataBean dataBean) {
        this.B = dataBean;
        GameMaingameinfo game_info = dataBean.getGame_info();
        if (game_info != null) {
            com.join.android.app.common.utils.l.d(this.f53062f, R.drawable.banner_normal_icon, game_info.getGame_surface_head_image());
            this.f53063g.setText(this.A.getShowName());
            UtilsMy.K(game_info.getScore(), game_info.getDown_count(), this.A.getShowSize(), this.A.getSp_tag_info(), this.A.getTipBeans(), this.f53067k, this.f53082z);
        }
        GameMainachieve achieve = dataBean.getAchieve();
        if (achieve != null && (achieve.getLastShowVerTime() == 0 || achieve.getLastShowVerTime() != achieve.getTime())) {
            com.join.android.app.common.utils.l.h(this.f53066j, achieve.getPic_addr());
        }
        q();
        List<BannerBean> local_battle = dataBean.getLocal_battle();
        if (local_battle == null || local_battle.size() <= 0) {
            this.f53069m.setVisibility(8);
        } else {
            this.f53069m.setVisibility(0);
            this.f53073q.setAll(this.f53082z, local_battle, 11, 32, 4000, 0);
        }
        List<BannerBean> ad_position = dataBean.getAd_position();
        if (ad_position == null || ad_position.size() <= 0) {
            this.f53075s.setVisibility(8);
        } else {
            this.f53075s.removeAllViews();
            this.f53075s.setInAnimation(AnimationUtils.loadAnimation(this.f53082z, R.anim.slide_in_topline));
            this.f53075s.setOutAnimation(AnimationUtils.loadAnimation(this.f53082z, R.anim.slide_out_topline));
            this.f53075s.setFlipInterval(5000);
            for (BannerBean bannerBean : ad_position) {
                View viewInflate = LayoutInflater.from(this.f53082z).inflate(R.layout.gamemain_fliper_item, (ViewGroup) null);
                LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.fliperItem);
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.icon);
                TextView textView = (TextView) viewInflate.findViewById(R.id.fliperText);
                com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.main_normal_icon, bannerBean.getPic_remote());
                textView.setText(bannerBean.getTitle());
                linearLayout.setOnClickListener(new b(bannerBean));
                this.f53075s.addView(viewInflate);
            }
            this.f53075s.startFlipping();
            this.f53075s.setVisibility(0);
        }
        List<GameMainPostBean> post_id = dataBean.getPost_id();
        if (post_id == null || post_id.size() <= 0) {
            return;
        }
        for (GameMainPostBean gameMainPostBean : post_id) {
            View viewInflate2 = LayoutInflater.from(this.f53082z).inflate(R.layout.game_main_forunpost_item, (ViewGroup) null);
            LinearLayout linearLayout2 = (LinearLayout) viewInflate2.findViewById(R.id.ll_discuss_first);
            ((TextView) viewInflate2.findViewById(R.id.tv_discuss_first)).setText(gameMainPostBean.getTitle());
            linearLayout2.setOnClickListener(new c(gameMainPostBean));
            this.f53074r.addView(viewInflate2);
        }
    }
}
