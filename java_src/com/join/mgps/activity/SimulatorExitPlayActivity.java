package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.AppBeanMain;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameMasteryLevel;
import com.join.mgps.dto.GameTimeLevel;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSimulatorAchievementListArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.SimulatorAchievementBean;
import com.join.mgps.dto.SimulatorExitListBean;
import com.join.mgps.dto.SimulatorExitPlayRequestArgs;
import com.join.mgps.dto.SimulatorExitPlayResponseData;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.bean.AchievementBean;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_simulator_exit_play)
public class SimulatorExitPlayActivity extends BaseAppCompatActivity implements com.join.mgps.adapter.o7.a {

    @ViewById
    SimpleDraweeView adIcon;

    @ViewById
    TextView adTitle;
    com.join.mgps.adapter.o7 adapter;

    @Extra
    int[] battleUids;
    private SimulatorExitPlayResponseData data;

    @Extra
    String endId;
    com.join.mgps.rpc.j friendClient;

    @Extra
    String gameId;
    private boolean hasStatPdPoint;

    @Extra
    boolean hideLevel;

    @ViewById
    View info;
    private boolean isBside;
    private boolean isHasAchievement;

    @Extra
    boolean isStatEndGameFailedPoint;

    @Extra
    int level;

    @ViewById
    ImageView levelIcon;

    @ViewById
    TextView levelName;

    @Extra
    String levelUrl;

    @Extra
    int max;

    @Pref
    PrefDef_ prefDef;

    @Extra
    int progress;

    @ViewById
    ProgressBar progressBar;

    @ViewById
    TextView progressTv;

    @ViewById
    RecyclerView recyclerView;
    com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    View save;

    @Extra
    int time;

    @ViewById
    TextView title;

    @ViewById
    TextView tvTips;
    List<SimulatorExitListBean> streamList = null;
    int adType = -1;
    int lastInsertPosition = 0;

