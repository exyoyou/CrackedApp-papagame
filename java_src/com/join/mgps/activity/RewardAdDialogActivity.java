package com.join.mgps.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.ad.RewardAdParams;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.broadcast.NetBroadcastReceiver;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestInfoArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchPostsBean;
import com.join.mgps.dto.SingleGameAdCfgBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.common.BaseAppConfig;
import com.papa91.wrapper.UserPrefs;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
public class RewardAdDialogActivity extends BaseDialogActivity implements View.OnClickListener {
    public static final String KEY_REWARD_PARAMS = "_RewardAdParams";
    com.join.mgps.ad.n adVideoCallBack;
    SimpleDraweeView icon;
    ImageView iv_close;
    private String mAdID;
    private String mAppID;
    private SingleGameAdCfgBean mCfgBean;
    private int mDuration;
    private String mGameId;
    private String mResourceId;
    MyReceiver myReceiver;
    NetBroadcastReceiver netBroadcastReceiver;
    RewardAdParams rewardAdParams;
    RelativeLayout rl_opt_vip;
    TextView tv_ad_tip;
    TextView tv_ad_vip;
    TextView tv_ad_vip_tip;
    TextView tv_opt_launch;
    TextView tv_opt_view_ad;
    TextView tv_opt_vip;
    private boolean hasNet = true;
    private int mAdType = 1;
    private boolean adError = false;
    boolean hasNoNet = false;

