package com.switfpass.pay.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.mgps.activity.PayNowActivity_;
import com.switfpass.pay.MainApplication;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.lib.Resourcemap;
import java.text.NumberFormat;
import net.tsz.afinal.FinalBitmap;

/* JADX INFO: loaded from: classes2.dex */
public class PayResultActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f82472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f82473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f82474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f82475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f82476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OrderBena f82477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f82478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ImageView f82479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f82480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f82481k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f82482l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private TextView f82483m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private TextView f82484n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f82485o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LinearLayout f82486p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LinearLayout f82487q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private LinearLayout f82488r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LinearLayout f82489s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Button f82490t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private FinalBitmap f82491u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private TextView f82492v;

    public static void startActivity(OrderBena orderBena, Context context) {
        Intent intent = new Intent();
        intent.putExtra(PayNowActivity_.ORDER_EXTRA, orderBena);
        intent.setClass(context, PayResultActivity.class);
        context.startActivity(intent);
    }

    protected View b(int i10) {
        return findViewById(i10);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(Resourcemap.getLayout_Result());
        this.f82477g = (OrderBena) getIntent().getSerializableExtra(PayNowActivity_.ORDER_EXTRA);
        FinalBitmap finalBitmapCreate = FinalBitmap.create(this);
        this.f82491u = finalBitmapCreate;
        try {
            finalBitmapCreate.configDiskCachePath(com.switfpass.pay.utils.l0.i());
        } catch (Exception unused) {
        }
        this.f82492v = (TextView) b(Resourcemap.getLayout_tv_pay_transNo());
        this.f82479i = (ImageView) b(Resourcemap.getById_iv_pay_image());
        this.f82487q = (LinearLayout) b(Resourcemap.getById_pay_logo_lay());
        this.f82488r = (LinearLayout) b(Resourcemap.getById_pay_img_lay());
        this.f82478h = (ImageView) b(Resourcemap.getById_pay_logo_title());
        this.f82472b = (TextView) b(Resourcemap.getLayout_tv_orderNo());
        this.f82473c = (TextView) b(Resourcemap.getLayout_tv_order_time());
        this.f82474d = (TextView) b(Resourcemap.getLayout_tv_order_state());
        this.f82475e = (TextView) b(Resourcemap.getLayout_tv_tv_bank());
        this.f82476f = (TextView) b(Resourcemap.getLayout_tv_money());
        b(Resourcemap.getLayout_iv_payType());
        this.f82480j = (TextView) b(Resourcemap.getLayout_finsh());
        this.f82481k = (TextView) b(Resourcemap.getLayout_tv_pay_body());
        this.f82482l = (TextView) b(Resourcemap.getLayout_tv_pay_mch_order());
        this.f82483m = (TextView) b(Resourcemap.getLayout_tv_pay_wx_order());
        this.f82484n = (TextView) b(Resourcemap.getLayout_tx_pay_wx_title());
        this.f82486p = (LinearLayout) b(Resourcemap.getLayout_rl_pay_mch());
        this.f82485o = (TextView) b(Resourcemap.getLayout_tv_pay_mch());
        this.f82489s = (LinearLayout) b(Resourcemap.getLayout_layBack());
        this.f82490t = (Button) b(Resourcemap.getLayout_pay_complete());
        if (!"".equals(this.f82477g.getPay_logo()) && this.f82477g.getPay_logo() != null) {
            this.f82488r.setVisibility(8);
            this.f82487q.setVisibility(0);
            this.f82491u.display(this.f82478h, this.f82477g.getPay_logo());
        }
        if (this.f82477g.getCashierName() == null || this.f82477g.getCashierName().equals("")) {
            this.f82486p.setVisibility(8);
        } else {
            this.f82486p.setVisibility(0);
            this.f82482l.setText(this.f82477g.getCashierName());
        }
        this.f82472b.setText(this.f82477g.getOutTradeNo());
        this.f82475e.setText(this.f82477g.getTradeName());
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        numberInstance.setMinimumFractionDigits(2);
        this.f82476f.setText("￥" + numberInstance.format(Double.parseDouble(this.f82477g.getMoeny()) / 100.0d));
        this.f82473c.setText(com.switfpass.pay.utils.l0.e(Long.parseLong(this.f82477g.getTradeTime())));
        this.f82481k.setText(this.f82477g.getBody());
        this.f82492v.setText(this.f82477g.getMchOrderNo());
        this.f82483m.setText(this.f82477g.getTransactionId());
        this.f82485o.setText(this.f82477g.getMchName());
        this.f82474d.setText(getResources().getString(Resourcemap.getString_pay_success_prompt()));
        if (this.f82477g.getService() != null) {
            if (this.f82477g.getService().equals(MainApplication.f82451k) || this.f82477g.getService().equalsIgnoreCase(MainApplication.f82458r) || this.f82477g.getService().equalsIgnoreCase(MainApplication.f82457q)) {
                this.f82479i.setImageDrawable(getResources().getDrawable(Resourcemap.getById_icon_qq_color()));
                this.f82484n.setText(getResources().getString(Resourcemap.getString_pay_qq_order_no()));
                this.f82486p.setVisibility(8);
            } else if (this.f82477g.getService().equals(MainApplication.f82454n) || this.f82477g.getService().equalsIgnoreCase(MainApplication.f82460t)) {
                this.f82479i.setImageDrawable(getResources().getDrawable(Resourcemap.getById_icon_pay_color()));
                this.f82484n.setText(getResources().getString(Resourcemap.getString_pay_zfb_order_no()));
            }
        }
        this.f82480j.setOnClickListener(new f0(this));
        this.f82489s.setOnClickListener(new g0(this));
        this.f82490t.setOnClickListener(new h0(this));
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return super.onKeyDown(i10, keyEvent);
        }
        OrderBena orderBena = this.f82477g;
        if (orderBena == null || !orderBena.isMark()) {
            d8.a.a(0, 0);
        } else {
            d8.a.b(6, 7, "支付状态：该笔订单已支付");
        }
        finish();
        return true;
    }
}
