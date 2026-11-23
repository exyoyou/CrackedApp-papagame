package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FightWifiInputDialogActivity_;

/* JADX INFO: loaded from: classes3.dex */
public class v2 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ImageView f67884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Button f67885d;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v2.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FightWifiInputDialogActivity_.intent(v2.this.f67883b).startForResult(9001);
            v2.this.dismiss();
        }
    }

    public v2(Context context, int theme) {
        super(context, theme);
        this.f67883b = context;
    }

    public void a(int visible) {
        this.f67884c.setVisibility(visible);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67883b).inflate(R.layout.dialog_fight_server_disconnect, (ViewGroup) null);
        this.f67884c = (ImageView) viewInflate.findViewById(R.id.cancel);
        this.f67885d = (Button) viewInflate.findViewById(R.id.reJoin);
        this.f67884c.setOnClickListener(new a());
        this.f67885d.setOnClickListener(new b());
        setContentView(viewInflate);
    }

    public v2(Context context) {
        super(context);
        this.f67883b = context;
    }
}
