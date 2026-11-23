package com.join.mgps.va.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.MApplication;
import com.cloudplay.messagesdk.MessageSDK;
import com.cloudplay.messagesdk.listener.SendListener;
import com.cloudplay.messagesdk.socket.websocket.schedulers.MessageSchedulerType;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.g;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.w0;
import com.join.mgps.activity.x5;
import com.join.mgps.cloud.bean.HMMessage;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.SpValue;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.papa91.arc.ext.ToastManager;
import com.papa91.arc.util.StringUtils;
import p5.a;
import w2.b;

/* JADX INFO: loaded from: classes3.dex */
public class MessengerService extends Service {
    public static final int A = 30;
    public static final int B = 31;
    public static final int C = 32;
    public static final int D = 33;
    public static final int E = 34;
    public static final String F = "com.upload.wufun.screenshot";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f73285b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f73286c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f73287d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f73288e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f73289f = 5;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f73290g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f73291h = 7;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f73292i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f73293j = 9;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f73294k = 10;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f73295l = 11;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f73296m = 12;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f73297n = 13;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f73298o = 14;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f73299p = 15;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f73300q = 16;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f73301r = 17;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f73302s = 18;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f73303t = 19;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f73304u = 20;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f73305v = 21;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f73306w = 26;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f73307x = 27;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f73308y = 28;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f73309z = 29;

    class IncomingHandler extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f73312a;