    class MyReceiver extends BroadcastReceiver {
        MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i10 = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            if (i10 > 0) {
                Intent intent2 = new Intent();
                intent2.setAction(p5.a.f96196g0);
                RewardAdDialogActivity.this.sendBroadcast(intent2);
                if (((BaseDialogActivity) RewardAdDialogActivity.this).callback instanceof e6.b) {
                    ((e6.b) ((BaseDialogActivity) RewardAdDialogActivity.this).callback).onAdClose();
                }
                RewardAdDialogActivity.this.finish();
            }
        }
    }

    class a implements NetBroadcastReceiver.a {
        a() {
        }

        @Override // com.join.mgps.broadcast.NetBroadcastReceiver.a
        public void a(int netMobile) {
            if (netMobile == 1) {
                RewardAdDialogActivity rewardAdDialogActivity = RewardAdDialogActivity.this;
                if (rewardAdDialogActivity.hasNoNet) {
                    rewardAdDialogActivity.hasNoNet = true;
                    rewardAdDialogActivity.initCallBack();
                    com.join.mgps.ad.a.g(RewardAdDialogActivity.this).h(RewardAdDialogActivity.this.mAdType, RewardAdDialogActivity.this.mAppID, RewardAdDialogActivity.this.mAdID, RewardAdDialogActivity.this.adVideoCallBack);
                }
            }
            RewardAdDialogActivity.this.updateNetState();
        }
    }

    class b implements Callback<ResultMainBean<SearchPostsBean>> {
        b() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<SearchPostsBean>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<SearchPostsBean>> call, Response<ResultMainBean<SearchPostsBean>> response) {
        }
    }

    class c extends com.join.mgps.ad.t {
        c() {
        }

        @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADClose() {
            super.onWfADClose();
            RewardAdDialogActivity.this.finish();
            if (((BaseDialogActivity) RewardAdDialogActivity.this).callback instanceof e6.b) {
                ((e6.b) ((BaseDialogActivity) RewardAdDialogActivity.this).callback).onAdClose();
            }
        }

        @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfADLoad(boolean showAd) {
            super.onWfADLoad(showAd);
            RewardAdDialogActivity.this.adError = false;
        }

        @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfError(int err, String msg) {
            super.onWfError(err, msg);
            RewardAdDialogActivity.this.adError = true;
        }

        @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoCached() {
            super.onWfVideoCached();
            RewardAdDialogActivity.this.adError = false;
        }

        @Override // com.join.mgps.ad.t, com.join.mgps.ad.n
        public void onWfVideoComplete() {
            super.onWfVideoComplete();
            UserPrefs userPrefs = new UserPrefs(RewardAdDialogActivity.this);
            userPrefs.setAdGamesHasSeeCount(userPrefs.getAdGamesHasSeeCount() + 1);
            if (((BaseDialogActivity) RewardAdDialogActivity.this).callback instanceof e6.b) {
                ((e6.b) ((BaseDialogActivity) RewardAdDialogActivity.this).callback).onAdShow();
            }
            RewardAdDialogActivity.this.sendData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCallBack() {
        if (this.adVideoCallBack == null) {
            this.adVideoCallBack = new c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendData() {
        RequestInfoArgs requestInfoArgs = new RequestInfoArgs();
        requestInfoArgs.setUid(AccountUtil_.getInstance_(this).getAccountData().getUid());
        RequestInfoArgs.RequestInfoinfo requestInfoinfo = new RequestInfoArgs.RequestInfoinfo();
        requestInfoinfo.setTime(System.currentTimeMillis());
        requestInfoinfo.setType(1);
        requestInfoinfo.setUid(AccountUtil_.getInstance_(this).getAccountData().getUid() + "");
        requestInfoArgs.setInfo(com.papa.sim.statistic.http.c.b(JsonMapper.getInstance().toJson(requestInfoinfo)));
        com.join.mgps.rpc.impl.d.O1().N1().N1(RequestBeanUtil.getInstance(this).getDefalutRequestBean(requestInfoArgs)).enqueue(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetState() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            this.hasNet = false;
            this.tv_ad_vip_tip.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.tv_opt_vip.getLayoutParams();
            layoutParams.topMargin = 0;
            this.tv_opt_vip.setLayoutParams(layoutParams);
            this.tv_ad_tip.setText("观看视频广告可以支持悟饭更好\n更快上传单机游戏资源");
            this.tv_opt_vip.setText("开启网络看广告");
            this.tv_opt_view_ad.setText("狠心拒绝，离线游戏");
            return;
        }
        this.hasNet = true;
        this.tv_ad_vip_tip.setVisibility(0);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.tv_opt_vip.getLayoutParams();
        layoutParams2.topMargin = (int) getResources().getDimension(R.dimen.wdp11);
        this.tv_opt_vip.setLayoutParams(layoutParams2);
        SingleGameAdCfgBean singleGameAdCfgBean = this.mCfgBean;
        if (singleGameAdCfgBean != null) {
            if (singleGameAdCfgBean.getFree_receive_vip() == 1) {
                this.tv_ad_tip.setText(this.mCfgBean.getF_tip_text());
                this.tv_opt_vip.setText(this.mCfgBean.getF_btn_text());
                this.tv_opt_view_ad.setText(this.mCfgBean.getB_btn_text());
                this.tv_ad_vip_tip.setText(this.mCfgBean.getF_ic_text());
                try {
                    int i10 = Integer.parseInt(this.mCfgBean.getF_ic_text());
                    int adGamesHasSeeCount = new UserPrefs(this).getAdGamesHasSeeCount();
                    if (i10 - adGamesHasSeeCount > 0) {
                        this.tv_ad_vip_tip.setText("仅需" + adGamesHasSeeCount + "次");
                    }
                } catch (Exception unused) {
                }
            } else {
                this.tv_ad_tip.setText(this.mCfgBean.getTip_text());
                this.tv_opt_vip.setText(this.mCfgBean.getT_btn_text());
                this.tv_opt_view_ad.setText(this.mCfgBean.getB_btn_text());
            }
        }
        com.join.android.app.common.utils.l.d(this.icon, R.drawable.ic_gdt_ad_tv, this.mCfgBean.getF_play_ic());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (v10 == this.iv_close) {
            finish();
            return;
        }
        if (v10 == this.rl_opt_vip) {
            if (!this.hasNet) {
                com.papa.sim.statistic.t.l(this).R1(Event.onAdvert23_offline, new Ext());
                UtilsMy.N3(this);
                return;
            }
            SingleGameAdCfgBean singleGameAdCfgBean = this.mCfgBean;
            if (singleGameAdCfgBean != null) {
                if (singleGameAdCfgBean.getFree_receive_vip() == 1) {
                    IntentUtil.getInstance().goShareWebActivity(this, this.mCfgBean.getF_btn_url());
                } else {
                    SingleGameAdCfgBean singleGameAdCfgBean2 = this.mCfgBean;
                    if (singleGameAdCfgBean2 != null && com.join.mgps.Util.t2.i(singleGameAdCfgBean2.getT_btn_url())) {
                        Intent intent = new Intent("com.tools.AdBroadcast");
                        intent.putExtra("action", 3);
                        intent.putExtra("url", this.mCfgBean.getT_btn_url());
                        sendBroadcast(intent);
                    }
                }
            }
            com.papa.sim.statistic.t.l(this).R1(Event.onMemberAdvert23, new Ext());
            return;
        }
        if (v10 != this.tv_opt_view_ad) {
            if (v10 == this.tv_opt_launch) {
                com.papa.sim.statistic.t.l(this).R1(Event.commonClick, new ExtBean().setSopName("单机启动弹窗").setGameId(this.mGameId).setResourceId(this.mResourceId).buildScene().toExt());
                finish();
                IDialogActivityCallback iDialogActivityCallback = this.callback;
                if (iDialogActivityCallback instanceof e6.b) {
                    ((e6.b) iDialogActivityCallback).onDirectLaunch();
                    return;
                }
                return;
            }
            return;
        }
        boolean z10 = this.hasNet;
        if (z10 && !this.adError) {
            Activity activity = MApplication.f3182z.getActivity();
            if (activity != null) {
                com.join.mgps.ad.a.g(this).i(activity);
            }
            com.papa.sim.statistic.t.l(this).R1(Event.onAdvert23, new Ext());
            IDialogActivityCallback iDialogActivityCallback2 = this.callback;
            if (iDialogActivityCallback2 instanceof e6.b) {
                ((e6.b) iDialogActivityCallback2).onAdShow();
                return;
            }
            return;
        }
        if (z10 && this.adError) {
            com.join.mgps.Util.a3.b(this).d("视频加载失败");
        } else {
            com.papa.sim.statistic.t.l(this).R1(Event.gameAdvert23_offline, new Ext());
        }
        finish();
        IDialogActivityCallback iDialogActivityCallback3 = this.callback;
        if (iDialogActivityCallback3 instanceof e6.b) {
            ((e6.b) iDialogActivityCallback3).onAdClose();
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reward_ad);
        com.join.mgps.Util.p2.v(this);
        this.iv_close = (ImageView) findViewById(R.id.iv_close);
        this.tv_ad_tip = (TextView) findViewById(R.id.tv_ad_tip);
        this.rl_opt_vip = (RelativeLayout) findViewById(R.id.rl_opt_vip);
        this.tv_opt_vip = (TextView) findViewById(R.id.tv_opt_vip);
        this.tv_ad_vip_tip = (TextView) findViewById(R.id.tv_ad_vip_tip);
        this.tv_opt_view_ad = (TextView) findViewById(R.id.tv_opt_view_ad);
        TextView textView = (TextView) findViewById(R.id.tv_opt_launch);
        this.tv_opt_launch = textView;
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        this.icon = (SimpleDraweeView) findViewById(R.id.icon);
        this.iv_close.setOnClickListener(this);
        this.tv_ad_vip_tip.setOnClickListener(this);
        this.tv_opt_view_ad.setOnClickListener(this);
        this.tv_opt_launch.setOnClickListener(this);
        this.rl_opt_vip.setOnClickListener(this);
        if (getIntent() != null) {
            RewardAdParams rewardAdParams = (RewardAdParams) getIntent().getSerializableExtra(KEY_REWARD_PARAMS);
            this.rewardAdParams = rewardAdParams;
            if (rewardAdParams != null) {
                this.mAdType = rewardAdParams.getAdType();
                this.mCfgBean = this.rewardAdParams.getCfgBean();
                this.mAdID = this.rewardAdParams.getAdId();
                this.mAppID = this.rewardAdParams.getAppId();
                this.mDuration = this.rewardAdParams.getDuration();
                this.mGameId = this.rewardAdParams.getGameId();
                this.mResourceId = this.rewardAdParams.getResourceId();
            }
        }
        if (com.join.android.app.common.utils.m.j(this)) {
            com.papa.sim.statistic.t.l(this).R1(Event.showAdvert23, new Ext());
        } else {
            this.hasNoNet = true;
            com.papa.sim.statistic.t.l(this).R1(Event.showAdvert23_offline, new Ext());
        }
        updateNetState();
        initCallBack();
        com.join.mgps.ad.a.g(this).h(this.mAdType, this.mAppID, this.mAdID, this.adVideoCallBack);
        NetBroadcastReceiver netBroadcastReceiver = new NetBroadcastReceiver();
        this.netBroadcastReceiver = netBroadcastReceiver;
        netBroadcastReceiver.a(new a());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        registerReceiver(this.netBroadcastReceiver, intentFilter);
        registerMyReceiver();
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        NetBroadcastReceiver netBroadcastReceiver = this.netBroadcastReceiver;
        if (netBroadcastReceiver != null) {
            unregisterReceiver(netBroadcastReceiver);
            this.netBroadcastReceiver = null;
        }
        MyReceiver myReceiver = this.myReceiver;
        if (myReceiver != null) {
            unregisterReceiver(myReceiver);
            this.myReceiver = null;
        }
        com.join.mgps.ad.a.g(this).b();
    }

    void registerMyReceiver() {
        this.myReceiver = new MyReceiver();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        registerReceiver(this.myReceiver, intentFilter);
    }
}
