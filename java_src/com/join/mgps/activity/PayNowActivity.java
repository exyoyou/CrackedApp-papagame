package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextUtils;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.alipay.sdk.app.PayTask;
import com.byazt.quv.AbsServerManager;
import com.czhj.sdk.common.Constants;
import com.heepay.plugin.api.HPlugin;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.IntentDataMain;
import com.join.mgps.dto.PapayOrder;
import com.join.mgps.dto.PapayResult;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PayCenterOrderResponse;
import com.join.mgps.dto.PayGameDataRequest;
import com.join.mgps.dto.PayGamepayData;
import com.join.mgps.dto.PayResult;
import com.join.mgps.dto.PaygameResponse;
import com.join.mgps.dto.PaymentInfo;
import com.join.mgps.pref.PrefDef_;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.activity.PayPlugin;
import com.switfpass.pay.bean.RequestMsg;
import com.tencent.mm.opensdk.modelpay.PayReq;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.umeng.umcrash.UMCrash;
import com.windmill.sdk.WMConstants;
import com.wufan.user.service.protobuf.MessageCheckTokenRequest;
import com.wufan.user.service.protobuf.MessageCheckTokenResponse;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_pay_now)
public class PayNowActivity extends BaseActivity {
    public static final String PARTNER = "";
    public static final String RSA_PRIVATE = "";
    public static final String RSA_PUBLIC = "";
    private static final int SDK_CHECK_FLAG = 3;
    private static final int SDK_PAY_FLAG = 2;
    public static final String SELLER = "";
    private static final int WECHAT = 1;
    Activity activity;

    @ViewById
    ImageView aliPay;

    @ViewById
    TextView anotherPayType;
    MApplication application;
    com.join.mgps.rpc.o client;

    @ViewById
    ImageView creditCardPay;

    @Extra
    ExtBean extBean;

    @Extra
    IntentDataMain intentDataMain;

    @ViewById
    LinearLayout layoutAlipay;

    @ViewById
    LinearLayout layoutCreditCardPay;

    @ViewById
    LinearLayout layoutPabiPay;

    @ViewById
    LinearLayout layoutUnionpay;

    @ViewById
    LinearLayout layoutWeixin;

    @ViewById
    LinearLayout layouthongbaoPay;

    @ViewById
    Button ok;

    @Extra
    PapayOrder order;

    @ViewById
    LinearLayout papa_pay;

    @ViewById
    HorizontalScrollView payChoisePayType;

    @ViewById
    LinearLayout payDefault;

    @ViewById
    LinearLayout payLoding;

    @ViewById
    TextView payMoney;

    @ViewById
    TextView payProduct;

    @ViewById
    TextView payTitle;

    @Pref
    PrefDef_ prefDef;
    PayCenterOrderRequest request;

    @ViewById
    ImageView unionpay;

