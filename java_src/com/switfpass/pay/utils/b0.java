package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.MchBean;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.bean.RequestMsg;
import com.switfpass.pay.lib.Resourcemap;
import com.tencent.mm.sdk.modelpay.PayReq;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends Dialog {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static String f82744w = MainApplication.f82454n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f82745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewGroup f82746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f82747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RelativeLayout f82748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RelativeLayout f82749f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f82750g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RelativeLayout f82751h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RelativeLayout f82752i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RelativeLayout f82753j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RelativeLayout f82754k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ProgressInfoDialog f82755l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private RequestMsg f82756m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List f82757n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f82758o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private IWXAPI f82759p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private d0 f82760q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private AlertDialog f82761r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f82762s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected ProgressDialog f82763t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f82764u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    Handler f82765v;

    public b0(Activity activity) {
        super(activity);
        this.f82762s = true;
        this.f82763t = null;
        this.f82764u = false;
        this.f82765v = new h1();
        this.f82745b = activity;
    }

    static /* synthetic */ void c(b0 b0Var, OrderBena orderBena, RequestMsg requestMsg) {
        PayReq payReq = new PayReq();
        payReq.appId = requestMsg.getAppId();
        payReq.prepayId = orderBena.getPrepayid();
        payReq.partnerId = orderBena.getPartner();
        payReq.nonceStr = orderBena.getNonceStr();
        payReq.timeStamp = orderBena.getTimeStamp();
        payReq.packageValue = "Sign=WXPay";
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(b0Var.f82745b, requestMsg.getAppId());
        b0Var.f82759p = iwxapiCreateWXAPI;
        iwxapiCreateWXAPI.registerApp(requestMsg.getAppId());
        payReq.sign = orderBena.getSign();
        boolean z10 = b0Var.f82759p.getWXAppSupportAPI() >= 570425345;
        new StringBuilder("isPaySupported-->").append(z10);
        if (!b0Var.f82759p.openWXApp()) {
            Toast.makeText(b0Var.f82745b, "手机没有安装微信，请先安装微信", 0).show();
        } else if (z10) {
            b0Var.f82759p.sendReq(payReq);
        } else {
            Toast.makeText(b0Var.f82745b, "微信版本太低了，请升级后再使用", 0).show();
        }
    }

    static /* synthetic */ void d(b0 b0Var, RequestMsg requestMsg) {
        b0Var.cancel();
        requestMsg.setTradeName("微信支付");
        b0Var.f82755l = new ProgressInfoDialog(b0Var.f82745b, "请稍候，正在请求微信", new x1(b0Var));
        com.switfpass.pay.service.d.d().b(requestMsg, new b(b0Var, requestMsg));
    }

    static /* synthetic */ boolean f(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i10 = 0; i10 < installedPackages.size(); i10++) {
                if (installedPackages.get(i10).packageName.equals(com.alipay.sdk.util.j.f7245b)) {
                    return true;
                }
            }
        }
        return false;
    }

    static /* synthetic */ void h(b0 b0Var, RequestMsg requestMsg) {
        b0Var.cancel();
        requestMsg.setTradeName("支付宝支付");
        b0Var.f82755l = new ProgressInfoDialog(b0Var.f82745b, "请稍候，正在请求支付宝", new f(b0Var));
        com.switfpass.pay.service.d.d().c(requestMsg, MainApplication.f82456p, new l(b0Var));
    }

    static /* synthetic */ boolean i(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i10 = 0; i10 < installedPackages.size(); i10++) {
                if (installedPackages.get(i10).packageName.equals("com.tencent.mm")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean o(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i10 = 0; i10 < installedPackages.size(); i10++) {
                if (installedPackages.get(i10).packageName.equals("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }

    private void w() {
        RelativeLayout relativeLayout;
        this.f82754k = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getLayout_pay_wx_wap());
        this.f82753j = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getLayout_pay_qq_wap());
        this.f82758o = (TextView) this.f82746c.findViewById(Resourcemap.getLayout_dialog_prompt());
        this.f82747d = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getLayout_wx_scan());
        this.f82748e = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getLayout_qq_scan());
        this.f82749f = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getLayout_zfb_scan());
        this.f82750g = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getLayout_wx_app());
        this.f82751h = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getLayout_zfb_app());
        this.f82752i = (RelativeLayout) this.f82746c.findViewById(Resourcemap.getById_pay_scan());
        if (this.f82757n.isEmpty() || this.f82757n == null) {
            this.f82758o.setVisibility(0);
            return;
        }
        for (int i10 = 0; i10 < this.f82757n.size(); i10++) {
            String tradeType = ((MchBean) this.f82757n.get(i10)).getTradeType();
            if (((MchBean) this.f82757n.get(i10)).getTradeType().equals(MainApplication.f82451k)) {
                relativeLayout = this.f82748e;
            } else if (((MchBean) this.f82757n.get(i10)).getTradeType().equals(MainApplication.f82452l)) {
                relativeLayout = this.f82747d;
            } else if (((MchBean) this.f82757n.get(i10)).getTradeType().equals(MainApplication.f82453m)) {
                relativeLayout = this.f82750g;
            } else if (((MchBean) this.f82757n.get(i10)).getTradeType().equalsIgnoreCase(MainApplication.f82454n) || ((MchBean) this.f82757n.get(i10)).getTradeType().equalsIgnoreCase(MainApplication.f82455o)) {
                f82744w = ((MchBean) this.f82757n.get(i10)).getTradeType();
                relativeLayout = this.f82749f;
            } else if (((MchBean) this.f82757n.get(i10)).getTradeType().equalsIgnoreCase(MainApplication.f82456p)) {
                relativeLayout = this.f82751h;
            } else if (((MchBean) this.f82757n.get(i10)).getTradeType().equalsIgnoreCase(MainApplication.f82461u)) {
                relativeLayout = this.f82753j;
            } else if (((MchBean) this.f82757n.get(i10)).getTradeType().equalsIgnoreCase(MainApplication.f82462v)) {
                relativeLayout = this.f82754k;
            } else {
                if (tradeType.contains(MainApplication.f82458r) || tradeType.contains(MainApplication.f82457q) || tradeType.contains(MainApplication.f82460t) || tradeType.contains(MainApplication.f82459s)) {
                    relativeLayout = this.f82752i;
                }
            }
            relativeLayout.setVisibility(0);
        }
    }

    public void A(RequestMsg requestMsg) {
        if (requestMsg.getTradeType() == null || "".equals(requestMsg.getTradeType())) {
            Toast.makeText(this.f82745b, "参数支付类型tradeType不能为空", 0).show();
            return;
        }
        if (requestMsg.getTokenId() == null || "".equals(requestMsg.getTokenId())) {
            Toast.makeText(this.f82745b, "参数tokenId不能为空", 0).show();
            return;
        }
        if (requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82451k)) {
            p(requestMsg);
            return;
        }
        if (requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82452l)) {
            B(requestMsg);
        } else if (!requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82454n) && !requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82455o)) {
            Toast.makeText(this.f82745b, "支付类型错误,或者不支持此支付类型", 0).show();
        } else {
            f82744w = requestMsg.getTradeType();
            F(requestMsg);
        }
    }

    public void B(RequestMsg requestMsg) {
        this.f82760q = new g0(this);
        cancel();
        requestMsg.setTradeName("微信扫码支付");
        this.f82755l = new ProgressInfoDialog(this.f82745b, "请稍候，正在请求微信二维码", this.f82760q);
        com.switfpass.pay.service.d.d().a(requestMsg, MainApplication.f82452l, new i0(this));
    }

    public void C(RequestMsg requestMsg) {
        cancel();
        this.f82755l = new ProgressInfoDialog(this.f82745b, "请稍候，正在请求微信支付", new k1(this));
        requestMsg.setTradeName("微信WAP支付");
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f82462v, new l1(this, requestMsg));
    }

    public void D(RequestMsg requestMsg) {
        requestMsg.setTradeName("微信WAP支付");
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f82462v, new i1(this, requestMsg));
    }

    public void E(RequestMsg requestMsg) {
        com.switfpass.pay.service.d.d().a(requestMsg, MainApplication.f82454n, new q0(this, requestMsg));
    }

    public void F(RequestMsg requestMsg) {
        String str = MainApplication.f82454n;
        if (requestMsg.getTradeType() != null && !"".equals(requestMsg.getTradeType()) && !requestMsg.getTradeType().equals("null") && requestMsg.getTradeType().equals(MainApplication.f82455o)) {
            str = MainApplication.f82455o;
        }
        cancel();
        this.f82755l = new ProgressInfoDialog(this.f82745b, "请稍候，正在请求支付宝二维码", new s1(this));
        requestMsg.setTradeName("支付宝扫码支付");
        com.switfpass.pay.service.d.d().a(requestMsg, str, new t1(this));
    }

    public void G(RequestMsg requestMsg) {
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f82463w, new t0(this, requestMsg));
    }

    public void l() {
        try {
            ProgressDialog progressDialog = this.f82763t;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            this.f82763t.dismiss();
            this.f82763t.cancel();
            this.f82763t = null;
        } catch (Exception e10) {
            new StringBuilder("dismissMyLoading ").append(e10);
        }
    }

    public RequestMsg n() {
        return this.f82756m;
    }

    public void p(RequestMsg requestMsg) {
        cancel();
        requestMsg.setTradeName("手Q扫码支付");
        this.f82755l = new ProgressInfoDialog(this.f82745b, "请稍候，正在请求手Q二维码", new m0(this));
        com.switfpass.pay.service.d.d().a(requestMsg, MainApplication.f82451k, new n0(this));
    }

    public void q(RequestMsg requestMsg) {
        cancel();
        this.f82755l = new ProgressInfoDialog(this.f82745b, "请稍候，正在请求QQ钱包H5支付", new p1(this));
        requestMsg.setTradeName("QQwap支付");
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f82461u, new q1(this, requestMsg));
    }

    public void r(RequestMsg requestMsg) {
        com.switfpass.pay.service.d.d().f(requestMsg, MainApplication.f82461u, new n1(this, requestMsg));
    }

    public void s(RequestMsg requestMsg) {
        this.f82756m = requestMsg;
    }

    public void t(a0 a0Var) {
    }

    public void u(String str, ProgressInfoDialog progressInfoDialog) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f82745b);
        builder.setTitle("温馨提示");
        builder.setMessage(str);
        builder.setPositiveButton("确定", new a(this, progressInfoDialog));
        builder.setNegativeButton("取消", new y());
        this.f82761r = builder.show();
    }

    public void v(Context context, boolean z10, String str) {
        try {
            if (this.f82763t == null) {
                ProgressDialog progressDialog = new ProgressDialog(context);
                this.f82763t = progressDialog;
                progressDialog.setCancelable(z10);
            }
            this.f82763t.show();
            this.f82763t.setMessage(str);
        } catch (Exception e10) {
            new StringBuilder("showLoading ").append(e10);
        }
    }

    public void y(RequestMsg requestMsg) {
        if (requestMsg.getTradeType() == null || "".equals(requestMsg.getTradeType())) {
            Toast.makeText(this.f82745b, "参数支付类型tradeType不能为空", 0).show();
            return;
        }
        if (requestMsg.getTokenId() == null || "".equals(requestMsg.getTokenId())) {
            Toast.makeText(this.f82745b, "参数tokenId不能为空", 0).show();
            return;
        }
        if (requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82456p)) {
            cancel();
            requestMsg.setTradeName("支付宝支付");
            com.switfpass.pay.service.d.d().c(requestMsg, MainApplication.f82456p, new n(this));
        } else if (!requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82453m)) {
            Toast.makeText(this.f82745b, "支付类型错误,或者不支持此支付类型", 0).show();
        } else {
            MainApplication.A = requestMsg.getAppId();
            com.switfpass.pay.service.d.d().b(requestMsg, new v1(this, requestMsg));
        }
    }

    public void z(RequestMsg requestMsg) {
        Activity activity;
        String str;
        if (requestMsg.getTradeType() == null || "".equals(requestMsg.getTradeType())) {
            activity = this.f82745b;
            str = "参数支付类型tradeType不能为空";
        } else if (requestMsg.getTokenId() == null || "".equals(requestMsg.getTokenId())) {
            activity = this.f82745b;
            str = "参数tokenId不能为空";
        } else {
            if (requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82461u)) {
                r(requestMsg);
                return;
            }
            if (requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82462v)) {
                D(requestMsg);
                return;
            }
            if (requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82463w)) {
                G(requestMsg);
                return;
            } else if (requestMsg.getTradeType().equalsIgnoreCase(MainApplication.f82464x)) {
                E(requestMsg);
                return;
            } else {
                activity = this.f82745b;
                str = "支付类型错误,或者不支持此支付类型";
            }
        }
        Toast.makeText(activity, str, 0).show();
    }

    public b0(Activity activity, List list) {
        super(activity);
        this.f82762s = true;
        this.f82763t = null;
        this.f82764u = false;
        this.f82765v = new h1();
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_pay_dialog_check(), (ViewGroup) null);
        this.f82746c = viewGroup;
        setContentView(viewGroup);
        this.f82745b = activity;
        this.f82757n = list;
        w();
        this.f82752i.setOnClickListener(new p(this));
        this.f82747d.setOnClickListener(new q(this));
        this.f82748e.setOnClickListener(new s(this));
        this.f82750g.setOnClickListener(new t(this));
        this.f82751h.setOnClickListener(new u(this));
        this.f82749f.setOnClickListener(new x(this));
        this.f82753j.setOnClickListener(new z(this));
        this.f82754k.setOnClickListener(new e0(this));
    }
}
