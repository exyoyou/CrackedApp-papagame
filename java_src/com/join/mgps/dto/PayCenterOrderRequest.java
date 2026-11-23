package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import com.join.mgps.rpc.a;
import com.umeng.analytics.pro.bm;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import u.b;

/* JADX INFO: loaded from: classes3.dex */
public class PayCenterOrderRequest {
    public static final String ACTION_ALI_PAY = "alipaymobilesign";
    public static final String ACTION_CREDIT_PAY = "upmpmobilekongjian1";
    public static final String ACTION_PABI = "papawallet";
    public static final String ACTION_UNION_PAY = "upmpmobilekongjian";
    public static final String ACTION_WECHAT = "weixinmobilenew";
    public static final String ACTION_WECHAT_OFFICIAL = "wechatofficialpapa";
    public static final String ACTION_WECHAT_SWIFT = "swiftpasspapa";
    public static final String ACTION_ZIWEI_WECHAT = "ziweixingh5";
    public static final String PAY_TYPE_ALIPAY = "1";
    public static final String PAY_TYPE_COUPON = "coupon";
    public static final String PAY_TYPE_COUPON_RED = "coupon_red_envelope";
    public static final String PAY_TYPE_COUPON_WALLET = "coupon_wallet";
    public static final String PAY_TYPE_RECHARGE = "2";
    public static final String PAY_TYPE_RED_ENVELOPE = "red_envelope";
    public static final String PAY_TYPE_WALLET = "wallet";
    private String action;
    private int sid;
    private String sign;
    private String uid;
    private String app_callback_url = "";
    private String app_extra1 = "";
    private String app_extra2 = "";
    private String app_key = "";
    private String app_name = "";
    private String app_order_id = "";
    private String app_user_name = "";
    private String card_id = "";
    private String card_pass = "";
    private String imei = "";
    private String kingnet_order_id = "";
    private int openuid = 0;
    private String pay_rmb = "";
    private String pay_type = "";
    private String product_name = "";
    private String product_id = "";
    private String resource_id = a.f72318f;
    private String token = "";
    private String wallet_type = "";
    private String device_type = "android";
    private String package_name = "";

    public String getAction() {
        return this.action;
    }

    public String getApp_callback_url() {
        return this.app_callback_url;
    }

    public String getApp_extra1() {
        return this.app_extra1;
    }

    public String getApp_extra2() {
        return this.app_extra2;
    }

    public String getApp_key() {
        return this.app_key;
    }

    public String getApp_name() {
        return this.app_name;
    }

    public String getApp_order_id() {
        return this.app_order_id;
    }

    public String getApp_user_name() {
        return this.app_user_name;
    }

    public Map<String, String> getArgs() {
        HashMap map = new HashMap(0);
        map.put("app_extra1", this.app_extra1);
        map.put("app_extra2", this.app_extra2);
        map.put(b.f97422h, this.app_key);
        map.put("app_name", this.app_name);
        map.put("app_order_id", this.app_order_id);
        map.put("app_user_name", this.app_user_name);
        map.put("card_id", this.card_id);
        map.put("card_pass", this.card_pass);
        map.put("imei", this.imei);
        map.put("kingnet_order_id", this.kingnet_order_id);
        map.put("openuid", this.openuid + "");
        map.put("pay_rmb", this.pay_rmb);
        map.put(Constant.PAY_TYPE, this.pay_type);
        map.put("product_name", this.product_name);
        map.put("app_callback_url", this.app_callback_url);
        map.put("sid", this.sid + "");
        map.put("uid", this.uid);
        map.put("product_id", this.product_id);
        map.put("resource_id", this.resource_id);
        map.put(Constants.TOKEN, this.token + "");
        map.put("wallet_type", this.wallet_type + "");
        map.put(bm.ai, this.device_type + "");
        map.put("package_name", this.package_name);
        return map;
    }

    public Map<String, String> getArgsURLEncoder() {
        HashMap map = new HashMap(0);
        try {
            map.put("app_extra1", URLEncoder.encode(this.app_extra1, "utf8"));
            map.put("app_extra2", URLEncoder.encode(this.app_extra2, "utf8"));
            map.put(b.f97422h, this.app_key);
            map.put("app_name", URLEncoder.encode(this.app_name, "utf8"));
            map.put("app_order_id", this.app_order_id);
            map.put("app_user_name", URLEncoder.encode(this.app_user_name, "utf8"));
            map.put("card_id", this.card_id);
            map.put("card_pass", this.card_pass);
            map.put("imei", this.imei);
            map.put("kingnet_order_id", this.kingnet_order_id);
            map.put("openuid", this.openuid + "");
            map.put("pay_rmb", this.pay_rmb);
            map.put(Constant.PAY_TYPE, this.pay_type);
            map.put("product_name", URLEncoder.encode(this.product_name, "utf8"));
            map.put("app_callback_url", URLEncoder.encode(this.app_callback_url, "utf8"));
            map.put("sid", this.sid + "");
            map.put("uid", this.uid);
            map.put("product_id", this.product_id);
            map.put("resource_id", this.resource_id);
            map.put(Constants.TOKEN, this.token + "");
            map.put("wallet_type", this.wallet_type + "");
            map.put(bm.ai, this.device_type + "");
            map.put("package_name", this.package_name);
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
        return map;
    }

    public String getCard_id() {
        return this.card_id;
    }

    public String getCard_pass() {
        return this.card_pass;
    }

    public String getDevice_type() {
        return this.device_type;
    }

    public String getImei() {
        return this.imei;
    }

    public String getKingnet_order_id() {
        return this.kingnet_order_id;
    }

    public int getOpenuid() {
        return this.openuid;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPay_rmb() {
        return this.pay_rmb;
    }

    public String getPay_type() {
        return this.pay_type;
    }

    public String getProduct_id() {
        return this.product_id;
    }

    public String getProduct_name() {
        return this.product_name;
    }

    public String getResource_id() {
        return this.resource_id;
    }

    public int getSid() {
        return this.sid;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public String getWallet_type() {
        return this.wallet_type;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public void setApp_callback_url(String app_callback_url) {
        this.app_callback_url = app_callback_url;
    }

    public void setApp_extra1(String app_extra1) {
        this.app_extra1 = app_extra1;
    }

    public void setApp_extra2(String app_extra2) {
        this.app_extra2 = app_extra2;
    }

    public void setApp_key(String app_key) {
        this.app_key = app_key;
    }

    public void setApp_name(String app_name) {
        this.app_name = app_name;
    }

    public void setApp_order_id(String app_order_id) {
        this.app_order_id = app_order_id;
    }

    public void setApp_user_name(String app_user_name) {
        this.app_user_name = app_user_name;
    }

    public void setCard_id(String card_id) {
        this.card_id = card_id;
    }

    public void setCard_pass(String card_pass) {
        this.card_pass = card_pass;
    }

    public void setDevice_type(String device_type) {
        this.device_type = device_type;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }

    public void setKingnet_order_id(String kingnet_order_id) {
        this.kingnet_order_id = kingnet_order_id;
    }

    public void setOpenuid(int openuid) {
        this.openuid = openuid;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setPay_rmb(String pay_rmb) {
        this.pay_rmb = pay_rmb;
    }

    public void setPay_type(String pay_type) {
        this.pay_type = pay_type;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public void setResource_id(String resource_id) {
        this.resource_id = resource_id;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setWallet_type(String wallet_type) {
        this.wallet_type = wallet_type;
    }
}
