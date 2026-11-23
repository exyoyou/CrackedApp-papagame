package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;

/* JADX INFO: loaded from: classes3.dex */
public class w0 extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ImageView f67911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Button f67912f;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            w0.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UtilsMy.N3(w0.this.f67908b);
            w0.this.dismiss();
        }
    }

    public w0(Context context, int theme) {
        super(context, theme);
        this.f67908b = context;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67908b).inflate(R.layout.dialog_fight_wifi_error, (ViewGroup) null);
        this.f67909c = (TextView) viewInflate.findViewById(R.id.title);
        this.f67910d = (TextView) viewInflate.findViewById(R.id.info);
        this.f67911e = (ImageView) viewInflate.findViewById(R.id.cancel);
        this.f67912f = (Button) viewInflate.findViewById(R.id.setting);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(viewInflate);
        this.f67911e.setOnClickListener(new a());
        this.f67912f.setOnClickListener(new b());
    }

    public w0(Context context) {
        super(context);
        this.f67908b = context;
    }
}
