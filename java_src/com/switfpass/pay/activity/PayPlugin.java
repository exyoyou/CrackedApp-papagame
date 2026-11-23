package com.switfpass.pay.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.haima.hmcp.Constants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.dto.Constant;
import com.switfpass.pay.bean.MchBean;
import com.switfpass.pay.bean.RequestMsg;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class PayPlugin extends BasePayActivity implements View.OnClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EditText f82468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Handler f82469d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected ProgressDialog f82470e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f82471f;

    static /* synthetic */ String e(PayPlugin payPlugin) {
        HashMap map = new HashMap();
        map.put("body", "sdk收款");
        map.put("service", "unified.trade.pay");
        map.put("version", "1.0");
        map.put("mch_id", "7551000001");
        map.put(Constant.NOTIFY_URL, "http://zhifu.dev.swiftpass.cn/spay/notify");
        payPlugin.f82471f = com.switfpass.pay.utils.v.a(String.valueOf(new Random().nextInt(10000)).getBytes());
        map.put("nonce_str", com.switfpass.pay.utils.v.a(String.valueOf(new Random().nextInt(10000)).getBytes()));
        map.put("out_trade_no", payPlugin.f82471f);
        map.put("mch_create_ip", "127.0.0.1");
        map.put("total_fee", payPlugin.f82468c.getText().toString());
        map.put(Constant.MD5, payPlugin.g("9d101c97133837e13dde2d32a5054abb", map));
        return com.switfpass.pay.utils.p0.b(map);
    }

    public static void h(Activity activity, RequestMsg requestMsg) {
        ArrayList arrayList = new ArrayList();
        for (String str : requestMsg.getServerType().split(Constants.TIPS_SPECIAL_TAG)) {
            MchBean mchBean = new MchBean();
            mchBean.setTradeType(str);
            arrayList.add(mchBean);
        }
        com.switfpass.pay.utils.b0 b0Var = new com.switfpass.pay.utils.b0(activity, arrayList);
        b0Var.s(requestMsg);
        com.switfpass.pay.utils.h.e(activity, b0Var);
        b0Var.show();
    }

    public static void j(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.b0 b0Var = new com.switfpass.pay.utils.b0(activity);
        b0Var.s(requestMsg);
        b0Var.y(requestMsg);
    }

    public static void k(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.b0 b0Var = new com.switfpass.pay.utils.b0(activity);
        b0Var.s(requestMsg);
        b0Var.z(requestMsg);
    }

    public static void l(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.c0 c0Var = new com.switfpass.pay.utils.c0();
        if (requestMsg.getTokenId() == null || "".equals(requestMsg.getTokenId())) {
            c0Var.a(activity, "tokenid不能为空");
        } else {
            PaySDKCaptureActivity.startActivity(activity, requestMsg);
        }
    }

    public static void m(Activity activity, RequestMsg requestMsg) {
        com.switfpass.pay.utils.b0 b0Var = new com.switfpass.pay.utils.b0(activity);
        b0Var.s(requestMsg);
        b0Var.A(requestMsg);
    }

    public void f(StringBuilder sb2, Map map, boolean z10) {
        ArrayList<String> arrayList = new ArrayList(map.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            sb2.append(str);
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            String strN = (String) map.get(str);
            if (z10) {
                strN = n(strN);
            }
            sb2.append(strN);
            sb2.append(x.a.f97576d);
        }
        sb2.setLength(sb2.length() - 1);
    }

    public String g(String str, Map map) {
        StringBuilder sb2 = new StringBuilder((map.size() + 1) * 10);
        com.switfpass.pay.utils.h0.a(sb2, map, false);
        sb2.append("&key=");
        sb2.append(str);
        String string = sb2.toString();
        try {
            return com.switfpass.pay.utils.v.b(string).toUpperCase();
        } catch (Exception unused) {
            return com.switfpass.pay.utils.v.b(string).toUpperCase();
        }
    }

    public void i(Context context, String str) {
        runOnUiThread(new d0(this, context, str));
    }

    public String n(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Throwable unused) {
            return str;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // com.switfpass.pay.activity.BasePayActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.join.android.app.mgsim.wufun.R.array.smssdk_country_group_b);
        d8.a.d(9, this.f82469d);
        Button button = (Button) findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_menu_material);
        this.f82468c = (EditText) findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_1_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_2_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_3_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_display_4_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_headline_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_large_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_medium_material);
        findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_text_size_menu_header_material);
        button.setOnClickListener(new c0(this));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