        public IncomingHandler(Context context) {
            this.f73312a = context;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Context context = this.f73312a;
            if (context == null) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            Bundle data = msg.getData();
            if (data == null) {
                return;
            }
            String string = data.getString("gameId");
            Ext ext = new Ext();
            ext.setGameId(string);
            String string2 = "";
            ext.setFrom(data.getString("from", ""));
            ext.setPosition(data.getString("position", ""));
            String string3 = data.getString("imagePath", "");
            ext.setUid(MessengerService.this.e());
            ext.setFromTabId(data.getString("fromTabId", ""));
            ext.setArticleId(data.getString("articleId", ""));
            String string4 = data.getString("where", "");
            ext.setLiveTime(data.getLong(CommonService_.AnonymousClass36.f72735c, 0L));
            switch (msg.what) {
                case 1:
                    t.l(applicationContext).R1(Event.showMod, ext);
                    break;
                case 2:
                    t.l(applicationContext).R1(Event.onclickMod, ext);
                    break;
                case 3:
                    t.l(applicationContext).R1(Event.openMod, ext);
                    break;
                case 4:
                    t.l(applicationContext).R1(Event.showVippopupMod, ext);
                    break;
                case 5:
                    t.l(applicationContext).R1(Event.onclickVippopupMod, ext);
                    break;
                case 6:
                    t.l(applicationContext).R1(Event.exitMod, ext);
                    t.l(applicationContext).R1(Event.exitVirtualGame, ext);
                    Intent intent = new Intent();
                    intent.setAction(a.I0);
                    this.f73312a.sendBroadcast(intent);
                    break;
                case 7:
                    t.l(applicationContext).R1(Event.modgamestart, ext);
                    break;
                case 8:
                    t.l(applicationContext).R1(Event.assistShow, ext);
                    break;
                case 9:
                    t.l(applicationContext).R1(Event.clickAssist, ext);
                    break;
                case 10:
                    Intent intent2 = new Intent(MessengerService.F);
                    intent2.putExtra("imagePath", string3);
                    MessengerService.this.sendBroadcast(intent2);
                    break;
                case 11:
                    Object obj = msg.obj;
                    if (obj != null) {
                        if (obj instanceof Bundle) {
                            Bundle bundle = (Bundle) obj;
                            string2 = bundle.getString("action");
                            bundle.getString("fromCls");
                        }
                        Intent intent3 = new Intent(string2);
                        intent3.putExtras(data);
                        MessengerService.this.sendBroadcast(intent3);
                    }
                    break;
                case 13:
                    t.l(applicationContext).R1(Event.clickPiix, ext);
                    break;
                case 14:
                    t.l(applicationContext).R1(Event.clickNav, ext);
                    break;
                case 15:
                    t.l(applicationContext).R1(Event.realNameUpWindows, ext);
                    break;
                case 16:
                    t.l(applicationContext).R1(Event.clickKnowGoRealPage, ext);
                    break;
                case 17:
                    t.l(applicationContext).R1(Event.antiAddtionWindowUp, ext);
                    break;
                case 18:
                    t.l(applicationContext).R1(Event.realNameDisplayWindow, ext);
                    break;
                case 19:
                    t.l(applicationContext).R1(Event.clickClosedRealNameWindow, ext);
                    break;
                case 20:
                    t.l(applicationContext).R1(Event.nonageAstrictHint, ext);
                    break;
                case 21:
                    t.l(applicationContext).R1(Event.realNameClickSubmit, ext);
                    break;
                case 26:
                    t.l(applicationContext).R1(Event.closedRealNameWindow, ext);
                    break;
                case 27:
                    long j10 = data.getLong(CommonService_.AnonymousClass36.f72735c);
                    h1.e("liveTime:" + j10 + " receive");
                    if (j10 == 0) {
                        return;
                    }
                    ext.setLiveTime(j10 / 1000);
                    h1.e("liveTime:" + j10 + " send");
                    t.l(applicationContext).R1(Event.gamePlayTimes, ext);
                    break;
                case 28:
                    Data data2 = new Data();
                    if (StringUtils.isNotEmpty(string)) {
                        data2.setGameId(string);
                    }
                    t.l(MessengerService.this.getApplicationContext()).s1(Event.singleStartGamePageList, Event.valueOf(string4), String.valueOf(MessengerService.this.e()), ext, data2);
                    break;
                case 29:
                    Data data3 = new Data();
                    if (StringUtils.isNotEmpty(string)) {
                        data3.setGameId(string);
                    }
                    t.l(MessengerService.this.getApplicationContext()).s1(Event.singleStartGamePageDetail, Event.valueOf(string4), String.valueOf(MessengerService.this.e()), ext, data3);
                    break;
                case 30:
                    MessengerService.this.h(data.getBoolean("expand", false));
                    break;
                case 31:
                    MessengerService.this.i("first_show_mod", Boolean.valueOf(data.getBoolean("first_show_mod")));
                    break;
                case 32:
                    String string5 = data.getString("ext");
                    if (StringUtils.isNotEmpty(string5)) {
                        DomainInfoBean domainInfoBean = (DomainInfoBean) JsonMapper.getInstance().fromJson(string5, DomainInfoBean.class);
                        if (domainInfoBean == null) {
                            ToastManager.show("无法调起微信小程序");
                        } else {
                            t.l(MessengerService.this.getApplicationContext()).R1(Event.pdModGameFeedbackClick, ext.setGameId(string).setIsJoin(domainInfoBean.getIs_join()).setTestAbNumber(domainInfoBean.getAb_test_number()));
                            if (g.t0(this.f73312a).e(this.f73312a, "com.tencent.mm")) {
                                UtilsMy.D4(MApplication.f3182z, domainInfoBean.getInfo(), "mod_game_feedback");
                            }
                        }
                    }
                    break;
                case 33:
                    ext.setActType(data.getString("sceneType", ""));
                    t.l(MessengerService.this.getApplicationContext()).R1(Event.pdReserveCode, ext);
                    break;
                case 34:
                    MessengerService.this.g(data);
                    break;
            }
            super.handleMessage(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int e() {
        try {
            AccountBean accountBeanD = d();
            if (accountBeanD != null) {
                return accountBeanD.getUid();
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(String... msg) {
        x5.a(", ", msg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            f("send cloud message start. isRunningCloud=" + w0.n());
            String string = bundle.getString("gameId");
            String string2 = bundle.getString("data");
            String string3 = bundle.getString("action");
            f("action=" + string3 + " data=" + string2);
            if (!TextUtils.isEmpty(string3) && !TextUtils.isEmpty(string2)) {
                if (string3.equals(Constants.WS_MESSAGE_TYPE_INTENT)) {
                    f("parse custom message");
                    IntentDateBean intentDateBean = (IntentDateBean) JsonMapper.getInstance().fromJson(string2, IntentDateBean.class);
                    if (intentDateBean == null) {
                        return;
                    }
                    intentDateBean.setExt4(string);
                    try {
                        if (w0.n()) {
                            f("call MessageSDK.instance.sendMessage");
                            HMMessage.Intent intent = new HMMessage.Intent();
                            intent.setStr(JsonMapper.getInstance().toJson(intentDateBean));
                            final String json = JsonMapper.getInstance().toJson(intent);
                            MessageSDK.getInstance().sendMessage(json, new SendListener() { // from class: com.join.mgps.va.service.MessengerService.1
                                @Override // com.cloudplay.messagesdk.listener.SendListener
                                public /* synthetic */ MessageSchedulerType getSchedulerObserveOn() {
                                    return b.a(this);
                                }

                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // com.cloudplay.messagesdk.listener.SendListener
                                public void onResult(boolean b10, String errorMsg) {
                                    MessengerService.this.f("send cloud message result: " + b10 + " " + errorMsg);
                                    if (b10) {
                                        return;
                                    }
                                    ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(MessengerService.this).extra("action", "sendHMMessage")).extra("message", json)).a();
                                }
                            });
                            f("call MessageSDK.instance.sendMessage. end");
                        } else {
                            IntentUtil.getInstance().intentActivity(this, intentDateBean);
                        }
                    } catch (Exception unused) {
                        f("custom message send error");
                        try {
                            IntentUtil.getInstance().intentActivity(this, intentDateBean);
                        } catch (Exception unused2) {
                        }
                    }
                }
                f("send cloud message end");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            f("send cloud message error");
        }
    }

    public AccountBean d() {
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("PrefDef", 4);
            String string = sharedPreferences.getString("accountDataV2", "");
            if (StringUtils.isNotEmpty(string)) {
                return (AccountBean) JsonMapper.getInstance().fromJson(AESUtils.decrypt(string), AccountBean.class);
            }
            String string2 = sharedPreferences.getString("accountData", "");
            if (StringUtils.isNotEmpty(string2)) {
                AccountBean accountBean = (AccountBean) JsonMapper.getInstance().fromJson(string2, AccountBean.class);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                if (accountBean != null) {
                    editorEdit.putString("accountDataV2", AESUtils.encrypt(string2));
                    return accountBean;
                }
            }
            return new AccountBean();
        } catch (Exception e10) {
            e10.printStackTrace();
            return new AccountBean();
        }
    }

    public void h(boolean show) {
        Intent intent = new Intent(a.L0);
        intent.putExtra(CommonService_.AnonymousClass39.f72747b, "expandIntroductionView_" + e());
        intent.putExtra("show", show);
        sendBroadcast(intent);
    }

    public void i(String key, Object sp_value) {
        Intent intent = new Intent(a.M0);
        intent.putExtra(CommonService_.AnonymousClass41.f72754b, key);
        if (sp_value instanceof Boolean) {
            intent.putExtra(CommonService_.AnonymousClass41.f72755c, new SpValue((Boolean) sp_value));
        } else if (sp_value instanceof Integer) {
            intent.putExtra(CommonService_.AnonymousClass41.f72755c, new SpValue((Integer) sp_value));
        } else if (sp_value instanceof String) {
            intent.putExtra(CommonService_.AnonymousClass41.f72755c, new SpValue((String) sp_value));
        } else if (sp_value instanceof Float) {
            intent.putExtra(CommonService_.AnonymousClass41.f72755c, new SpValue((Float) sp_value));
        } else if (sp_value instanceof Long) {
            intent.putExtra(CommonService_.AnonymousClass41.f72755c, new SpValue((Long) sp_value));
        }
        sendBroadcast(intent);
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return new Messenger(new IncomingHandler(this)).getBinder();
    }
}
