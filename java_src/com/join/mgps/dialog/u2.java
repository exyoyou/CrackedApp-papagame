package com.join.mgps.dialog;

import android.app.Activity;
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

/* JADX INFO: loaded from: classes3.dex */
public class u2 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Button f67855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ImageView f67856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f67857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f67858f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f67859g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f67860h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u2.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u2.this.dismiss();
            ((Activity) u2.this.f67854b).finish();
        }
    }

    public u2(Context context, int theme, String ip, String gameName) {
        super(context, theme);
        this.f67854b = context;
        this.f67857e = ip;
        this.f67858f = gameName;
    }

    public void a(int visible) {
        this.f67855c.setVisibility(visible);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67854b).inflate(R.layout.dialog_fight_mismatch, (ViewGroup) null);
        this.f67855c = (Button) viewInflate.findViewById(R.id.cancel);
        this.f67856d = (ImageView) viewInflate.findViewById(R.id.back);
        TextView textView = (TextView) viewInflate.findViewById(R.id.info);
        this.f67860h = textView;
        this.f67860h.setText(textView.getText().toString().replace("$1", this.f67858f));
        this.f67855c.setOnClickListener(new a());
        this.f67856d.setOnClickListener(new b());
        setContentView(viewInflate);
    }

    public u2(Context context) {
        super(context);
        this.f67854b = context;
    }
}
