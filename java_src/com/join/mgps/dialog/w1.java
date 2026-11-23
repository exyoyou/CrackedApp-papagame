package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.papa.sim.statistic.Event;

/* JADX INFO: loaded from: classes3.dex */
public class w1 extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OnlineCouponConfigBean f67916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f67917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f67918e;

    public interface a {
        void a();
    }

    public w1(@NonNull Context context, OnlineCouponConfigBean data, int localType) {
        super(context);
        this.f67918e = null;
        this.f67915b = context;
        this.f67916c = data;
        this.f67917d = localType;
    }

    private void a() {
        ImageView imageView = (ImageView) findViewById(R.id.ivClose);
        TextView textView = (TextView) findViewById(R.id.tvTitle);
        TextView textView2 = (TextView) findViewById(R.id.tvDesc);
        TextView textView3 = (TextView) findViewById(R.id.tvGetCoupon);
        imageView.setOnClickListener(this);
        textView3.setOnClickListener(this);
        OnlineCouponConfigBean onlineCouponConfigBean = this.f67916c;
        textView.setText(onlineCouponConfigBean == null ? "" : onlineCouponConfigBean.getRedPacketHint());
        OnlineCouponConfigBean onlineCouponConfigBean2 = this.f67916c;
        textView2.setText(onlineCouponConfigBean2 != null ? onlineCouponConfigBean2.getRedPacketSubHint() : "");
    }

    public void b(a listener) {
        this.f67918e = listener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.ivClose) {
            dismiss();
            return;
        }
        if (view.getId() == R.id.tvGetCoupon) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(this.f67916c.getRedPacketJumpUrl());
            ShareWebActivity_.intent(this.f67915b).b(intentDateBean).start();
            com.papa.sim.statistic.t.l(this.f67915b).T1(Event.clickOpenPopUpRedBag, AccountUtil_.getInstance_(this.f67915b).getAccountData().getUid());
            dismiss();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_online_coupon);
        setCanceledOnTouchOutside(false);
        getWindow().setBackgroundDrawableResource(17170445);
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        a();
    }
}