    @ViewById
    ImageView weichatPay;
    IWXAPI wxapi;
    private String ziWeiPrepayPayId;
    private String orderId = "";
    private boolean isPaying = false;
    private int payIngType = 0;
    private Handler handler = new a();
    private int checkNumber = 5;
    Handler handlerDelay = new b();
    private long payTime = 0;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 == 1) {
                PayNowActivity.this.startHeepayServiceJar((PaymentInfo) msg.obj);
                return;
            }
            if (i10 != 2) {
                return;
            }
            PayResult payResult = new PayResult((String) msg.obj);
            payResult.getResult();
            String resultStatus = payResult.getResultStatus();
            if (TextUtils.equals(resultStatus, "9000")) {
                PapayResult papayResult = new PapayResult();
                papayResult.setStatus(1);
                papayResult.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                papayResult.setMessage("");
                PayNowActivity.this.papayResult(papayResult);
                return;
            }
            if (TextUtils.equals(resultStatus, "8000")) {
                PapayResult papayResult2 = new PapayResult();
                papayResult2.setStatus(4);
                papayResult2.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                papayResult2.setMessage("支付结果确认中");
                PayNowActivity.this.papayResult(papayResult2);
                return;
            }
            PapayResult papayResult3 = new PapayResult();
            papayResult3.setStatus(2);
            papayResult3.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
            papayResult3.setMessage("支付失败");
            PayNowActivity.this.papayResult(papayResult3);
        }
    }

    class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            PayNowActivity.this.checkToken();
        }
    }

    class c implements com.join.android.app.common.http.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PayCenterOrderRequest f55471a;

        c(final PayCenterOrderRequest val$request) {
            this.f55471a = val$request;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object o10) {
            PayNowActivity.this.dismissLoding();
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object o10) {
            PayNowActivity.this.dismissLoding();
            CommentResponse commentResponse = (CommentResponse) o10;
            if (commentResponse == null || commentResponse.getCode() != 0) {
                if (commentResponse != null) {
                    com.join.mgps.Util.a3.b(PayNowActivity.this.activity).d(commentResponse.getMsg() + "");
                    PapayResult papayResult = new PapayResult();
                    papayResult.setStatus(2);
                    papayResult.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult.setMessage("");
                    PayNowActivity.this.papayResult(papayResult);
                    return;
                }
                com.join.mgps.Util.a3.b(PayNowActivity.this.activity).d("获取游戏数据失败");
                com.join.mgps.Util.a3.b(PayNowActivity.this.activity).d(commentResponse.getMsg() + "");
                PapayResult papayResult2 = new PapayResult();
                papayResult2.setStatus(2);
                papayResult2.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                papayResult2.setMessage("");
                PayNowActivity.this.papayResult(papayResult2);
                return;
            }
            PaygameResponse paygameResponse = (PaygameResponse) commentResponse.getData_info();
            if (paygameResponse == null) {
                com.join.mgps.Util.a3.b(PayNowActivity.this.activity).d(commentResponse.getMsg() + "");
                PapayResult papayResult3 = new PapayResult();
                papayResult3.setStatus(2);
                papayResult3.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                papayResult3.setMessage("");
                PayNowActivity.this.papayResult(papayResult3);
                return;
            }
            PayGamepayData order = paygameResponse.getOrder();
            this.f55471a.setApp_callback_url(order.getCallbackURL());
            this.f55471a.setPay_rmb((Float.parseFloat(order.getAmount()) / 100.0f) + "");
            this.f55471a.setApp_key(order.getSdkAppKey());
            this.f55471a.setApp_order_id(order.getOrderId());
            com.join.mgps.rpc.h.f72376q = order.getSdkPayURL();
            if (order.getPayMode() == 2) {
                PayNowActivity.this.startPayNow(this.f55471a);
                return;
            }
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setCrc_link_type_val(order.getWebPaymentURL());
            ShareWebActivity_.intent(PayNowActivity.this.activity).b(intentDateBean).startForResult(10000);
        }
    }

    class d implements com.join.android.app.common.http.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PayCenterOrderRequest f55473a;

        d(final PayCenterOrderRequest val$request) {
            this.f55473a = val$request;
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object o10) {
            PayNowActivity.this.dismissLoding();
            PapayResult papayResult = new PapayResult();
            com.join.mgps.Util.g1.c("orderId =" + PayNowActivity.this.orderId);
            papayResult.setStatus(2);
            papayResult.setPayType(this.f55473a.getAction());
            papayResult.setMessage("获取订单号失败");
            PayNowActivity.this.papayResult(papayResult);
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object o10) {
            String string = "余额不足";
            PayNowActivity.this.dismissLoding();
            PayCenterOrderResponse payCenterOrderResponse = (PayCenterOrderResponse) o10;
            if (PayCenterOrderRequest.ACTION_UNION_PAY.equals(payCenterOrderResponse.getAction()) || PayCenterOrderRequest.ACTION_CREDIT_PAY.equals(payCenterOrderResponse.getAction())) {
                try {
                    JSONObject jSONObject = new JSONObject(payCenterOrderResponse.getJson());
                    String string2 = jSONObject.getString("extra_data");
                    if (jSONObject.getInt("ret") == 0) {
                        String string3 = new JSONObject(string2).getString("tn");
                        PayNowActivity.this.orderId = jSONObject.getString("f_id");
                        com.join.mgps.Util.t2.h(string3);
                    } else {
                        PapayResult papayResult = new PapayResult();
                        papayResult.setStatus(2);
                        papayResult.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                        papayResult.setMessage(jSONObject.getString("msg"));
                        PayNowActivity.this.papayResult(papayResult);
                    }
                } catch (JSONException e10) {
                    e10.printStackTrace();
                    PapayResult papayResult2 = new PapayResult();
                    papayResult2.setStatus(2);
                    papayResult2.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult2.setMessage("获取订单号失败");
                    PayNowActivity.this.papayResult(papayResult2);
                }
            } else if (PayCenterOrderRequest.ACTION_ALI_PAY.equals(payCenterOrderResponse.getAction())) {
                try {
                    JSONObject jSONObject2 = new JSONObject(payCenterOrderResponse.getJson());
                    if (jSONObject2.getInt("ret") == 0) {
                        String string4 = jSONObject2.getString("f_id");
                        String string5 = jSONObject2.getJSONObject("extra_data").getString("alipay_sign");
                        PayNowActivity.this.orderId = string4;
                        if (!com.join.mgps.Util.t2.h(string5)) {
                            PayNowActivity.this.startPayAlipay(string5);
                        }
                    } else {
                        PapayResult papayResult3 = new PapayResult();
                        papayResult3.setStatus(2);
                        papayResult3.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                        papayResult3.setMessage(jSONObject2.getString("msg"));
                        PayNowActivity.this.papayResult(papayResult3);
                    }
                } catch (JSONException e11) {
                    e11.printStackTrace();
                    PapayResult papayResult4 = new PapayResult();
                    papayResult4.setStatus(2);
                    papayResult4.setPayType(PayCenterOrderRequest.ACTION_ALI_PAY);
                    papayResult4.setMessage("获取订单号失败");
                    PayNowActivity.this.papayResult(papayResult4);
                }
            } else {
                int i10 = 1;
                if (PayCenterOrderRequest.ACTION_PABI.equals(payCenterOrderResponse.getAction())) {
                    try {
                        JSONObject jSONObject3 = new JSONObject(payCenterOrderResponse.getJson());
                        int i11 = jSONObject3.getInt("ret");
                        if (i11 == 0) {
                            PayNowActivity.this.orderId = jSONObject3.getString("f_id");
                            string = jSONObject3.getString("msg");
                        } else {
                            if (i11 == 10001) {
                                string = "验证失败";
                            } else if (i11 == 10002) {
                                string = "token验证失败";
                            } else if (i11 == 10003) {
                                com.join.mgps.Util.a3.b(PayNowActivity.this).d("余额不足");
                            } else if (i11 == 10004) {
                                string = "服务器繁忙";
                            } else if (i11 == 10006) {
                                string = "代金券错误";
                            } else {
                                string = i11 == 10007 ? "不支持红包支付" : jSONObject3.getString("msg");
                            }
                            i10 = 2;
                        }
                        PapayResult papayResult5 = new PapayResult();
                        papayResult5.setStatus(i10);
                        papayResult5.setPayType(PayCenterOrderRequest.ACTION_PABI);
                        papayResult5.setMessage(string);
                        PayNowActivity.this.papayResult(papayResult5);
                    } catch (JSONException e12) {
                        e12.printStackTrace();
                        PapayResult papayResult6 = new PapayResult();
                        papayResult6.setStatus(2);
                        papayResult6.setPayType(PayCenterOrderRequest.ACTION_PABI);
                        papayResult6.setMessage("获取订单号失败");
                        PayNowActivity.this.papayResult(papayResult6);
                    }
                } else if (!PayCenterOrderRequest.ACTION_ZIWEI_WECHAT.equals(payCenterOrderResponse.getAction())) {
                    if (PayCenterOrderRequest.ACTION_WECHAT_SWIFT.equals(payCenterOrderResponse.getAction())) {
                        try {
                            JSONObject jSONObject4 = new JSONObject(payCenterOrderResponse.getJson());
                            if (jSONObject4.getInt("code") == 0) {
                                JSONObject jSONObject5 = new JSONObject(jSONObject4.getString("data"));
                                PayNowActivity.this.orderId = jSONObject5.getString("order_id");
                                String string6 = jSONObject5.getString("token_id");
                                if (TextUtils.isEmpty(string6)) {
                                    PapayResult papayResult7 = new PapayResult();
                                    papayResult7.setStatus(2);
                                    papayResult7.setPayType(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
                                    papayResult7.setMessage(jSONObject4.getString("msg"));
                                    PayNowActivity.this.papayResult(papayResult7);
                                } else {
                                    PayNowActivity.this.payIngType = 8;
                                    RequestMsg requestMsg = new RequestMsg();
                                    requestMsg.setTokenId(string6);
                                    requestMsg.setTradeType(MainApplication.f82462v);
                                    PayPlugin.k(PayNowActivity.this.activity, requestMsg);
                                }
                            } else {
                                PapayResult papayResult8 = new PapayResult();
                                papayResult8.setStatus(2);
                                papayResult8.setPayType(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
                                papayResult8.setMessage(jSONObject4.getString("msg"));
                                PayNowActivity.this.papayResult(papayResult8);
                            }
                        } catch (Exception e13) {
                            e13.printStackTrace();
                            PapayResult papayResult9 = new PapayResult();
                            papayResult9.setStatus(2);
                            papayResult9.setPayType(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
                            papayResult9.setMessage("获取订单号失败");
                            PayNowActivity.this.papayResult(papayResult9);
                        }
                    } else if (PayCenterOrderRequest.ACTION_WECHAT.equals(payCenterOrderResponse.getAction())) {
                        try {
                            JSONObject jSONObject6 = new JSONObject(payCenterOrderResponse.getJson());
                            if (jSONObject6.getInt("code") == 0) {
                                JSONObject jSONObject7 = jSONObject6.getJSONObject("data");
                                this.f55473a.setKingnet_order_id(jSONObject7.getString("order_id"));
                                PaymentInfo paymentInfo = new PaymentInfo();
                                paymentInfo.setTokenID(jSONObject7.getString("token_id"));
                                paymentInfo.setAgentId(jSONObject7.getString(Constant.AGENT_ID));
                                paymentInfo.setBillNo(jSONObject7.getString("order_id"));
                                PayNowActivity.this.orderId = jSONObject7.getString("order_id");
                                Message message = new Message();
                                message.what = 1;
                                message.obj = paymentInfo;
                                PayNowActivity.this.handler.sendMessage(message);
                            } else {
                                PapayResult papayResult10 = new PapayResult();
                                papayResult10.setStatus(2);
                                papayResult10.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                                papayResult10.setMessage(jSONObject6.getString("msg"));
                                PayNowActivity.this.papayResult(papayResult10);
                            }
                        } catch (JSONException e14) {
                            e14.printStackTrace();
                            PapayResult papayResult11 = new PapayResult();
                            papayResult11.setStatus(2);
                            papayResult11.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                            papayResult11.setMessage("获取订单号失败");
                            PayNowActivity.this.papayResult(papayResult11);
                        }
                    } else if (PayCenterOrderRequest.ACTION_WECHAT_OFFICIAL.equals(payCenterOrderResponse.getAction())) {
                        try {
                            JSONObject jSONObject8 = new JSONObject(payCenterOrderResponse.getJson());
                            if (jSONObject8.getInt("code") == 0) {
                                JSONObject jSONObject9 = jSONObject8.getJSONObject("data");
                                this.f55473a.setKingnet_order_id(jSONObject9.getString("orderId"));
                                PayNowActivity.this.orderId = jSONObject9.getString("orderId");
                                jSONObject9.toString();
                                PayReq payReq = new PayReq();
                                payReq.appId = jSONObject9.getString("appid");
                                payReq.partnerId = jSONObject9.getString("partnerid");
                                payReq.prepayId = jSONObject9.getString("prepayid");
                                payReq.nonceStr = jSONObject9.getString("noncestr");
                                payReq.timeStamp = jSONObject9.getString(UMCrash.SP_KEY_TIMESTAMP);
                                payReq.packageValue = jSONObject9.getString(AbsServerManager.PACKAGE_QUERY_BINDER);
                                HashMap map = new HashMap();
                                map.put("appid", payReq.appId);
                                map.put("partnerid", payReq.partnerId);
                                map.put("prepayid", payReq.prepayId);
                                map.put(AbsServerManager.PACKAGE_QUERY_BINDER, payReq.packageValue);
                                map.put("noncestr", payReq.nonceStr);
                                map.put(UMCrash.SP_KEY_TIMESTAMP, payReq.timeStamp);
                                payReq.sign = jSONObject9.getString(Constant.MD5);
                                PayNowActivity.this.wxapi.sendReq(payReq);
                            } else {
                                PapayResult papayResult12 = new PapayResult();
                                papayResult12.setStatus(2);
                                papayResult12.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                                papayResult12.setMessage(jSONObject8.getString("msg"));
                                PayNowActivity.this.papayResult(papayResult12);
                            }
                        } catch (Exception e15) {
                            e15.printStackTrace();
                            PapayResult papayResult13 = new PapayResult();
                            papayResult13.setStatus(2);
                            papayResult13.setPayType(PayCenterOrderRequest.ACTION_WECHAT);
                            papayResult13.setMessage("获取订单号失败");
                            PayNowActivity.this.papayResult(papayResult13);
                        }
                    }
                }
            }
            PayNowActivity.this.dismissLoding();
        }
    }

    class e extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f55475b;

        e(final String val$alipay_sign) {
            this.f55475b = val$alipay_sign;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                String strPay = new PayTask(PayNowActivity.this.activity).pay(com.join.mgps.Util.c0.a(this.f55475b), true);
                Message message = new Message();
                message.what = 2;
                message.obj = strPay;
                PayNowActivity.this.handler.sendMessage(message);
            } catch (Exception e10) {
                e10.printStackTrace();
                PapayResult papayResult = new PapayResult();
                com.join.mgps.Util.g1.c("orderId =" + PayNowActivity.this.orderId);
                papayResult.setStatus(2);
                papayResult.setPayType(PayNowActivity.this.request.getAction());
                papayResult.setMessage("签名验证失败");
                PayNowActivity.this.papayResult(papayResult);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissLoding() {
        this.payLoding.setVisibility(0);
        this.payDefault.setVisibility(8);
        this.payChoisePayType.setVisibility(8);
    }

    public static boolean isWxInstall(Context context) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void papayResult(PapayResult papayResult) {
        papayResult.setPayProduct(this.request.getProduct_name());
        papayResult.setPayOrderId(this.orderId);
        com.join.mgps.Util.g1.c("orderId =" + this.orderId);
        if (papayResult.getStatus() == 1 && this.order.ORDERTYPE == 1) {
            checkToken();
        }
        w6.b.b().c();
        int i10 = this.order.ORDERTYPE;
        if (i10 == 1) {
            PapayFinishActivity_.intent(this.activity).a(papayResult).b(true).start();
        } else if (i10 == 2) {
            int status = papayResult.getStatus();
            if (status == 1) {
                papayResult.setGameid(this.order.PRODUCT_ID);
                PayFinishActivity_.intent(this).a(papayResult).start();
            } else if (status == 2) {
                com.join.mgps.Util.a3.b(this).d("支付失败");
                finish();
            } else if (status == 3) {
                com.join.mgps.Util.a3.b(this).d("支付取消");
                finish();
            } else if (status != 4) {
                com.join.mgps.Util.a3.b(this).d("支付失败");
                finish();
            } else {
                com.join.mgps.Util.a3.b(this).d("支付等待");
                finish();
            }
            finish();
        } else if (i10 == 3) {
            int status2 = papayResult.getStatus();
            if (status2 == 1) {
                sendBroadcast(new Intent("com.join,mgps.sim.sdkgamePayfinish"));
                ExtBean extBean = this.extBean;
                if (extBean != null && "1".equals(extBean.getFrom())) {
                    com.join.mgps.Util.x1.c().e(this, this.extBean.getFrom_id(), this.extBean.getPosition());
                }
            } else if (status2 == 2) {
                com.join.mgps.Util.a3.b(this).d("支付失败");
            } else if (status2 == 3) {
                com.join.mgps.Util.a3.b(this).d("支付取消");
            } else if (status2 != 4) {
                com.join.mgps.Util.a3.b(this).d("支付失败");
            } else {
                com.join.mgps.Util.a3.b(this).d("支付等待");
            }
            finish();
        } else {
            PapayFinishActivity_.intent(this.activity).a(papayResult).start();
        }
        int i11 = this.order.PAYORRECHARGE;
        if (i11 == 1 || i11 == 2) {
            org.greenrobot.eventbus.c.f().q(papayResult);
        }
    }

    private void setPayResultInfo(Intent data) {
        String string = data.getExtras().getString("respCode");
        String string2 = data.getExtras().getString("respMessage");
        if ("1".equals(string)) {
            PapayResult papayResult = new PapayResult();
            papayResult.setStatus(1);
            papayResult.setPayType(this.request.getAction());
            papayResult.setMessage("支付成功");
            papayResult(papayResult);
        }
        if ("0".equals(string) || "-2".equals(string) || "-3".equals(string)) {
            PapayResult papayResult2 = new PapayResult();
            papayResult2.setStatus(2);
            papayResult2.setPayType(this.request.getAction());
            papayResult2.setMessage("支付失败 " + string2);
            papayResult(papayResult2);
        }
        if (WMConstants.TIMER_STAGE_NONE.equals(string)) {
            PapayResult papayResult3 = new PapayResult();
            papayResult3.setStatus(2);
            papayResult3.setPayType(this.request.getAction());
            papayResult3.setMessage("支付失败");
            papayResult(papayResult3);
        }
    }

    private void showLoding() {
        this.payLoding.setVisibility(0);
        this.payDefault.setVisibility(8);
        this.payChoisePayType.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startHeepayServiceJar(PaymentInfo _paymentInfo) {
        HPlugin.pay(this, _paymentInfo.getTokenID() + "," + _paymentInfo.getAgentId() + "," + _paymentInfo.getBillNo() + ",30");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPayAlipay(final String alipay_sign) {
        new e(alipay_sign).start();
    }

    private void startPayLayout() {
        this.papa_pay.startAnimation(AnimationUtils.loadAnimation(this, R.anim.bill_dialog_enter));
    }

    @AfterViews
    void afterview() {
        this.client = com.join.mgps.rpc.impl.n.i();
        this.activity = this;
        MApplication mApplication = (MApplication) getApplication();
        this.application = mApplication;
        mApplication.i(this);
        IWXAPI iwxapiCreateWXAPI = WXAPIFactory.createWXAPI(this, null);
        this.wxapi = iwxapiCreateWXAPI;
        iwxapiCreateWXAPI.registerApp("wx5e0a2e02d261de17");
        this.payProduct.setText(Html.fromHtml("商品：<font color='0x3b3b3b' >" + this.order.PRODUCT_NAME + "</font>"), TextView.BufferType.SPANNABLE);
        this.request = new PayCenterOrderRequest();
        String strD = this.prefDef.getLastPayType().d();
        if (strD.equals(PayCenterOrderRequest.ACTION_ALI_PAY)) {
            this.anotherPayType.setText(Html.fromHtml("使用支付宝支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
            this.layoutAlipay.setSelected(true);
        } else if (strD.equals(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT) || strD.equals(PayCenterOrderRequest.ACTION_WECHAT) || strD.equals(PayCenterOrderRequest.ACTION_WECHAT_SWIFT)) {
            this.anotherPayType.setText(Html.fromHtml("使用微信支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
            this.layoutWeixin.setSelected(true);
        } else if (strD.equals(PayCenterOrderRequest.ACTION_UNION_PAY)) {
            this.anotherPayType.setText(Html.fromHtml("使用银行卡支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
            this.layoutUnionpay.setSelected(true);
        } else if (strD.equals(PayCenterOrderRequest.ACTION_CREDIT_PAY)) {
            this.anotherPayType.setText(Html.fromHtml("使用信用卡支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
            this.layoutCreditCardPay.setSelected(true);
        } else if (strD.equals(PayCenterOrderRequest.PAY_TYPE_WALLET)) {
            if (this.order.PAYORRECHARGE == 1) {
                this.anotherPayType.setText(Html.fromHtml("使用饭票支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                this.layoutPabiPay.setSelected(true);
            } else {
                this.anotherPayType.setText(Html.fromHtml("使用支付宝支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                this.layoutAlipay.setSelected(true);
            }
        } else if (strD.equals(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE)) {
            if (this.order.PAYORRECHARGE == 1) {
                this.anotherPayType.setText(Html.fromHtml("使用红包支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                this.layouthongbaoPay.setSelected(true);
            } else {
                this.anotherPayType.setText(Html.fromHtml("使用支付宝支付<font color='#fa8819' >" + getString(R.string.pay_ad_type) + "</font>"));
                this.layoutAlipay.setSelected(true);
            }
        }
        try {
            String str = new DecimalFormat("##0.00").format(Float.parseFloat(this.order.MONEY_AMOUNT));
            this.request.setPay_rmb(str);
            this.order.MONEY_AMOUNT = str;
            this.payMoney.setText(Html.fromHtml("金额：<font color='0xfc3f5e' > " + this.order.MONEY_AMOUNT + "元</font>"), TextView.BufferType.SPANNABLE);
            this.request.setApp_callback_url(this.order.NOTIFY_URI);
            this.request.setApp_extra1(this.order.APP_EXT1);
            this.request.setApp_extra2(this.order.APP_EXT2);
            this.request.setApp_key(this.order.APPKEY);
            this.request.setApp_name(this.order.APP_NAME);
            this.request.setApp_order_id(this.order.APP_ORDER_ID);
            this.request.setApp_user_name(this.order.APP_USER_NAME);
            this.request.setImei("");
            this.request.setUid(this.order.APP_USER_ID);
            this.request.setOpenuid(this.order.PA_OPEN_UID);
            this.request.setPackage_name(getPackageName());
            this.request.setToken(this.order.TOKEN);
            PapayOrder papayOrder = this.order;
            int i10 = papayOrder.APP_SERVER;
            int i11 = i10 > 0 ? 100000000 + i10 : 100000000;
            int i12 = papayOrder.APP_DISTRICT;
            if (i12 > 0) {
                i11 += i12 * 10000;
            }
            this.request.setSid(i11);
            this.request.setProduct_id(this.order.PRODUCT_ID);
            this.request.setProduct_name(this.order.PRODUCT_NAME);
            startPayLayout();
            PapayOrder papayOrder2 = this.order;
            if (papayOrder2.PAYORRECHARGE == 1) {
                int i13 = papayOrder2.PAYSHOWTYPE;
                if (i13 == 0) {
                    this.layoutPabiPay.setVisibility(8);
                    this.layouthongbaoPay.setVisibility(8);
                } else if (i13 == 1) {
                    this.layoutPabiPay.setVisibility(0);
                    this.layouthongbaoPay.setVisibility(8);
                } else if (i13 == 2) {
                    this.layoutPabiPay.setVisibility(8);
                    this.layouthongbaoPay.setVisibility(0);
                } else if (i13 == 3) {
                    this.layoutPabiPay.setVisibility(0);
                    this.layouthongbaoPay.setVisibility(0);
                }
                this.request.setResource_id(com.join.mgps.rpc.a.f72317e);
            } else {
                this.request.setResource_id(com.join.mgps.rpc.a.f72318f);
            }
            switch (this.order.PAYTYPE) {
                case 1:
                    aliPay();
                    break;
                case 2:
                    weichatPaynormal();
                    break;
                case 3:
                    unionpay();
                    break;
                case 4:
                    creditCardPay();
                    break;
                case 5:
                    pabiPay();
                    break;
                case 6:
                    hongbaoPay();
                    break;
                case 7:
                    ziweiweichatPay();
                    break;
                case 8:
                    switfweichatPay();
                    break;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            com.join.mgps.Util.a3.b(this).d("充值金额不合法");
        }
    }

    @Click
    void aliPay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_ALI_PAY);
        this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_ALI_PAY);
        startPay(this.request);
    }

    @Click
    void anotherPayType() {
        this.payDefault.setVisibility(8);
        this.payChoisePayType.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void checkToken() {
        int i10 = this.checkNumber;
        if (i10 > 0) {
            this.checkNumber = i10 - 1;
            try {
                com.join.mgps.rpc.c cVarC = com.join.mgps.rpc.impl.b.C();
                UserInfo accountData = AccountUtil_.getInstance_(getApplicationContext()).getAccountData();
                if (accountData != null && accountData.getAccountType() != 2) {
                    MessageCheckTokenRequest.MessageCheckTokenRequestParameters.b bVarNewBuilder = MessageCheckTokenRequest.MessageCheckTokenRequestParameters.newBuilder();
                    bVarNewBuilder.setUid(accountData.getUid());
                    bVarNewBuilder.setToken(accountData.getToken());
                    bVarNewBuilder.setAppVersion(g8.b.a(this));
                    HashMap map = new HashMap();
                    map.put("uid", bVarNewBuilder.getUid() + "");
                    map.put(Constants.TOKEN, bVarNewBuilder.getToken());
                    map.put("appVersion", bVarNewBuilder.getAppVersion());
                    bVarNewBuilder.setSign(com.join.mgps.Util.k2.d(map));
                    MessageCheckTokenResponse.MessageCheckTokenResponseResult messageCheckTokenResponseResultB = cVarC.b(bVarNewBuilder.build());
                    if (messageCheckTokenResponseResultB == null || messageCheckTokenResponseResultB.getData() == null) {
                        this.handlerDelay.sendEmptyMessageDelayed(1, 10000L);
                    } else {
                        MessageCheckTokenResponse.MemberInfo data = messageCheckTokenResponseResultB.getData();
                        UserInfo userInfoBuild = accountData.toBuilder().setVipLevel(data.getVipLevel()).setSVIPLevel(data.getSvipLevel()).setVipExpTime(data.getVipExpTime()).setSecretKey(data.getSecretKey()).build();
                        if (com.join.mgps.Util.b.piv(userInfoBuild)) {
                            this.checkNumber = 0;
                            AccountUtil_.getInstance_(this).saveAccountData(userInfoBuild, this);
                            UtilsMy.S(this);
                        } else {
                            this.handlerDelay.sendEmptyMessageDelayed(1, 10000L);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                this.handlerDelay.sendEmptyMessageDelayed(1, 10000L);
            }
        }
    }

    @Click
    void creditCardPay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_CREDIT_PAY);
        this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_CREDIT_PAY);
        startPay(this.request);
    }

    public String getSignType() {
        return "sign_type=\"RSA\"";
    }

    @Click
    void hongbaoPay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_PABI);
        this.prefDef.getLastPayType().g(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE);
        this.request.setWallet_type(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE);
        startPay(this.request);
    }

    @Click
    void ok() {
        String strD = this.prefDef.getLastPayType().d();
        if (this.order.PAYORRECHARGE == 1) {
            if (strD.equals(PayCenterOrderRequest.PAY_TYPE_WALLET)) {
                this.request.setAction(PayCenterOrderRequest.ACTION_PABI);
                this.request.setWallet_type(PayCenterOrderRequest.PAY_TYPE_WALLET);
            } else if (strD.equals(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE)) {
                this.request.setAction(PayCenterOrderRequest.ACTION_PABI);
                this.request.setWallet_type(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE);
            } else {
                this.request.setAction(this.prefDef.getLastPayType().d());
            }
        } else if (strD.equals(PayCenterOrderRequest.PAY_TYPE_WALLET) || strD.equals(PayCenterOrderRequest.PAY_TYPE_RED_ENVELOPE)) {
            this.request.setAction(PayCenterOrderRequest.ACTION_ALI_PAY);
        } else {
            this.request.setAction(this.prefDef.getLastPayType().d());
        }
        startPay(this.request);
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 10000) {
            if (resultCode == 10010) {
                PapayResult papayResult = new PapayResult();
                papayResult.setStatus(1);
                papayResult.setPayType(this.request.getAction());
                papayResult.setMessage("支付成功");
                papayResult(papayResult);
                return;
            }
            if (resultCode == 10011) {
                PapayResult papayResult2 = new PapayResult();
                papayResult2.setStatus(2);
                papayResult2.setPayType(this.request.getAction());
                papayResult2.setMessage("支付失败");
                papayResult(papayResult2);
                return;
            }
            PapayResult papayResult3 = new PapayResult();
            papayResult3.setStatus(2);
            papayResult3.setPayType(this.request.getAction());
            papayResult3.setMessage("支付失败");
            papayResult(papayResult3);
            return;
        }
        if (data != null) {
            String string = data.getExtras().getString("resultCode");
            if (com.join.mgps.Util.t2.i(string) && this.payIngType == 8) {
                if (TextUtils.isEmpty(string) || !string.equalsIgnoreCase("success")) {
                    PapayResult papayResult4 = new PapayResult();
                    papayResult4.setStatus(2);
                    papayResult4.setPayType(this.request.getAction());
                    papayResult4.setMessage("支付失败");
                    papayResult(papayResult4);
                } else {
                    PapayResult papayResult5 = new PapayResult();
                    papayResult5.setStatus(1);
                    papayResult5.setPayType(this.request.getAction());
                    papayResult5.setMessage("支付成功");
                    papayResult(papayResult5);
                }
            } else if (this.payIngType == 8) {
                PapayResult papayResult6 = new PapayResult();
                papayResult6.setStatus(2);
                papayResult6.setPayType(this.request.getAction());
                papayResult6.setMessage("支付失败");
                papayResult(papayResult6);
            }
        } else if (this.payIngType == 8) {
            PapayResult papayResult7 = new PapayResult();
            papayResult7.setStatus(2);
            papayResult7.setPayType(this.request.getAction());
            papayResult7.setMessage("支付失败");
            papayResult(papayResult7);
        }
        if (resultCode == 0) {
            PapayResult papayResult8 = new PapayResult();
            papayResult8.setStatus(2);
            papayResult8.setPayType(this.request.getAction());
            papayResult8.setMessage("支付失败");
            papayResult(papayResult8);
        }
        if (resultCode == 4128) {
            setPayResultInfo(data);
        }
        if (data == null) {
            return;
        }
        String string2 = data.getExtras().getString("pay_result");
        if (com.join.mgps.Util.t2.h(string2)) {
            return;
        }
        if (string2.equalsIgnoreCase("success")) {
            PapayResult papayResult9 = new PapayResult();
            papayResult9.setStatus(1);
            papayResult9.setPayType(this.request.getAction());
            papayResult9.setMessage("支付成功");
            papayResult(papayResult9);
            return;
        }
        if (string2.equalsIgnoreCase("fail")) {
            PapayResult papayResult10 = new PapayResult();
            papayResult10.setStatus(2);
            papayResult10.setPayType(this.request.getAction());
            papayResult10.setMessage("支付失败");
            papayResult(papayResult10);
            return;
        }
        if (string2.equalsIgnoreCase("cancel")) {
            PapayResult papayResult11 = new PapayResult();
            papayResult11.setStatus(3);
            papayResult11.setPayType(this.request.getAction());
            papayResult11.setMessage("支付取消");
            papayResult(papayResult11);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        int i10 = this.order.PAYORRECHARGE;
        if (i10 == 1 || i10 == 2) {
            PapayResult papayResult = new PapayResult();
            papayResult.setStatus(3);
            org.greenrobot.eventbus.c.f().q(papayResult);
        }
        finish();
        super.onBackPressed();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            if (this.intentDataMain != null) {
                moveTaskToBack(true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Click
    void pabiPay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_PABI);
        this.prefDef.getLastPayType().g(PayCenterOrderRequest.PAY_TYPE_WALLET);
        this.request.setWallet_type(PayCenterOrderRequest.PAY_TYPE_WALLET);
        startPay(this.request);
    }

    public String sign(String content) {
        return com.join.mgps.Util.l2.a(content, "");
    }

    public void startPay(final PayCenterOrderRequest request) {
        int i10 = this.order.ORDERTYPE;
        if (i10 != 2 && i10 != 3) {
            startPayNow(request);
            return;
        }
        PayGameDataRequest payGameDataRequest = new PayGameDataRequest();
        payGameDataRequest.setConsole_app_key(request.getApp_key());
        payGameDataRequest.setDevice_id("");
        payGameDataRequest.setPay_type(request.getAction());
        payGameDataRequest.setUid(request.getOpenuid() + "");
        payGameDataRequest.setApp_ver(com.join.android.app.common.utils.q.n(this).z() + "");
        showLoding();
        com.join.mgps.rpc.n.g(payGameDataRequest, new c(request));
    }

    public void startPayNow(final PayCenterOrderRequest request) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.join.mgps.Util.g1.d("paytime", "paytime1" + jCurrentTimeMillis + "    " + this.payTime);
        if (jCurrentTimeMillis - this.payTime < 500) {
            com.join.mgps.Util.g1.d("paytime", "paytime222" + jCurrentTimeMillis + "    " + this.payTime);
            return;
        }
        request.getAction().equals(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
        this.payTime = jCurrentTimeMillis;
        if (!com.join.android.app.common.utils.m.j(this.activity)) {
            com.join.mgps.Util.a3.b(this.activity).d(getResources().getString(R.string.net_connect_failed));
        }
        showLoding();
        com.join.mgps.rpc.n.f(request, new d(request));
    }

    void switfweichatPay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
        startPay(this.request);
    }

    @Click
    void unionpay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_UNION_PAY);
        this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_UNION_PAY);
        startPay(this.request);
    }

    @Receiver(actions = {p5.a.L})
    void weichartPayResult(Intent intent) {
        String stringExtra = intent.getStringExtra("out_trade_no");
        String stringExtra2 = intent.getStringExtra("return_code");
        String stringExtra3 = intent.getStringExtra("return_msg");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(stringExtra);
        sb2.append("  ");
        sb2.append(stringExtra2);
        sb2.append("  ");
        sb2.append(stringExtra3);
        if (getPackageName().equals(stringExtra)) {
            if ("SUCCESS".equals(stringExtra2)) {
                PapayResult papayResult = new PapayResult();
                papayResult.setStatus(1);
                papayResult.setPayType(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
                papayResult.setMessage("支付成功");
                papayResult(papayResult);
                return;
            }
            if ("CANCEL".equals(stringExtra2)) {
                PapayResult papayResult2 = new PapayResult();
                papayResult2.setStatus(2);
                papayResult2.setPayType(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
                papayResult2.setMessage("获取订单号失败");
                papayResult(papayResult2);
                return;
            }
            PapayResult papayResult3 = new PapayResult();
            papayResult3.setStatus(2);
            papayResult3.setPayType(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
            papayResult3.setMessage(stringExtra3);
            papayResult(papayResult3);
        }
    }

    @Click
    void weichatPay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_WECHAT);
        this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT);
        int i10 = this.order.PAYTYPE;
        if (i10 == 2) {
            this.request.setAction(PayCenterOrderRequest.ACTION_WECHAT);
            this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT);
        } else if (i10 == 7) {
            this.request.setAction(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
            this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
        } else if (i10 == 8) {
            this.request.setAction(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
            this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT_SWIFT);
        } else if (i10 == 9) {
            this.request.setAction(PayCenterOrderRequest.ACTION_WECHAT_OFFICIAL);
            this.prefDef.getLastPayType().g(PayCenterOrderRequest.ACTION_WECHAT_OFFICIAL);
        }
        startPay(this.request);
    }

    void weichatPaynormal() {
        this.request.setAction(PayCenterOrderRequest.ACTION_WECHAT);
        startPay(this.request);
    }

    void ziweiweichatPay() {
        this.request.setAction(PayCenterOrderRequest.ACTION_ZIWEI_WECHAT);
        startPay(this.request);
    }
}