    class a extends LinearLayoutManager {
        a(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
            try {
                super.onLayoutChildren(recycler, state);
            } catch (IndexOutOfBoundsException e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements Callback<ResponseModel> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f56006b;

        b(final int val$ruid) {
            this.f56006b = val$ruid;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel> call, Response<ResponseModel> response) {
            if (response == null || response.body() == null) {
                SimulatorExitPlayActivity.this.toast("添加失败");
                return;
            }
            ResponseModel responseModelBody = response.body();
            if (responseModelBody.getError() == 0) {
                SimulatorExitPlayActivity.this.addSuccess(this.f56006b);
            } else {
                SimulatorExitPlayActivity.this.toast(responseModelBody.getMsg());
            }
        }
    }

    class c implements TTAdDislike.DislikeInteractionCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TTNativeExpressAd f56008a;

        c(final TTNativeExpressAd val$adTmp) {
            this.f56008a = val$adTmp;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onCancel() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onSelected(int position, String value, boolean enforce) {
            com.join.mgps.adapter.o7 o7Var = SimulatorExitPlayActivity.this.adapter;
            if (o7Var != null) {
                o7Var.O(this.f56008a);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onShow() {
        }
    }

    private void initViews() {
        int i10 = 8;
        this.info.setVisibility((this.isBside && this.isHasAchievement) ? 8 : 0);
        TextView textView = this.tvTips;
        if (this.isBside && this.isHasAchievement) {
            i10 = 0;
        }
        textView.setVisibility(i10);
        ViewGroup.LayoutParams layoutParams = this.progressBar.getLayoutParams();
        layoutParams.width = (int) getResources().getDimension((this.isBside && this.isHasAchievement) ? R.dimen.wdp408 : R.dimen.wdp280);
        this.progressBar.setLayoutParams(layoutParams);
        this.progressTv.setTextColor((this.isBside && this.isHasAchievement) ? Color.parseColor("#82888E") : getResources().getColor(R.color.white));
        ViewGroup.LayoutParams layoutParams2 = this.levelIcon.getLayoutParams();
        Resources resources = getResources();
        boolean z10 = this.isBside;
        int i11 = R.dimen.wdp53;
        layoutParams2.width = (int) resources.getDimension((z10 && this.isHasAchievement) ? R.dimen.wdp53 : R.dimen.wdp83);
        Resources resources2 = getResources();
        if (!this.isBside || !this.isHasAchievement) {
            i11 = R.dimen.wdp83;
        }
        layoutParams2.height = (int) resources2.getDimension(i11);
        this.levelIcon.setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setData$0(AppBeanMain appBeanMain, View view) {
        IntentUtil.getInstance().intentActivity(this, appBeanMain.getIntentDataBean());
    }

    private boolean needShowAd() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        return accountData == null || !com.join.mgps.Util.b.piv(accountData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void add(int ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(ruid);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            com.join.mgps.rpc.impl.h.p().o().i(friendReqBean).enqueue(new b(ruid));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void addSuccess(int ruid) {
        FriendBackGameRspBean.FriendInfo friendInfo;
        toast("已发送加好友申请");
        com.join.mgps.adapter.o7 o7Var = this.adapter;
        if (o7Var == null) {
            return;
        }
        for (T t10 : o7Var.getData()) {
            if ((t10.getData() instanceof FriendBackGameRspBean.FriendInfo) && (friendInfo = (FriendBackGameRspBean.FriendInfo) t10.getData()) != null && friendInfo.getUid() == ruid) {
                friendInfo.setSendFriendRequestStatus(true);
                break;
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_login_success"})
    public void afterLogin() {
        load();
    }

    @AfterViews
    void afterViews() {
        this.title.setText("对局详情");
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.friendClient = com.join.mgps.rpc.impl.h.p();
        this.isBside = this.prefDef.pageVersion().d().intValue() == 2;
        if (this.hideLevel) {
            setLevelVisibility(8);
        } else {
            setLevelVisibility(0);
            if (AccountUtil_.getInstance_(this).isTourist()) {
                this.save.setVisibility(0);
            } else {
                this.save.setVisibility(8);
            }
        }
        setLevel();
        com.join.mgps.adapter.o7 o7Var = new com.join.mgps.adapter.o7(this);
        this.adapter = o7Var;
        o7Var.Q(this);
        a aVar = new a(this);
        aVar.setOrientation(0);
        this.recyclerView.setLayoutManager(aVar);
        this.recyclerView.setAdapter(this.adapter);
        com.papa.sim.statistic.t.l(this).R1(Event.ExitGame_Recommend, new Ext());
        initViews();
    }

    void bindGDTAdStreamListener(List<SimulatorExitListBean> ads) {
        for (int i10 = 0; i10 < ads.size(); i10++) {
            SimulatorExitListBean simulatorExitListBean = ads.get(i10);
            NativeExpressADView nativeExpressADView = (NativeExpressADView) simulatorExitListBean.getData();
            int i11 = this.lastInsertPosition + 4;
            this.lastInsertPosition = i11;
            if (i11 < this.adapter.getData().size()) {
                this.adapter.addData(this.lastInsertPosition - 1, simulatorExitListBean);
                this.adapter.notifyItemInserted(this.lastInsertPosition - 1);
                if (i10 > 0) {
                    nativeExpressADView.render();
                }
            }
        }
    }

    void bindTTAdStreamListener(List<SimulatorExitListBean> ads) {
        for (int i10 = 0; i10 < ads.size(); i10++) {
            SimulatorExitListBean simulatorExitListBean = ads.get(i10);
            TTNativeExpressAd tTNativeExpressAd = (TTNativeExpressAd) simulatorExitListBean.getObj();
            int i11 = this.lastInsertPosition + 4;
            this.lastInsertPosition = i11;
            if (i11 < this.adapter.getData().size()) {
                this.adapter.addData(this.lastInsertPosition - 1, simulatorExitListBean);
                tTNativeExpressAd.setDislikeCallback(this, new c(tTNativeExpressAd));
                this.adapter.notifyItemInserted(this.lastInsertPosition - 1);
                if (i10 > 0) {
                    tTNativeExpressAd.render();
                }
            }
        }
    }

    void calcLevel() {
        int i10;
        SimulatorExitPlayResponseData simulatorExitPlayResponseData = this.data;
        if (simulatorExitPlayResponseData == null || simulatorExitPlayResponseData.getGameMasteryLevel() == null) {
            return;
        }
        try {
            GameMasteryLevel gameMasteryLevel = this.data.getGameMasteryLevel();
            int i11 = 0;
            int[] iArr = new int[0];
            int i12 = this.time;
            int current_lv_times = gameMasteryLevel.getCurrent_lv_times();
            int next_lv_times = gameMasteryLevel.getNext_lv_times();
            if (TextUtils.isEmpty(gameMasteryLevel.getLevel())) {
                i10 = 0;
            } else if (gameMasteryLevel.getLevel().equals("传说")) {
                i10 = 5;
            } else if (gameMasteryLevel.getLevel().equals("宗师")) {
                i10 = 4;
            } else if (gameMasteryLevel.getLevel().equals("精英")) {
                i10 = 3;
            } else {
                i10 = gameMasteryLevel.getLevel().equals("资深") ? 2 : 1;
            }
            try {
                ArrayList arrayList = (ArrayList) JsonMapper.getInstance().fromJson(this.prefDef.gameTimeLvCfg().d(), JsonMapper.getInstance().createCollectionType(ArrayList.class, GameTimeLevel.class));
                if (arrayList != null) {
                    iArr = new int[arrayList.size()];
                    for (int i13 = 0; i13 < arrayList.size(); i13++) {
                        iArr[i13] = ((GameTimeLevel) arrayList.get(i13)).getVal();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            int i14 = current_lv_times + i12;
            int i15 = 0;
            while (i11 < iArr.length) {
                i10 = i11 + 1;
                int i16 = iArr[i11];
                int i17 = i16 - i15;
                if (i14 > i17 && i11 != iArr.length - 1) {
                    i14 -= i17;
                    i11 = i10;
                    next_lv_times = i17;
                    i15 = i16;
                }
                next_lv_times = i17;
            }
            this.progress = Math.min(i14, next_lv_times);
            this.max = next_lv_times;
            this.level = i10;
            setLevel();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Click
    void exit() {
        try {
            if (this.isStatEndGameFailedPoint) {
                Ext ext = new Ext();
                ext.setEndId(this.endId);
                ext.setGameId(this.gameId);
                Data data = new Data();
                data.setGameId(this.gameId);
                com.papa.sim.statistic.t.l(this).i0(Event.gameVSFail, ext, data);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        sendEmuExitBroadcast(1);
        com.join.mgps.va.overmind.i.q().V();
        if (needShowAd()) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(2));
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getAchievementData() {
        SimulatorAchievementBean data;
        if (com.join.android.app.common.utils.m.j(this)) {
            RequestSimulatorAchievementListArgs requestSimulatorAchievementListArgs = new RequestSimulatorAchievementListArgs();
            EMUApkTable eMUApkTableN = t6.p.o().n(q5.f.M().G(this.gameId).getPlugin_num());
            requestSimulatorAchievementListArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            requestSimulatorAchievementListArgs.setPlugVersion(String.valueOf(eMUApkTableN == null ? 0 : eMUApkTableN.getVerCode()));
            requestSimulatorAchievementListArgs.setGameId(this.gameId);
            requestSimulatorAchievementListArgs.setToken(AccountUtil_.getInstance_(this).getToken());
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestSimulatorAchievementListArgs);
            requestModel.setDefault(this);
            ResponseModel<SimulatorAchievementBean> responseModelA0 = this.rpcGameClient.A0(requestModel.makeSign());
            if (responseModelA0 == null || responseModelA0.getData() == null || (data = responseModelA0.getData()) == null) {
                return;
            }
            showAchievement(data);
        }
    }

    @Click
    void info() {
        IntentUtil.getInstance().goShareWebActivity(this, this.levelUrl);
    }

    @Override // com.join.mgps.adapter.o7.a
    public void like(int ruid) {
        if (!IntentUtil.getInstance().isLogined(this) || IntentUtil.getInstance().isTourist(this)) {
            IntentUtil.getInstance().goLogin(this);
        } else {
            like1(ruid);
        }
    }

    @Background
    public void like1(int ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            HashMap map = new HashMap();
            map.put("uid", Integer.valueOf(accountData.getUid()));
            map.put(Constants.TOKEN, accountData.getToken());
            map.put("likeUid", Integer.valueOf(ruid));
            ResponseModel responseModelH = this.friendClient.h(map);
            if (responseModelH != null) {
                if (responseModelH.getError() == 0) {
                    likeSuccess(ruid);
                } else {
                    toast(responseModelH.getMsg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void likeSuccess(int ruid) {
        FriendBackGameRspBean.FriendInfo friendInfo;
        toast("点赞成功");
        com.join.mgps.adapter.o7 o7Var = this.adapter;
        if (o7Var == null) {
            return;
        }
        for (T t10 : o7Var.getData()) {
            if ((t10.getData() instanceof FriendBackGameRspBean.FriendInfo) && (friendInfo = (FriendBackGameRspBean.FriendInfo) t10.getData()) != null && friendInfo.getUid() == ruid) {
                friendInfo.setLikeStatus(false);
                break;
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void load() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            updateTitle();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            RequestModel<SimulatorExitPlayRequestArgs> requestModel = new RequestModel<>();
            requestModel.setDefault(this).setArgs(new SimulatorExitPlayRequestArgs());
            requestModel.getArgs().setUid(accountData.getUid() + "");
            requestModel.getArgs().setToken(accountData.getToken() + "");
            requestModel.getArgs().setGameId(this.gameId);
            if (this.battleUids == null) {
                this.battleUids = new int[0];
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 : this.battleUids) {
                arrayList.add(Integer.valueOf(i10));
            }
            requestModel.getArgs().setBattleUidList(arrayList);
            ResponseModel<SimulatorExitPlayResponseData> responseModelU = this.rpcGameClient.U(requestModel);
            if (responseModelU == null) {
                toast(getString(R.string.request_failure));
            } else if (responseModelU.getFlag() == 1) {
                setData(responseModelU.getData());
            } else {
                toast(responseModelU.getMessage());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAdEvent(com.join.mgps.event.b0 event) {
        com.join.mgps.adapter.o7 o7Var;
        if (event == null) {
            return;
        }
        if (event.c() == 6) {
            if (event.b() == null || !(event.b() instanceof NativeExpressADView) || (o7Var = this.adapter) == null) {
                return;
            }
            o7Var.N((NativeExpressADView) event.b());
            return;
        }
        if (event.c() == 5 && (event.b() instanceof List)) {
            if (this.streamList == null) {
                this.streamList = new ArrayList();
            }
            int i10 = 0;
            if (event.a() == 1) {
                this.adType = 1;
                List list = (List) event.b();
                if (list == null || list.size() <= 0) {
                    return;
                }
                while (i10 < list.size()) {
                    TTNativeExpressAd tTNativeExpressAd = (TTNativeExpressAd) list.get(i10);
                    SimulatorExitListBean simulatorExitListBean = new SimulatorExitListBean(4, tTNativeExpressAd.getExpressAdView());
                    simulatorExitListBean.setObj(tTNativeExpressAd);
                    this.streamList.add(simulatorExitListBean);
                    if (i10 == 0) {
                        tTNativeExpressAd.render();
                    }
                    i10++;
                }
                return;
            }
            if (event.a() == 2) {
                this.adType = 2;
                List list2 = (List) event.b();
                if (list2 == null || list2.size() <= 0) {
                    return;
                }
                while (i10 < list2.size()) {
                    NativeExpressADView nativeExpressADView = (NativeExpressADView) list2.get(i10);
                    SimulatorExitListBean simulatorExitListBean2 = new SimulatorExitListBean(4, nativeExpressADView);
                    simulatorExitListBean2.setObj(nativeExpressADView);
                    this.streamList.add(simulatorExitListBean2);
                    if (i10 == 0) {
                        nativeExpressADView.render();
                    }
                    i10++;
                }
            }
        }
    }

    @Override // com.join.mgps.adapter.o7.a
    public void onAddFriend(int friendUid) {
        if (!IntentUtil.getInstance().isLogined(this) || IntentUtil.getInstance().isTourist(this)) {
            IntentUtil.getInstance().goLogin(this);
            return;
        }
        add(friendUid);
        Ext ext = new Ext();
        ext.setFrom("1");
        com.papa.sim.statistic.t.l(this).R1(Event.addFriends, ext);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().setStatusBarColor(-16777216);
        getWindow().setNavigationBarColor(-16777216);
        org.greenrobot.eventbus.c.f().v(this);
        if (needShowAd()) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(4));
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        org.greenrobot.eventbus.c.f().A(this);
        try {
            List<SimulatorExitListBean> list = this.streamList;
            if (list != null) {
                for (SimulatorExitListBean simulatorExitListBean : list) {
                    if (simulatorExitListBean.getObj() instanceof TTNativeExpressAd) {
                        ((TTNativeExpressAd) simulatorExitListBean.getObj()).destroy();
                    } else if (simulatorExitListBean.getObj() instanceof NativeExpressADView) {
                        ((NativeExpressADView) simulatorExitListBean.getObj()).destroy();
                    }
                }
                this.streamList.clear();
                this.streamList = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.hideLevel) {
            setLevelVisibility(8);
        } else {
            setLevelVisibility(0);
            if (AccountUtil_.getInstance_(this).isTourist()) {
                this.save.setVisibility(0);
            } else {
                this.save.setVisibility(8);
                calcLevel();
            }
        }
        com.join.mgps.adapter.o7 o7Var = this.adapter;
        if (o7Var != null && o7Var.getData() != null && this.adapter.getData().size() < 1) {
            load();
        }
        if (this.isBside) {
            getAchievementData();
        }
    }

    @Click
    void resume() {
        if (needShowAd()) {
            org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.a(3));
        }
        sendEmuExitBroadcast(0);
        com.join.mgps.va.overmind.i.q().g();
        finish();
    }

    @Click
    void save() {
        IntentUtil.getInstance().goMyAccountLoginActivity(this);
    }

    public void senCommonEvent(String eventName, String gameId) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, eventName);
        intent.putExtra("gameId", gameId);
        sendBroadcast(intent);
    }

    void sendEmuExitBroadcast(int exit) {
        Intent intent = new Intent();
        intent.setAction("com.emu.ad.result");
        intent.putExtra("adAction", 100);
        intent.putExtra("exit", exit);
        if (Build.VERSION.SDK_INT >= 26) {
            intent.addFlags(16777216);
        }
        sendBroadcast(intent);
        com.join.mgps.va.overmind.i.t0(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setData(SimulatorExitPlayResponseData data) {
        List<SimulatorExitListBean> list;
        this.data = data;
        if (data == null) {
            return;
        }
        if (this.adapter != null) {
            ArrayList arrayList = new ArrayList();
            if (data.getBuddyList() == null || data.getBuddyList().size() <= 0) {
                this.title.setText("为您推荐以下游戏");
            } else {
                this.title.setText("对局详情");
                Iterator<FriendBackGameRspBean.FriendInfo> it2 = data.getBuddyList().iterator();
                while (it2.hasNext()) {
                    FriendBackGameRspBean.FriendInfo next = it2.next();
                    if (AccountUtil_.getInstance_(this).getUid().equals(next.getUid() + "")) {
                        it2.remove();
                    }
                }
                Iterator<FriendBackGameRspBean.FriendInfo> it3 = data.getBuddyList().iterator();
                while (it3.hasNext()) {
                    arrayList.add(new SimulatorExitListBean(2, it3.next()));
                }
            }
            if (data.getGameList() != null && data.getGameList().size() > 0) {
                Iterator<GamedetialModleFourBean> it4 = data.getGameList().iterator();
                while (it4.hasNext()) {
                    arrayList.add(new SimulatorExitListBean(1, it4.next()));
                }
            }
            if (data.getPd_info() != null && arrayList.size() > 0) {
                arrayList.add(1, new SimulatorExitListBean(5, data.getPd_info()));
                if (!this.hasStatPdPoint) {
                    com.papa.sim.statistic.t.l(this).R1(Event.pdSimulatorOutDetails, new Ext().setGameId(this.gameId).setIsJoin(data.getPd_info().getIs_join()).setTestAbNumber(data.getPd_info().getAb_test_number()));
                    this.hasStatPdPoint = true;
                }
            }
            this.adapter.setNewData(arrayList);
            if (needShowAd() && (list = this.streamList) != null && list.size() > 0) {
                int i10 = this.adType;
                if (i10 == 1) {
                    bindTTAdStreamListener(this.streamList);
                } else if (i10 == 2) {
                    bindGDTAdStreamListener(this.streamList);
                }
            }
        }
        calcLevel();
        if (data.getAdInfo() == null || data.getAdInfo().getMain() == null || data.getAdInfo().getMain().getAd_switch() != 1) {
            this.adIcon.setVisibility(8);
            this.adTitle.setVisibility(8);
            return;
        }
        this.adIcon.setVisibility(0);
        this.adTitle.setVisibility(0);
        if (data.getAdInfo().getMain() != null) {
            com.join.android.app.common.utils.l.h(this.adIcon, data.getAdInfo().getMain().getPic_remote());
            this.adTitle.setText(data.getAdInfo().getMain().getTitle());
        }
        if (data.getAdInfo().getSub() == null || data.getAdInfo().getSub().size() <= 0) {
            return;
        }
        final AppBeanMain appBeanMain = data.getAdInfo().getSub().get(0);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.mgps.activity.n9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57783b.lambda$setData$0(appBeanMain, view);
            }
        };
        this.adIcon.setOnClickListener(onClickListener);
        this.adTitle.setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setLevel() {
        int i10;
        String str;
        String str2;
        if (this.hideLevel) {
            return;
        }
        int i11 = this.level;
        if (i11 == 5) {
            str = "传说";
            i10 = R.drawable.gameleve5;
            str2 = "#FF760C";
        } else if (i11 == 4) {
            i10 = R.drawable.gameleve4;
            str = "宗师";
            str2 = "#F9C439";
        } else if (i11 == 3) {
            i10 = R.drawable.gameleve2;
            str = "精英";
            str2 = "#DB64EE";
        } else if (i11 == 2) {
            i10 = R.drawable.gameleve3;
            str = "资深";
            str2 = "#65C73C";
        } else {
            i10 = R.drawable.gameleve1;
            str = "见习";
            str2 = "#21E1E5";
        }
        if (this.isBside && this.isHasAchievement) {
            this.levelName.setText(GameMainActivity4.TITLE_ACHIEVEMENT);
            this.levelName.setTextColor(Color.parseColor("#C1D0DD"));
            this.levelIcon.setImageResource(R.drawable.ic_title_achievement);
            this.info.setVisibility(8);
            this.tvTips.setVisibility(0);
            return;
        }
        this.levelName.setTextColor(Color.parseColor(str2));
        this.progressBar.setMax(100);
        this.progressBar.invalidate();
        if (this.max == 0) {
            this.max = this.progress;
        }
        int i12 = this.max;
        if (i12 != 0) {
            this.progressBar.setProgress((this.progress * 100) / i12);
            this.progressTv.setText(this.progress + net.lingala.zip4j.util.e.F0 + this.max);
        }
        this.levelName.setText(str);
        this.levelIcon.setImageResource(i10);
        this.info.setVisibility(0);
        this.tvTips.setVisibility(8);
    }

    void setLevelVisibility(int visibility) {
        this.save.setVisibility(visibility);
        this.levelName.setVisibility(visibility);
        this.progressTv.setVisibility(visibility);
        this.levelIcon.setVisibility(visibility);
        this.progressBar.setVisibility(visibility);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showAchievement(SimulatorAchievementBean data) {
        boolean z10 = data.getTarget() > 0;
        this.isHasAchievement = z10;
        if (z10) {
            setLevel();
            initViews();
        }
        if (AccountUtil_.getInstance_(this).isTourist()) {
            showTouristAchievement(data);
            return;
        }
        this.progressTv.setText(data.getDone() + net.lingala.zip4j.util.e.F0 + data.getTarget());
        this.progressBar.setMax(data.getTarget());
        this.progressBar.setProgress(data.getDone());
        if (data.getTarget() <= data.getDone()) {
            this.tvTips.setText("已解锁所有成就");
            return;
        }
        this.tvTips.setText("还有" + (data.getTarget() - data.getDone()) + "个成就等你解锁");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTouristAchievement(SimulatorAchievementBean data) {
        Gson gson = new Gson();
        String string = getSharedPreferences("Papa_Stat_SharedPreferences", 4).getString("achievement_done", "");
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(string)) {
            Iterator<JsonElement> it2 = JsonParser.parseString(string).getAsJsonArray().iterator();
            while (it2.hasNext()) {
                arrayList.add((AchievementBean.AchievementInfo) gson.fromJson(it2.next(), AchievementBean.AchievementInfo.class));
            }
        }
        this.progressTv.setText(arrayList.size() + net.lingala.zip4j.util.e.F0 + data.getTarget());
        this.progressBar.setMax(data.getTarget());
        this.progressBar.setProgress(arrayList.size());
        this.tvTips.setText("还有" + (data.getTarget() - arrayList.size()) + "个成就等你解锁");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void toast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateTitle() {
        if (com.join.android.app.common.utils.m.j(this)) {
            this.title.setText("为您推荐以下游戏");
        } else {
            this.title.setText("网络已断开，请检查网络设置");
        }
    }
}
