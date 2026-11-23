package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PapayResult;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.ResultMainBean;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.payfinish_activirty)
public class PayFinishActivity extends BaseActivity {
    Context context;
    DownloadTask downloadTask;

    @Extra
    PapayResult papayResult;
    com.join.mgps.rpc.e rpcClient;

    class a implements com.join.android.app.common.http.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f55462a;

        a(final boolean val$needDown) {
            this.f55462a = val$needDown;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object o10) {
            PayFinishActivity.this.showTost("获取游戏信息失败");
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object o10) {
            ResultMainBean resultMainBean = (ResultMainBean) o10;
            if (resultMainBean == null || resultMainBean.getFlag() == 0) {
                if (resultMainBean == null || resultMainBean.getFlag() == 0) {
                    PayFinishActivity.this.showTost("获取游戏信息失败");
                    return;
                } else {
                    PayFinishActivity.this.showTost("获取游戏信息失败");
                    return;
                }
            }
            PayGameDetialBean payGameDetialBean = (PayGameDetialBean) resultMainBean.getMessages().getData();
            if (payGameDetialBean != null) {
                if (payGameDetialBean.getGame_info() == null) {
                    PayFinishActivity.this.showTost("稍后再试");
                    return;
                }
                CollectionBeanSub game_info = payGameDetialBean.getGame_info();
                DownloadTask downloadTaskG = q5.f.M().G(game_info.getGame_id());
                Intent intent = new Intent(p5.a.G);
                intent.putExtra("gameData", game_info);
                PayFinishActivity.this.sendBroadcast(intent);
                if (downloadTaskG == null && this.f55462a) {
                    com.php25.PDownload.d.c(game_info.getDownloadTask(), PayFinishActivity.this.context);
                }
                PayFinishActivity.this.finish();
            }
        }
    }

    @AfterViews
    void afterview() {
        this.context = this;
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
    }

    void checkAppPay(String gameid, final boolean needDown) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showTost("请检查网络连接");
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            int uid = accountData != null ? accountData.getUid() : 0;
            RequestAppDetialArgs requestAppDetialArgs = new RequestAppDetialArgs();
            requestAppDetialArgs.setDeviceid("");
            requestAppDetialArgs.setVersion(com.join.android.app.common.utils.q.n(this.context).z() + "_" + com.join.android.app.common.utils.q.n(this.context).A());
            requestAppDetialArgs.setGame_id(gameid);
            requestAppDetialArgs.setUid(uid);
            requestAppDetialArgs.setToken(accountData.getToken());
            com.join.mgps.rpc.n.c(requestAppDetialArgs, new a(needDown));
        } catch (Exception e10) {
            e10.printStackTrace();
            showTost("获取游戏信息失败");
        }
    }

    @Click
    void closed() {
        checkAppPay(this.papayResult.getGameid(), false);
        finish();
    }

    @Click
    void downButn() {
        checkAppPay(this.papayResult.getGameid(), true);
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }
}
