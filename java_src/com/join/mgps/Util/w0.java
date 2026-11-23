package com.join.mgps.Util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;
import com.cloudplay.messagesdk.MessageSDK;
import com.czhj.sdk.common.Constants;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.base.impl.Downloadable;
import com.join.mgps.activity.CloudGameSwitchDialogActivity;
import com.join.mgps.activity.CloudGameTimeActivity_;
import com.join.mgps.activity.HMCloudMainActivity;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.LoginParams;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.hmcloud.HMCloudGameManager;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.arc.ext.ToastManager;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeStateRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeStateResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class w0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile w0 f50092g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f50095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult f50096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f50097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    HMCloudGameManager.f f50098f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f50094b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.join.mgps.rpc.c f50093a = com.join.mgps.rpc.impl.b.C();

    class a extends m6.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ HMCloudGameManager.f f50099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50100b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ExtBean f50101c;

        a(final HMCloudGameManager.f val$cloudParams, final Context val$context, final ExtBean val$extBean) {
            this.f50099a = val$cloudParams;
            this.f50100b = val$context;
            this.f50101c = val$extBean;
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            super.a(activity);
            activity.finish();
            HMCloudGameManager.W().K(this.f50099a.f71679a);
            w0.this.g(this.f50100b, this.f50099a, this.f50101c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f50103b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ HMCloudGameManager.f f50104c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ExtBean f50105d;

        b(final Context val$context, final HMCloudGameManager.f val$cloudParams, final ExtBean val$extBean) {
            this.f50103b = val$context;
            this.f50104c = val$cloudParams;
            this.f50105d = val$extBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w0.this.f50094b) {
                ToastManager.show("启动中,请稍后");
                return;
            }
            w0.this.f50094b = true;
            try {
                try {
                    UserInfo accountData = AccountUtil_.getInstance_(this.f50103b).getAccountData();
                    if (accountData != null) {
                        MessageCloudGamingFreeTimeStateRequest.MessageCloudGamingFreeTimeStateRequestParameters.b bVarNewBuilder = MessageCloudGamingFreeTimeStateRequest.MessageCloudGamingFreeTimeStateRequestParameters.newBuilder();
                        bVarNewBuilder.setUid(accountData.getUid());
                        bVarNewBuilder.setToken(accountData.getToken());
                        bVarNewBuilder.setGameId(this.f50104c.f71679a);
                        bVarNewBuilder.setAppVersion("");
                        HashMap map = new HashMap();
                        map.put("uid", bVarNewBuilder.getUid() + "");
                        map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                        map.put("gameId", bVarNewBuilder.getGameId() + "");
                        map.put("appVersion", "");
                        bVarNewBuilder.setSign(k2.d(map));
                        MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult messageCloudGamingFreeTimeStateResponseResultX = w0.this.f50093a.x(bVarNewBuilder.build());
                        if (messageCloudGamingFreeTimeStateResponseResultX != null && messageCloudGamingFreeTimeStateResponseResultX.getError() == 200) {
                            w0.this.o(this.f50103b, this.f50104c, messageCloudGamingFreeTimeStateResponseResultX, this.f50105d);
                        } else if (messageCloudGamingFreeTimeStateResponseResultX == null || messageCloudGamingFreeTimeStateResponseResultX.getError() != 701) {
                            ToastManager.show("数据获取失败");
                        } else {
                            AccountUtil_.getInstance_(this.f50103b).accountLoginOut(this.f50103b);
                            IntentUtil.getInstance().goLogin(this.f50103b, new LoginParams(1));
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } finally {
                w0.this.f50094b = false;
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult f50107b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f50108c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ExtBean f50109d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ HMCloudGameManager.f f50110e;

        c(final MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult val$info, final Context val$context, final ExtBean val$extBean, final HMCloudGameManager.f val$cloudParams) {
            this.f50107b = val$info;
            this.f50108c = val$context;
            this.f50109d = val$extBean;
            this.f50110e = val$cloudParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult messageCloudGamingFreeTimeStateResponseResult = this.f50107b;
                if (messageCloudGamingFreeTimeStateResponseResult != null && messageCloudGamingFreeTimeStateResponseResult.getData() != null) {
                    String[] strArrPivCld = com.join.mgps.Util.b.pivCld(this.f50107b.getData().getSecretKey());
                    if (strArrPivCld.length > 0) {
                        if (t2.i(strArrPivCld[2])) {
                            try {
                                w0.this.f50097e = Integer.valueOf(strArrPivCld[2]).intValue();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        w0 w0Var = w0.this;
                        int i10 = w0Var.f50097e;
                        if (i10 > 0) {
                            w0Var.r(this.f50108c, this.f50110e, this.f50107b, i10, this.f50109d);
                            return;
                        }
                        CloudGameTimeActivity_.intent(this.f50108c).a(w0.this.f50095c + "").b(this.f50109d.buildScene()).c(w0.this.f50097e).start();
                        ExtBean extBean = new ExtBean();
                        extBean.setGameId(w0.this.f50095c + "");
                        extBean.setTypeCode(EventP.TypeCode.page.name()).setChatId(EventP.ChatId.cloudGameNoTimeTips.name()).setResourceId(w0.this.f50095c + "").setParent(this.f50109d).buildScene();
                        com.papa.sim.statistic.t.l(this.f50108c).R1(Event.commonExp, extBean.toExt());
                        return;
                    }
                    return;
                }
                ToastManager.show("数据获取失败，请重试");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    private w0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Context context, HMCloudGameManager.f cloudParams, ExtBean extBean) {
        ThreadManager.runOnWriteThread(new b(context, cloudParams, extBean));
    }

    public static w0 h() {
        if (f50092g == null) {
            f50092g = new w0();
        }
        return f50092g;
    }

    public static DownloadTask i(Downloadable downloadable) {
        DownloadTask downloadTaskCloneOne;
        if (downloadable == null || downloadable.getGInfo() == null) {
            return null;
        }
        String modGameId = downloadable.getGInfo().getModGameId();
        String gameId = downloadable.getGInfo().getGameId();
        if (t2.h(modGameId) || "0".equals(modGameId)) {
            modGameId = gameId;
        }
        if (t2.h(modGameId)) {
            return null;
        }
        DownloadTask downloadTaskL = q5.f.M().L(modGameId);
        if (downloadTaskL != null) {
            return downloadTaskL;
        }
        if (downloadable instanceof DownloadTask) {
            downloadTaskCloneOne = ((DownloadTask) downloadable).cloneOne();
        } else {
            downloadTaskCloneOne = downloadable.getGInfo() instanceof DownloadTask ? ((DownloadTask) downloadable.getGInfo()).cloneOne() : downloadable.getGInfo().buildDownloadTask();
        }
        if (downloadTaskCloneOne == null) {
            return null;
        }
        downloadTaskCloneOne.setCrc_link_type_val("cld_" + modGameId);
        downloadTaskCloneOne.setRef_crc_sign_id(gameId);
        Dtype dtype = Dtype.CLOUD;
        downloadTaskCloneOne.setFileType(dtype.name());
        downloadTaskCloneOne.setRomType(dtype.name());
        downloadTaskCloneOne.setStatus(5);
        downloadTaskCloneOne.setFinishTime(System.currentTimeMillis());
        downloadTaskCloneOne.setUrl("cld_" + modGameId);
        downloadTaskCloneOne.setOpen(true);
        downloadTaskCloneOne.setNotCheckAddShortcut(true);
        q5.f.M().m(downloadTaskCloneOne);
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTaskCloneOne, 5));
        return downloadTaskCloneOne;
    }

    public static boolean j() {
        return true;
    }

    public static boolean k(List<TipBean> tag_info) {
        if (tag_info == null || tag_info.isEmpty()) {
            return false;
        }
        Iterator<TipBean> it2 = tag_info.iterator();
        while (it2.hasNext()) {
            if ("272".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(List<TipBean> tag_info) {
        if (tag_info == null || tag_info.isEmpty()) {
            return false;
        }
        Iterator<TipBean> it2 = tag_info.iterator();
        while (it2.hasNext()) {
            if ("269".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public static boolean m(List<TipBean> tag_info) {
        if (tag_info == null || tag_info.isEmpty()) {
            return false;
        }
        Iterator<TipBean> it2 = tag_info.iterator();
        while (it2.hasNext()) {
            if ("271".equals(it2.next().getId())) {
                return true;
            }
        }
        return false;
    }

    public static boolean n() {
        return MessageSDK.getInstance().isRunningCloud();
    }

    public static boolean p(List<TipBean> tag_info) {
        if (tag_info == null || tag_info.isEmpty()) {
            return false;
        }
        for (TipBean tipBean : tag_info) {
            if ("272".equals(tipBean.getId()) || "271".equals(tipBean.getId())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void r(Context context, HMCloudGameManager.f cloudParams, MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult info, int leftTime, ExtBean extBean) {
        this.f50095c = cloudParams.f71679a;
        this.f50096d = info;
        this.f50097e = leftTime;
        this.f50098f = cloudParams;
        ((HMCloudMainActivity_.u) HMCloudMainActivity_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).d(cloudParams.f71679a + "").g(leftTime).h(info.getData().getSecretKey()).i(info.getTipsMsg()).f(extBean.buildScene()).a(cloudParams.f71685g).b(cloudParams.f71686h).c(cloudParams.f71682d).e(cloudParams.f71681c).start();
    }

    void o(Context context, HMCloudGameManager.f cloudParams, MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult info, ExtBean extBean) {
        ThreadManager.runOnUiThread(new c(info, context, extBean, cloudParams));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void q(Context context, HMCloudGameManager.f cloudParams, ExtBean extBean) {
        if (!HMCloudGameManager.W().n0()) {
            j0.a().c(new com.join.mgps.event.v(HMCloudMainActivity.EVENT_NAME));
            g(context, cloudParams, extBean);
            return;
        }
        if (this.f50095c == cloudParams.f71679a) {
            ((HMCloudMainActivity_.u) HMCloudMainActivity_.intent(context).flags(C.ENCODING_PCM_MU_LAW)).d(cloudParams.f71679a + "").g(this.f50097e).h(this.f50096d.getData().getSecretKey()).i(this.f50096d.getTipsMsg()).a(cloudParams.f71685g).b(cloudParams.f71686h).c(cloudParams.f71682d).e(cloudParams.f71681c).start();
            return;
        }
        if (HMCloudGameManager.W().t0()) {
            HMCloudGameManager.W().e1();
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("gameId1", this.f50095c + "");
        intent.putExtra("gameId2", cloudParams.f71679a + "");
        IntentUtil.getInstance().startActivityWithCallback(context, CloudGameSwitchDialogActivity.class, intent, new a(cloudParams, context, extBean));
    }

    public void s(Context context, String gameId, ExtBean extBean) {
        q(context, new HMCloudGameManager.f(gameId.replace("cld_", "")), extBean);
    }
}
