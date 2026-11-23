package com.heepay.plugin.activity.logic;

import android.R;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.baidu.oauth.sdkbqt.result.OauthResult;
import com.haima.hmcp.Constants;
import com.heepay.plugin.activity.HyNotityActivity;
import com.heepay.plugin.c.c;
import com.heepay.plugin.c.d;
import com.heepay.plugin.c.e;
import com.heepay.plugin.c.h;
import com.heepay.plugin.c.i;
import com.heepay.plugin.domain.b;
import com.heepay.plugin.domain.f;
import com.join.mgps.dto.Constant;
import com.sigmob.sdk.base.mta.PointType;
import com.umeng.analytics.pro.q;
import com.windmill.sdk.WMConstants;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.net.URISyntaxException;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public abstract class LogicHyNotityActivity extends Activity {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected static final Integer f34244o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected static final Integer f34245p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected static final Integer f34246q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected static final Integer f34247r = 3;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected static final Integer f34248s = 4;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected static final Integer f34249t = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f34250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f34251b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f34252c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f34253d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.heepay.plugin.b.a f34254e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f34255f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ProgressDialog f34256g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected boolean f34257h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f34259j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f34260k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f34261l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected Timer f34262m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f34263n;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected WebView f34264u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected a f34265v;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f34258i = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected DialogInterface.OnCancelListener f34266w = new DialogInterface.OnCancelListener() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.6
        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            dialogInterface.dismiss();
            LogicHyNotityActivity.this.f34257h = true;
        }
    };

    protected class a extends Handler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference<LogicHyNotityActivity> f34276b;

        public a(LogicHyNotityActivity logicHyNotityActivity) {
            this.f34276b = new WeakReference<>(logicHyNotityActivity);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            LogicHyNotityActivity logicHyNotityActivity;
            LogicHyNotityActivity logicHyNotityActivity2;
            String str2;
            LogicHyNotityActivity logicHyNotityActivity3;
            String str3;
            LogicHyNotityActivity logicHyNotityActivity4;
            String str4;
            String str5 = "Token校验错误";
            String str6 = "Token校验失败";
            super.handleMessage(message);
            final LogicHyNotityActivity logicHyNotityActivity5 = this.f34276b.get();
            if (logicHyNotityActivity5 == null) {
                return;
            }
            try {
                int i10 = message.what;
                try {
                    if (i10 == 4120) {
                        LogicHyNotityActivity.this.h();
                        i.a().a(logicHyNotityActivity5, "连接服务器出错");
                        LogicHyNotityActivity.this.a("调用QueryPayStatus异常");
                        return;
                    }
                    if (i10 != 4121) {
                        try {
                            if (i10 != 4128) {
                                if (i10 != 4129) {
                                    switch (i10) {
                                        case 4097:
                                            d.a("----->", "版本信息获取成功");
                                            if (!LogicHyNotityActivity.this.f34250a.startsWith("http")) {
                                                LogicHyNotityActivity.this.e();
                                            } else {
                                                LogicHyNotityActivity.this.h();
                                            }
                                            break;
                                        case 4098:
                                            d.a("----->", "版本信息获取失败");
                                            LogicHyNotityActivity.this.h();
                                            Object obj = message.obj;
                                            if (obj == null || TextUtils.isEmpty(obj.toString())) {
                                                i.a().a(logicHyNotityActivity5, "版本信息获取失败");
                                            } else {
                                                i.a().a(logicHyNotityActivity5, message.obj.toString());
                                            }
                                            logicHyNotityActivity2 = LogicHyNotityActivity.this;
                                            str2 = "调用GetVersionInfo()失败";
                                            break;
                                        case 4099:
                                            LogicHyNotityActivity.this.h();
                                            i.a().a(logicHyNotityActivity5, "版本信息获取错误");
                                            LogicHyNotityActivity.this.a("调用GetVersionInfo()异常");
                                            d.a("----->", "版本信息获取错误");
                                            break;
                                        default:
                                            try {
                                                switch (i10) {
                                                    case q.a.f84858e /* 4101 */:
                                                        try {
                                                            d.a("----->", "调用SubmitPay成功");
                                                            com.heepay.plugin.domain.d dVar = (com.heepay.plugin.domain.d) message.obj;
                                                            int iB = dVar.b();
                                                            final String strA = dVar.a();
                                                            c.a("---->payType:" + iB);
                                                            c.a("---->param1:" + strA);
                                                            d.a("----->", "param1" + strA);
                                                            if (iB == 22) {
                                                                if (!strA.startsWith("ali_payqr:".replace("_", "")) && !strA.startsWith("ali_pays:".replace("_", ""))) {
                                                                    if (!strA.startsWith("http") && !strA.startsWith("https")) {
                                                                        LogicHyNotityActivity.this.h();
                                                                        LogicHyNotityActivity logicHyNotityActivity6 = LogicHyNotityActivity.this;
                                                                        logicHyNotityActivity6.f34259j = false;
                                                                        logicHyNotityActivity6.f34261l = true;
                                                                        h.a(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.a.3
                                                                            @Override // java.lang.Runnable
                                                                            public void run() {
                                                                                try {
                                                                                    Class<?> cls = Class.forName("com.alipay.sdk.app.PayTask");
                                                                                    Object[] objArr = {logicHyNotityActivity5};
                                                                                    a.this.sendMessage(e.a(Constant.RESULTCODE, (String) cls.getDeclaredMethod("pay", String.class, Boolean.TYPE).invoke(cls.getConstructor(Activity.class).newInstance(objArr), strA, Boolean.TRUE)));
                                                                                } catch (ClassNotFoundException unused) {
                                                                                    a.this.sendMessage(e.a(4121, "请检查商户端插件是否完整"));
                                                                                } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | InvocationTargetException unused2) {
                                                                                    a.this.sendMessage(e.a(4121, "异常调用"));
                                                                                }
                                                                            }
                                                                        });
                                                                    }
                                                                    LogicHyNotityActivity.this.f34262m = new Timer();
                                                                    LogicHyNotityActivity.this.f34262m.schedule(new TimerTask() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.a.2
                                                                        @Override // java.util.TimerTask, java.lang.Runnable
                                                                        public void run() {
                                                                            LogicHyNotityActivity.this.runOnUiThread(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.a.2.1
                                                                                @Override // java.lang.Runnable
                                                                                public void run() {
                                                                                    WebView webView = LogicHyNotityActivity.this.f34264u;
                                                                                    if (webView == null || webView.getVisibility() != 8) {
                                                                                        return;
                                                                                    }
                                                                                    LogicHyNotityActivity.this.f34264u.setVisibility(0);
                                                                                    LogicHyNotityActivity.this.h();
                                                                                }
                                                                            });
                                                                        }
                                                                    }, 15000L);
                                                                    LogicHyNotityActivity.this.f34264u.loadUrl(strA);
                                                                    logicHyNotityActivity3 = LogicHyNotityActivity.this;
                                                                    logicHyNotityActivity3.f34259j = false;
                                                                }
                                                                LogicHyNotityActivity.this.h();
                                                                LogicHyNotityActivity logicHyNotityActivity7 = LogicHyNotityActivity.this;
                                                                logicHyNotityActivity7.f34259j = true;
                                                                logicHyNotityActivity7.f34261l = false;
                                                                logicHyNotityActivity7.b(strA);
                                                            } else if (iB != 30) {
                                                                d.a("----->支付类型有误", "----");
                                                            } else if (strA.startsWith("wei_xin:".replace("_", ""))) {
                                                                LogicHyNotityActivity.this.h();
                                                                LogicHyNotityActivity logicHyNotityActivity8 = LogicHyNotityActivity.this;
                                                                logicHyNotityActivity8.f34259j = true;
                                                                logicHyNotityActivity8.f34261l = false;
                                                                logicHyNotityActivity8.b(strA);
                                                            } else {
                                                                if (!strA.startsWith("http") && !strA.startsWith("https")) {
                                                                    LogicHyNotityActivity.this.h();
                                                                    i.a().a(logicHyNotityActivity5, "支付遇到未知错误，请重新发起支付");
                                                                    logicHyNotityActivity2 = LogicHyNotityActivity.this;
                                                                    str2 = "微信支付发起参数错误";
                                                                }
                                                                d.a("----->进入中信跳转页面", "----1");
                                                                LogicHyNotityActivity.this.f34262m = new Timer();
                                                                LogicHyNotityActivity.this.f34262m.schedule(new TimerTask() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.a.1
                                                                    @Override // java.util.TimerTask, java.lang.Runnable
                                                                    public void run() {
                                                                        LogicHyNotityActivity.this.runOnUiThread(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.a.1.1
                                                                            @Override // java.lang.Runnable
                                                                            public void run() {
                                                                                d.a("----->进入中信跳转页面", "----2");
                                                                                WebView webView = LogicHyNotityActivity.this.f34264u;
                                                                                if (webView == null || webView.getVisibility() != 8) {
                                                                                    return;
                                                                                }
                                                                                LogicHyNotityActivity.this.f34264u.setVisibility(0);
                                                                                d.a("----->进入中信跳转页面", "----3");
                                                                                LogicHyNotityActivity.this.h();
                                                                            }
                                                                        });
                                                                    }
                                                                }, 15000L);
                                                                d.a("----->进入中信跳转页面", "----4");
                                                                LogicHyNotityActivity logicHyNotityActivity9 = LogicHyNotityActivity.this;
                                                                logicHyNotityActivity9.f34263n = true;
                                                                logicHyNotityActivity9.f34264u.loadUrl(strA);
                                                                logicHyNotityActivity3 = LogicHyNotityActivity.this;
                                                                logicHyNotityActivity3.f34259j = false;
                                                            }
                                                            logicHyNotityActivity3.f34261l = false;
                                                        } catch (Exception e10) {
                                                            e = e10;
                                                            str5 = "支付遇到未知错误，请重新发起支付";
                                                            str6 = "-2";
                                                            c.b("---->", ":" + e.getMessage());
                                                            LogicHyNotityActivity.this.a(str6, str5);
                                                            e.printStackTrace();
                                                            return;
                                                        }
                                                        break;
                                                    case q.a.f84859f /* 4102 */:
                                                        d.a("----->", "调用SubmitPay失败");
                                                        LogicHyNotityActivity.this.h();
                                                        Object obj2 = message.obj;
                                                        if (obj2 == null || TextUtils.isEmpty(obj2.toString())) {
                                                            i.a().a(logicHyNotityActivity5, "系统维护中,请稍后重试");
                                                        } else {
                                                            i.a().a(logicHyNotityActivity5, message.obj.toString());
                                                        }
                                                        LogicHyNotityActivity.this.a("调用SubmitPay失败");
                                                        break;
                                                    case q.a.f84860g /* 4103 */:
                                                        LogicHyNotityActivity.this.h();
                                                        if ("1".equals((String) message.obj)) {
                                                            c.b("--->", "QUERRY_STATUS_SUCCESS_01");
                                                            LogicHyNotityActivity.this.a("1", "支付成功");
                                                        }
                                                        break;
                                                    case q.a.f84861h /* 4104 */:
                                                        LogicHyNotityActivity.this.h();
                                                        String str7 = (String) message.obj;
                                                        if ("0".equals(str7)) {
                                                            c.b("--->", "QUERRY_STATUS_SUCCESS_02");
                                                            LogicHyNotityActivity.this.a("0", "支付取消");
                                                        } else if (WMConstants.TIMER_STAGE_NONE.equals(str7)) {
                                                            LogicHyNotityActivity.this.a(WMConstants.TIMER_STAGE_NONE, "支付失败");
                                                            c.b("--->", "QUERRY_STATUS_SUCCESS_03");
                                                        }
                                                        break;
                                                    default:
                                                        switch (i10) {
                                                            case 4113:
                                                                str3 = "失败";
                                                                c.b("---上报日志", str3);
                                                                break;
                                                            case 4114:
                                                                str3 = OauthResult.RESULT_MSG_SUCCESS;
                                                                c.b("---上报日志", str3);
                                                                break;
                                                            case 4115:
                                                                d.a("----->", "Token校验成功");
                                                                LogicHyNotityActivity.this.c();
                                                                break;
                                                            case 4116:
                                                                d.a("----->", "Token校验失败");
                                                                LogicHyNotityActivity.this.h();
                                                                Object obj3 = message.obj;
                                                                if (obj3 == null || TextUtils.isEmpty(obj3.toString())) {
                                                                    i.a().a(logicHyNotityActivity5, "Token校验失败");
                                                                } else {
                                                                    i.a().a(logicHyNotityActivity5, message.obj.toString());
                                                                }
                                                                logicHyNotityActivity4 = LogicHyNotityActivity.this;
                                                                str4 = "调用CheckPayTokenID失败";
                                                                logicHyNotityActivity4.a(str4);
                                                                break;
                                                            case 4117:
                                                                d.a("----->", "Token校验错误");
                                                                LogicHyNotityActivity.this.h();
                                                                i.a().a(logicHyNotityActivity5, "Token校验错误");
                                                                logicHyNotityActivity4 = LogicHyNotityActivity.this;
                                                                str4 = "调用CheckPayTokenID异常";
                                                                logicHyNotityActivity4.a(str4);
                                                                break;
                                                            case 4118:
                                                                d.a("----->", "调用SubmitPay错误");
                                                                LogicHyNotityActivity.this.h();
                                                                Object obj4 = message.obj;
                                                                if (obj4 != null && !TextUtils.isEmpty(obj4.toString()) && message.obj.toString().contains("连接服务器出错")) {
                                                                    i.a().a(logicHyNotityActivity5, "连接服务器出错");
                                                                }
                                                                logicHyNotityActivity4 = LogicHyNotityActivity.this;
                                                                str4 = "调用SubmitPay异常";
                                                                logicHyNotityActivity4.a(str4);
                                                                break;
                                                        }
                                                        break;
                                                }
                                            } catch (Exception e11) {
                                                e = e11;
                                                str6 = "-2";
                                                str5 = "支付遇到未知错误，请重新发起支付";
                                                c.b("---->", ":" + e.getMessage());
                                                LogicHyNotityActivity.this.a(str6, str5);
                                                e.printStackTrace();
                                                return;
                                            }
                                            break;
                                    }
                                    return;
                                }
                                WebView webView = LogicHyNotityActivity.this.f34264u;
                                if (webView != null && webView.canGoBack()) {
                                    LogicHyNotityActivity.this.f34264u.goBack();
                                    return;
                                } else {
                                    logicHyNotityActivity2 = LogicHyNotityActivity.this;
                                    str2 = "TODO";
                                }
                                logicHyNotityActivity2.a(str2);
                                return;
                            }
                            LogicHyNotityActivity logicHyNotityActivity10 = LogicHyNotityActivity.this;
                            logicHyNotityActivity10.a(logicHyNotityActivity10.c("支付宝APP唤起成功"), LogicHyNotityActivity.f34249t);
                            if (TextUtils.isEmpty(message.obj.toString())) {
                                logicHyNotityActivity = LogicHyNotityActivity.this;
                            } else {
                                String strA2 = new b(message.obj.toString()).a();
                                if (TextUtils.equals(strA2, "9000")) {
                                    LogicHyNotityActivity.this.a("1", "支付成功");
                                } else if (TextUtils.equals(strA2, "8000")) {
                                    LogicHyNotityActivity.this.a("-3", "支付处理中");
                                } else {
                                    if (TextUtils.equals(strA2, "6001")) {
                                        LogicHyNotityActivity.this.a("0", "支付取消");
                                    } else if (TextUtils.equals(strA2, "6002")) {
                                        LogicHyNotityActivity.this.a("-2", "网络未连接，请检查网络设置");
                                    } else {
                                        logicHyNotityActivity = LogicHyNotityActivity.this;
                                    }
                                    str = "支付宝原生";
                                }
                                str = "支付宝原生";
                            }
                            logicHyNotityActivity.a(WMConstants.TIMER_STAGE_NONE, "支付失败");
                            str = "支付宝原生";
                        } catch (Exception e12) {
                            e = e12;
                        }
                    } else {
                        LogicHyNotityActivity.this.a("-2", "请检查商户端插件是否完整");
                        str = "支付宝-2";
                    }
                    c.b("--->", str);
                } catch (Exception e13) {
                    e = e13;
                }
            } catch (Exception e14) {
                e = e14;
                str5 = "支付遇到未知错误，请重新发起支付";
                str6 = "-2";
            }
        }
    }

    protected ProgressDialog a(Context context, String str, String str2) {
        f();
        ProgressDialog progressDialogShow = ProgressDialog.show(context, str, str2, false, true);
        this.f34256g = progressDialogShow;
        progressDialogShow.setProgressStyle(0);
        this.f34256g.setOnCancelListener(this.f34266w);
        this.f34256g.setCanceledOnTouchOutside(false);
        this.f34256g.setCancelable(false);
        return this.f34256g;
    }

    protected void b() {
        this.f34257h = false;
        h.a(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.1
            @Override // java.lang.Runnable
            public void run() {
                a aVar;
                try {
                    LogicHyNotityActivity logicHyNotityActivity = LogicHyNotityActivity.this;
                    f fVarA = logicHyNotityActivity.f34254e.a(logicHyNotityActivity.f34250a, logicHyNotityActivity.f34251b, logicHyNotityActivity.f34252c, true);
                    if (fVarA.a()) {
                        a aVar2 = LogicHyNotityActivity.this.f34265v;
                        if (aVar2 != null) {
                            aVar2.sendMessage(e.a(q.a.f84861h, String.valueOf(fVarA.d())));
                            return;
                        }
                        return;
                    }
                    LogicHyNotityActivity logicHyNotityActivity2 = LogicHyNotityActivity.this;
                    if (logicHyNotityActivity2.f34257h || (aVar = logicHyNotityActivity2.f34265v) == null) {
                        return;
                    }
                    aVar.sendMessage(e.a(q.a.f84860g, String.valueOf(fVarA.d())));
                } catch (Exception e10) {
                    a aVar3 = LogicHyNotityActivity.this.f34265v;
                    if (aVar3 != null) {
                        aVar3.sendMessage(e.a(4120, e10, "查询失败!"));
                    }
                }
            }
        });
    }

    protected String c(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(token：" + this.f34253d + ")-(message：" + str + ")");
        c.b("上报信息", stringBuffer.toString());
        return stringBuffer.toString();
    }

    protected void d() {
        if (!com.heepay.plugin.c.f.a().a(this)) {
            a("-2", "网络未连接，请检查网络设置");
            return;
        }
        this.f34257h = false;
        this.f34256g = a(this, "", "正在启动支付...");
        h.a(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    f fVarD = LogicHyNotityActivity.this.f34254e.d();
                    if (fVarD.a()) {
                        a aVar = LogicHyNotityActivity.this.f34265v;
                        if (aVar != null) {
                            aVar.sendMessage(e.a(4098, fVarD.b()));
                            return;
                        }
                        return;
                    }
                    a aVar2 = LogicHyNotityActivity.this.f34265v;
                    if (aVar2 != null) {
                        aVar2.sendMessage(e.b(4097, fVarD));
                    }
                } catch (Exception e10) {
                    a aVar3 = LogicHyNotityActivity.this.f34265v;
                    if (aVar3 != null) {
                        aVar3.sendMessage(e.a(4099, e10, "版本信息获取错误!"));
                    }
                }
            }
        });
    }

    protected void e() {
        if (com.heepay.plugin.c.f.a().a(this)) {
            h.a(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LogicHyNotityActivity logicHyNotityActivity = LogicHyNotityActivity.this;
                        f fVarA = logicHyNotityActivity.f34254e.a(logicHyNotityActivity.f34250a, logicHyNotityActivity.f34251b, logicHyNotityActivity.f34252c, logicHyNotityActivity.f34255f);
                        if (fVarA.a()) {
                            a aVar = LogicHyNotityActivity.this.f34265v;
                            if (aVar != null) {
                                aVar.sendMessage(e.a(4116, fVarA.b()));
                                return;
                            }
                            return;
                        }
                        a aVar2 = LogicHyNotityActivity.this.f34265v;
                        if (aVar2 != null) {
                            aVar2.sendMessage(e.b(4115, fVarA));
                        }
                    } catch (Exception e10) {
                        a aVar3 = LogicHyNotityActivity.this.f34265v;
                        if (aVar3 != null) {
                            aVar3.sendMessage(e.a(4117, e10, "验证失败"));
                        }
                    }
                }
            });
        } else {
            a("-2", "网络未连接，请检查网络设置");
        }
    }

    protected void f() {
        int i10;
        if (getApplicationInfo().targetSdkVersion <= 26 || Build.VERSION.SDK_INT != 26) {
            Configuration configuration = getResources().getConfiguration();
            int i11 = configuration.orientation;
            if (i11 != 2) {
                if (i11 != 1) {
                    int i12 = configuration.hardKeyboardHidden;
                    if (i12 != 1) {
                        if (i12 != 2) {
                            return;
                        }
                        if (getApplicationInfo().targetSdkVersion == 27 && ((i10 = Build.VERSION.SDK_INT) == 26 || i10 == 27)) {
                            return;
                        }
                    }
                }
                setRequestedOrientation(1);
                return;
            }
            setRequestedOrientation(0);
        }
    }

    protected void g() {
        if (getApplicationInfo().targetSdkVersion <= 26 || Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(-1);
        }
    }

    public void h() {
        ProgressDialog progressDialog = this.f34256g;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.f34256g.dismiss();
        this.f34256g = null;
        g();
    }

    public void i() {
        WebView webView = new WebView(this);
        this.f34264u = webView;
        webView.setBackgroundColor(getResources().getColor(R.color.white));
        this.f34264u.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        WebSettings settings = this.f34264u.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setUserAgentString(this.f34264u.getSettings().getUserAgentString() + com.heepay.plugin.c.a.a(" HyApp(H_e_e_paySDK/1) "));
        this.f34264u.setWebViewClient(new com.heepay.plugin.d.c((HyNotityActivity) this));
        this.f34264u.setWebChromeClient(new com.heepay.plugin.d.b("HPSDK", com.heepay.plugin.d.a.class));
        setContentView(this.f34264u);
        this.f34264u.setVisibility(8);
    }

    protected void j() {
        this.f34254e.a(this);
        d();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (this.f34260k) {
            a("closeable");
            return super.onKeyDown(i10, keyEvent);
        }
        WebView webView = this.f34264u;
        if (webView == null || !webView.canGoBack()) {
            a("onKeyDown");
            return super.onKeyDown(i10, keyEvent);
        }
        this.f34264u.goBack();
        return true;
    }

    public void a(String str) {
        super.finish();
        c.a("onFinish is called:" + str);
    }

    public void b(String str) {
        String str2;
        c.a("param2:" + str);
        boolean z10 = false;
        try {
            if (str.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
                startActivity(Intent.parseUri(str, 1).addCategory("android.intent.category.BROWSABLE"));
            } else {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            }
            z10 = true;
        } catch (ActivityNotFoundException unused) {
            a("-2", "请检查是否安装客户端");
        } catch (URISyntaxException e10) {
            e10.printStackTrace();
        }
        if (z10) {
            if (this.f34255f.equals("22")) {
                str2 = "支付宝APP唤起成功";
            } else if (!this.f34255f.equals(PointType.DOWNLOAD_TRACKING)) {
                return;
            } else {
                str2 = "微信APP唤起成功";
            }
            a(c(str2), f34249t);
        }
    }

    protected void c() {
        if (com.heepay.plugin.c.f.a().a(this)) {
            h.a(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    a aVar;
                    try {
                        LogicHyNotityActivity logicHyNotityActivity = LogicHyNotityActivity.this;
                        f fVarA = logicHyNotityActivity.f34254e.a(logicHyNotityActivity.f34250a, logicHyNotityActivity.f34251b, logicHyNotityActivity.f34252c, logicHyNotityActivity.f34255f, com.heepay.plugin.domain.e.a().g());
                        if (fVarA.a()) {
                            a aVar2 = LogicHyNotityActivity.this.f34265v;
                            if (aVar2 != null) {
                                aVar2.sendMessage(e.a(q.a.f84859f, fVarA.b()));
                                return;
                            }
                            return;
                        }
                        LogicHyNotityActivity logicHyNotityActivity2 = LogicHyNotityActivity.this;
                        if (logicHyNotityActivity2.f34257h || (aVar = logicHyNotityActivity2.f34265v) == null) {
                            return;
                        }
                        aVar.sendMessage(e.b(q.a.f84858e, fVarA));
                    } catch (Exception e10) {
                        a aVar3 = LogicHyNotityActivity.this.f34265v;
                        if (aVar3 != null) {
                            aVar3.sendMessage(e.a(4118, e10, "提交失败!"));
                        }
                    }
                }
            });
        } else {
            a("-2", "网络未连接，请检查网络设置");
        }
    }

    protected void a(final String str, final Integer num) {
        c.a("-------------type1:" + num);
        h.a(new Runnable() { // from class: com.heepay.plugin.activity.logic.LogicHyNotityActivity.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    f fVarA = LogicHyNotityActivity.this.f34254e.a(str, num.intValue());
                    if (fVarA.a()) {
                        a aVar = LogicHyNotityActivity.this.f34265v;
                        if (aVar != null) {
                            aVar.sendMessage(e.a(4113, fVarA));
                            return;
                        }
                        return;
                    }
                    a aVar2 = LogicHyNotityActivity.this.f34265v;
                    if (aVar2 != null) {
                        aVar2.sendMessage(e.b(4114, fVarA));
                    }
                } catch (Exception e10) {
                    a aVar3 = LogicHyNotityActivity.this.f34265v;
                    if (aVar3 != null) {
                        aVar3.sendMessage(e.a(4113, e10, "提交日志信息失败"));
                    }
                }
            }
        });
    }

    protected void a(String str, String str2) {
        c.b("--返回支付结果", "setCallBack：" + str + "，respMessage：" + str2);
        h();
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putString("respCode", str);
        bundle.putString("respMessage", str2);
        intent.putExtras(bundle);
        setResult(Constant.RESULTCODE, intent);
        a("setCallBack");
    }

    protected boolean a(String str, int i10, String str2, String str3) {
        boolean z10;
        if (TextUtils.isEmpty(str)) {
            i.a().a(this, "传入的TokenID参数为空");
            z10 = true;
        } else {
            z10 = false;
        }
        if (i10 == 0) {
            i.a().a(this, "传入的agentID为不合法");
            z10 = true;
        }
        if (TextUtils.isEmpty(str2)) {
            i.a().a(this, "传入的agentBillID参数为空");
            z10 = true;
        }
        if (!TextUtils.isEmpty(str3)) {
            return z10;
        }
        i.a().a(this, "传入的payType参数为空");
        return true;
    }
}
