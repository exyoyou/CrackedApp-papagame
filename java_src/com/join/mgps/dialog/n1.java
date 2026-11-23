package com.join.mgps.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.WxProgram;

/* JADX INFO: loaded from: classes3.dex */
public class n1 extends p implements DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private DomainInfoBean f67698k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private a f67699l;

    public interface a {
        void a();

        void b();
    }

    public n1(@NonNull Context context) {
        super(context, R.style.Dialog);
        this.f67699l = null;
    }

    private void p() {
        WxProgram wxProgram;
        try {
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) findViewById(R.id.ivPic);
            TextView textView = (TextView) findViewById(R.id.btnPositive);
            TextView textView2 = (TextView) findViewById(R.id.btnNegative);
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) findViewById(R.id.imgPositive);
            DomainInfoBean domainInfoBean = this.f67698k;
            if (domainInfoBean != null) {
                com.join.android.app.common.utils.l.o(simpleDraweeView, domainInfoBean.getPic());
                String info = this.f67698k.getInfo();
                if (!TextUtils.isEmpty(info) && (wxProgram = (WxProgram) JsonMapper.getInstance().fromJson(com.join.mgps.Util.a.b(info), WxProgram.class)) != null) {
                    if (!TextUtils.isEmpty(wxProgram.getButton_pic())) {
                        textView.setVisibility(8);
                        simpleDraweeView2.setVisibility(0);
                        com.join.android.app.common.utils.l.q(simpleDraweeView2, wxProgram.getButton_pic(), com.facebook.drawee.drawable.s.c.f27288e);
                    } else if (TextUtils.isEmpty(wxProgram.getButton_text())) {
                        textView.setVisibility(0);
                        simpleDraweeView2.setVisibility(8);
                        textView.setText("领取攻略");
                    } else {
                        textView.setVisibility(0);
                        simpleDraweeView2.setVisibility(8);
                        textView.setText(wxProgram.getButton_text());
                    }
                }
            }
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.k1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f67648b.q(view);
                }
            });
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.l1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f67660b.r(view);
                }
            });
            simpleDraweeView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f67668b.s(view);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(View view) {
        a aVar = this.f67699l;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(View view) {
        a aVar = this.f67699l;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s(View view) {
        a aVar = this.f67699l;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.join.mgps.dialog.p, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_mod_launch_domain);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        setOnShowListener(this);
        p();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
    }

    @Override // com.join.mgps.dialog.p, android.app.Dialog
    public void show() {
        if (getWindow() == null) {
            return;
        }
        super.show();
    }

    public void t(a listener) {
        this.f67699l = listener;
    }

    public n1(@NonNull Context context, DomainInfoBean domainInfoBean) {
        super(context, R.style.Dialog);
        this.f67699l = null;
        this.f67698k = domainInfoBean;
    }
}
