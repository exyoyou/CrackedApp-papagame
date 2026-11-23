package com.join.mgps.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.MApplication;
import com.czhj.sdk.common.Constants;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.hmcloud.dialog.DialogUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.UserInfo;
import com.wufan.user.service.protobuf.enumeration.SceneType;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Fullscreen;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_cloud_game_time)
@Fullscreen
public class CloudGameTimeActivity extends BaseDialogActivity {
    private com.join.mgps.rpc.c accountClientV2;

    @Extra
    String gameId;
    boolean isSign = false;

    @ViewById
    ImageView iv_close;

    @Extra
    ExtBean parentExtBean;

    @Extra
    int playTime;

    @ViewById
    TextView tv_btn_1;

    @ViewById
    TextView tv_btn_2;

    @ViewById
    TextView tv_text_2;

    class a extends m6.d {
        a() {
        }

        @Override // m6.d, com.join.mgps.callbacks.r
        public void onEvent(Activity activity, int event, String jsonParams) {
            super.onEvent(activity, event, jsonParams);
            if (event == 2) {
                activity.finish();
                CloudGameTimeActivity.this.onShowSignDialog(jsonParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$0(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$1(View view) {
        ExtBean extBean = new ExtBean();
        extBean.setGameId(this.gameId);
        extBean.setTypeCode(EventP.TypeCode.btnBuy.name()).setChatId(EventP.ChatId.cloudGameNoTimeTips.name()).setResourceId(this.gameId).setParent(this.parentExtBean).buildScene();
        IntentUtil.getInstance().goShareWebActivity(this, com.join.mgps.rpc.h.O + "?gameId=" + this.gameId, extBean);
        com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.toExt());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterViews$2(View view) {
        checkSign();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$showSignDialog$3(DownloadTask downloadTask) {
        ExtBean extBean = new ExtBean();
        extBean.setParent(this.parentExtBean);
        extBean.setChatId(EventP.ChatId.cloudGameVipDailySignPop.name());
        extBean.setTypeCode(EventP.TypeCode.cloudGame.name());
        extBean.setGameId(downloadTask.getCrc_link_type_val().replace("cld_", ""));
        extBean.setResourceId(downloadTask.getCrc_link_type_val().replace("cld_", ""));
        com.papa.sim.statistic.t.l(this).R1(Event.gameStart, extBean.copy().buildScene().toExt());
        com.join.mgps.Util.w0.h().s(this, downloadTask.getCrc_link_type_val(), extBean);
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$showSignDialog$4() {
        finish();
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$showSignDialog$5() {
        finish();
        return Boolean.FALSE;
    }

    private void openWebPage(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        Intent intent = new Intent();
        IntentDateBean intentDateBean = new IntentDateBean();
        String str = com.join.mgps.rpc.h.U;
        intentDateBean.setLink_type(4);
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (!str.contains("isVip")) {
            if (str.contains("?") && str.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                str = str + "&isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
            } else {
                str = str + "?isVip=" + com.join.mgps.Util.b.pivc(accountData) + "&currentDay=" + adCfgInfo.getSignDay();
            }
        }
        if (com.join.mgps.Util.t2.i(str)) {
            intentDateBean.setLink_type_val(str);
            intent.putExtra("intentdate", intentDateBean);
            intent.putExtra("parentExtBean", new ExtBean().setFirstModule(EventP.FirstModel.meTab.name()).setSecondModule(EventP.SecondModel.myCloudGame.name()).setChatId(EventP.ChatId.myCloudGame.name()).buildScene());
            IntentUtil.getInstance().startActivityWithCallback(this, FullShareWebActivity_.class, intent, new a());
        }
    }

    @AfterViews
    void afterViews() {
        Object objValueOf;
        Object objValueOf2;
        com.join.mgps.Util.p2.v(this);
        if (this.accountClientV2 == null) {
            this.accountClientV2 = com.join.mgps.rpc.impl.b.C();
        }
        int i10 = this.playTime;
        int i11 = i10 / 3600;
        int i12 = (i10 - (i11 * 3600)) / 60;
        TextView textView = this.tv_text_2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("可用云玩时长:");
        if (i11 > 9) {
            objValueOf = Integer.valueOf(i11);
        } else {
            objValueOf = "0" + i11;
        }
        sb2.append(objValueOf);
        sb2.append(":");
        if (i12 > 9) {
            objValueOf2 = Integer.valueOf(i12);
        } else {
            objValueOf2 = "0" + i12;
        }
        sb2.append(objValueOf2);
        textView.setText(sb2.toString());
        this.iv_close.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57977b.lambda$afterViews$0(view);
            }
        });
        this.tv_btn_1.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58104b.lambda$afterViews$1(view);
            }
        });
        this.tv_btn_2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f58148b.lambda$afterViews$2(view);
            }
        });
        AccountUtil_.getInstance_(this).reload();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkSign() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null || TextUtils.isEmpty(accountData.getToken()) || !com.join.android.app.common.utils.m.j(this)) {
            return;
        }
        try {
            MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.b bVarNewBuilder = MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters.newBuilder();
            bVarNewBuilder.setUid(accountData.getUid());
            bVarNewBuilder.setToken(accountData.getToken());
            bVarNewBuilder.setSceneType(SceneType.CLOUD_GAMING_SIGN_BTN);
            bVarNewBuilder.setAppVersion(g8.b.a(this));
            HashMap map = new HashMap();
            map.put("uid", bVarNewBuilder.getUid() + "");
            map.put(Constants.TOKEN, bVarNewBuilder.getToken());
            map.put("sceneType", bVarNewBuilder.getSceneType().name());
            map.put("appVersion", bVarNewBuilder.getAppVersion());
            bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
            MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult messageCloudGamingAdCfgResponseResultN = this.accountClientV2.n(bVarNewBuilder.build());
            if (messageCloudGamingAdCfgResponseResultN == null || messageCloudGamingAdCfgResponseResultN.getError() != 200) {
                return;
            }
            showCloudSign(messageCloudGamingAdCfgResponseResultN.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, android.app.Activity
    public void finish() {
        super.finish();
        ExtBean extBean = new ExtBean();
        extBean.setGameId(this.gameId);
        extBean.setTypeCode(EventP.TypeCode.btnClose.name()).setChatId(EventP.ChatId.cloudGameNoTimeTips.name()).setResourceId(this.gameId).setParent(this.parentExtBean).buildScene();
        com.papa.sim.statistic.t.l(this).R1(Event.commonClick, extBean.toExt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 800)
    public void onShowSignDialog(String jsonParams) {
        try {
            JSONObject jSONObject = new JSONObject(jsonParams);
            showSignDialog(jSONObject.optString("totalTime"), jSONObject.optString("freeTime"), jSONObject.optString("vipTime"));
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    @Receiver(actions = {"com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"})
    void onVipChanged() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showCloudSign(MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        if (adCfgInfo.getIsSigned()) {
            openWebPage(adCfgInfo);
        } else {
            sign();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showSignDialog(String totalTime, String freeTime, String vipTime) {
        DialogUtils.INSTANCE.showSignDialog(this, totalTime, freeTime, vipTime, new Function1() { // from class: com.join.mgps.activity.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return this.f57815b.lambda$showSignDialog$3((DownloadTask) obj);
            }
        }, new Function0() { // from class: com.join.mgps.activity.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57900b.lambda$showSignDialog$4();
            }
        }, new Function0() { // from class: com.join.mgps.activity.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f57944b.lambda$showSignDialog$5();
            }
        });
        AccountUtil_.getInstance_(this).reload();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sign() {
        if (this.isSign) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            ToastManager.show("网络异常，请检查网络");
            return;
        }
        if (AccountUtil_.getInstance_(this).getAccountData().getNewMemberInfo().getIsSigned()) {
            com.kongzue.dialogx.dialogs.o.F3("今日已签,明日再来吧~");
            return;
        }
        this.isSign = true;
        MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.b bVarNewBuilder = MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest.newBuilder();
        UserInfo accountData = AccountUtil_.getInstance_(MApplication.f3182z).getAccountData();
        bVarNewBuilder.setUid(accountData.getUid()).setToken(accountData.getToken()).setAppVersion("517_6.1.7.0");
        HashMap map = new HashMap();
        map.put("uid", bVarNewBuilder.getUid() + "");
        map.put(Constants.TOKEN, bVarNewBuilder.getToken());
        map.put("appVersion", "517_6.1.7.0");
        bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
        updateSignUI(this.accountClientV2.l(bVarNewBuilder.build()));
        this.isSign = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateSignUI(MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult result) {
        boolean z10;
        String string;
        if (result == null || result.getError() != 200) {
            ToastManager.show("签到失败，请重试");
            z10 = false;
            string = "";
        } else {
            showSignDialog(result.getInto().getTotalTime(), result.getInto().getFreeTime(), result.getInto().getVipTime());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("total", result.getInto().getTotalTime());
                jSONObject.put("dailySign", result.getInto().getFreeTime());
                jSONObject.put("cloudGameVipSign", result.getInto().getVipTime());
                string = jSONObject.toString();
                z10 = true;
            } catch (JSONException e10) {
                throw new RuntimeException(e10);
            }
        }
        com.papa.sim.statistic.t.l(this).R1(Event.commonReport, this.parentExtBean.copy().setGameId(this.gameId).setChatId(EventP.ChatId.cloudGameVipDailySignPop.name()).setResultCode((z10 ? EventP.ResultCode.succ : EventP.ResultCode.fail).name()).setReMarks(string).buildScene().toExt());
    }
}
