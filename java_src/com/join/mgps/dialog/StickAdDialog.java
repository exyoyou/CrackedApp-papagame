package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.SimulatorGoldAdCfgBean;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa91.common.BaseAppConfig;

/* JADX INFO: loaded from: classes3.dex */
public class StickAdDialog extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ImageView f67349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SimulatorGoldAdCfgBean f67354g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f67355h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Context f67356i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f67357j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private a f67358k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    MyReceiver f67359l;

    class MyReceiver extends BroadcastReceiver {
        MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i10 = intent.getExtras().getInt(BaseAppConfig.KEY_VIP_LEVEL);
            intent.getExtras().getInt(BaseAppConfig.KEY_SVIP_LEVEL);
            if (i10 > 0) {
                Intent intent2 = new Intent();
                intent2.setAction(p5.a.f96196g0);
                StickAdDialog.this.getContext().sendBroadcast(intent2);
                StickAdDialog.this.dismiss();
            }
        }
    }

    public interface a {
        void a();

        void b(boolean close);

        void onShow();
    }

    public StickAdDialog(Context context, SimulatorGoldAdCfgBean cfgBean, boolean close) {
        super(context);
        this.f67356i = context;
        this.f67354g = cfgBean;
        this.f67357j = close;
    }

    private void e() {
        SimulatorGoldAdCfgBean simulatorGoldAdCfgBean = this.f67354g;
        if (simulatorGoldAdCfgBean != null) {
            this.f67350c.setText(simulatorGoldAdCfgBean.getTip_text());
            this.f67351d.setText(this.f67354g.getT_btn_text());
            this.f67353f.setText(this.f67354g.getB_btn_text());
            this.f67352e.setText(this.f67354g.getCorner_text());
        }
    }

    void a() {
        this.f67359l = new MyReceiver();
        IntentFilter intentFilter = new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success");
        intentFilter.addAction("com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success");
        getContext().registerReceiver(this.f67359l, intentFilter);
    }

    public void b(String eventName, String gameId) {
        Intent intent = new Intent("com.join.android.app.mgsim.wufun.broadcast.emu.commonpoint");
        intent.putExtra(CommonService_.AnonymousClass33.f72723b, eventName);
        intent.putExtra("gameId", gameId);
        getContext().sendBroadcast(intent);
    }

    public void c(String gameId) {
        this.f67355h = gameId;
    }

    public void d(a mListener) {
        this.f67358k = mListener;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f67359l != null) {
            getContext().unregisterReceiver(this.f67359l);
            this.f67359l = null;
        }
        com.join.mgps.ad.a.g(this.f67356i).b();
        super.dismiss();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (v10 == this.f67349b) {
            a aVar = this.f67358k;
            if (aVar != null) {
                aVar.b(this.f67357j);
            }
            if (this.f67357j) {
                b(Event.Customgoldfinger_AdUnnecessary_Close.name(), this.f67355h);
            } else {
                b(Event.Customgoldfinger_AdMust_Close.name(), this.f67355h);
            }
            dismiss();
            return;
        }
        if (v10 != this.f67353f) {
            if (v10 == this.f67351d) {
                a aVar2 = this.f67358k;
                if (aVar2 != null) {
                    aVar2.a();
                }
                dismiss();
                return;
            }
            return;
        }
        if (this.f67357j) {
            a aVar3 = this.f67358k;
            if (aVar3 != null) {
                aVar3.b(true);
                b(Event.Customgoldfinger_AdUnnecessary_Buy.name(), this.f67355h);
            }
        } else {
            SimulatorGoldAdCfgBean simulatorGoldAdCfgBean = this.f67354g;
            if (simulatorGoldAdCfgBean != null && com.join.mgps.Util.t2.i(simulatorGoldAdCfgBean.getB_btn_url())) {
                IntentUtil.getInstance().goShareWebActivity(this.f67356i, this.f67354g.getB_btn_url());
            }
            b(Event.Customgoldfinger_AdMust_Buy.name(), this.f67355h);
        }
        dismiss();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = defaultDisplay.getWidth();
        attributes.height = defaultDisplay.getHeight();
        window.setAttributes(attributes);
        setContentView(R.layout.dialog_stick_ad);
        this.f67349b = (ImageView) findViewById(R.id.iv_close);
        this.f67350c = (TextView) findViewById(R.id.tv_ad_tip);
        this.f67351d = (TextView) findViewById(R.id.tv_opt_view);
        this.f67353f = (TextView) findViewById(R.id.tv_opt_vip);
        this.f67352e = (TextView) findViewById(R.id.tv_view_ad_label);
        this.f67349b.setOnClickListener(this);
        this.f67351d.setOnClickListener(this);
        this.f67353f.setOnClickListener(this);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        a aVar = this.f67358k;
        if (aVar != null) {
            aVar.onShow();
        }
        e();
        a();
    }
}
