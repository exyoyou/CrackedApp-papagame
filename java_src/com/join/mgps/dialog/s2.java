package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class s2 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Activity f67817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    c f67819d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67820e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s2.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s2.this.f67819d.a();
            s2.this.dismiss();
        }
    }

    public interface c {
        void a();
    }

    public s2(Activity context, c hasPermissListener) {
        super(context, R.style.MyDialog);
        this.f67817b = context;
        this.f67819d = hasPermissListener;
    }

    public void a(String txt) {
        this.f67820e.setText(txt);
    }

    public void b(String txt) {
        this.f67818c.setText(txt);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67817b).inflate(R.layout.white_back_dialog, (ViewGroup) null);
        viewInflate.setMinimumWidth(com.join.android.app.common.utils.q.n(this.f67817b).C(this.f67817b));
        TextView textView = (TextView) viewInflate.findViewById(R.id.dialog_button_cancel);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.dialog_button_ok);
        this.f67820e = (TextView) viewInflate.findViewById(R.id.content);
        textView.setOnClickListener(new a());
        textView2.setOnClickListener(new b());
        setContentView(viewInflate);
    }
}
