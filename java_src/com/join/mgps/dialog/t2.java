package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.FightWifiInputDialogActivity_;

/* JADX INFO: loaded from: classes3.dex */
public class t2 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ImageView f67843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Button f67844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f67845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67846f;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t2.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FightWifiInputDialogActivity_.intent(t2.this.f67842b).startForResult(9001);
            t2.this.dismiss();
        }
    }

    public t2(Context context, int theme, String ip) {
        super(context, theme);
        this.f67842b = context;
        this.f67845e = ip;
    }

    public void a(int visible) {
        this.f67843c.setVisibility(visible);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67842b).inflate(R.layout.dialog_fight_enteringroom_failed, (ViewGroup) null);
        this.f67846f = (TextView) viewInflate.findViewById(R.id.title);
        this.f67843c = (ImageView) viewInflate.findViewById(R.id.cancel);
        this.f67844d = (Button) viewInflate.findViewById(R.id.reJoin);
        TextView textView = this.f67846f;
        textView.setText(textView.getText().toString().replace("$1", this.f67845e));
        this.f67843c.setOnClickListener(new a());
        this.f67844d.setOnClickListener(new b());
        setContentView(viewInflate);
    }

    public t2(Context context) {
        super(context);
        this.f67842b = context;
    }
}
