package com.byazt.sgn;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.byazt.aas.pf;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 72})
public class da extends AlertDialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f19651a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextView f19652c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Drawable f19653da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f19654i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Context f19655n;
    public c sl;
    public String sp;
    public TextView tt;
    public Button uj;
    public Button ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f19656x;

    public interface c {
        void c(Dialog dialog);

        void tt(Dialog dialog);
    }

    public da(Context context) {
        super(context, R.style.Theme.Dialog);
        com.byazt.vfu.sp.c(this);
        this.f19655n = context;
    }

    private void tt() {
        TextView textView = this.f19652c;
        if (textView != null) {
            textView.setText(this.f19651a);
            Drawable drawable = this.f19653da;
            if (drawable != null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = this.f19653da.getIntrinsicHeight();
                int iVe = pf.ve(this.f19655n, 45.0f);
                if (intrinsicWidth > iVe || intrinsicWidth < iVe) {
                    intrinsicWidth = iVe;
                }
                if (intrinsicHeight > iVe || intrinsicHeight < iVe) {
                    intrinsicHeight = iVe;
                }
                this.f19653da.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                this.f19652c.setCompoundDrawables(this.f19653da, null, null, null);
                this.f19652c.setCompoundDrawablePadding(pf.ve(this.f19655n, 10.0f));
            }
        }
        TextView textView2 = this.tt;
        if (textView2 != null) {
            textView2.setText(this.sp);
        }
        Button button = this.ve;
        if (button != null) {
            button.setText(this.f19656x);
        }
        Button button2 = this.uj;
        if (button2 != null) {
            button2.setText(this.f19654i);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.byazt.vfu.a.b(this.f19655n));
        setCanceledOnTouchOutside(true);
        c();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        tt();
    }

    public da uj(String str) {
        this.f19654i = str;
        return this;
    }

    public da ve(String str) {
        this.f19656x = str;
        return this;
    }

    private void c() {
        this.f19652c = (TextView) findViewById(2114387852);
        this.tt = (TextView) findViewById(2114387654);
        this.ve = (Button) findViewById(2114387751);
        this.uj = (Button) findViewById(2114387889);
        this.ve.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.da.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                da.this.dismiss();
                if (da.this.sl != null) {
                    da.this.sl.c(da.this);
                }
            }
        });
        this.uj.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.sgn.da.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                da.this.dismiss();
                if (da.this.sl != null) {
                    da.this.sl.tt(da.this);
                }
            }
        });
    }

    public da c(String str) {
        this.f19651a = str;
        return this;
    }

    public da c(Drawable drawable) {
        this.f19653da = drawable;
        return this;
    }

    public da c(c cVar) {
        this.sl = cVar;
        return this;
    }

    public da c(DialogInterface.OnCancelListener onCancelListener) {
        setOnCancelListener(onCancelListener);
        return this;
    }

    public da tt(String str) {
        this.sp = str;
        return this;
    }
}
