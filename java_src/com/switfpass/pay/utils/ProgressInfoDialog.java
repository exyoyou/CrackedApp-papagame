package com.switfpass.pay.utils;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.switfpass.pay.lib.Resourcemap;

/* JADX INFO: loaded from: classes2.dex */
public class ProgressInfoDialog extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewGroup f82737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Activity f82738c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f82739d;

    public ProgressInfoDialog(Activity activity, String str, d0 d0Var) {
        super(activity, Resourcemap.getStyle_dialog());
        this.f82738c = activity;
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(Resourcemap.getById_clor());
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(Resourcemap.getLayout_dialog(), (ViewGroup) null);
        this.f82737b = viewGroup;
        setContentView(viewGroup);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setCanceledOnTouchOutside(false);
        ImageView imageView = (ImageView) findViewById(Resourcemap.getById_pay_stop());
        this.f82739d = imageView;
        if (d0Var == null) {
            imageView.setVisibility(8);
        }
        this.f82739d.setOnClickListener(new w0(d0Var));
        TextView textView = (TextView) this.f82737b.findViewById(Resourcemap.getById_tv_dialog());
        if (str != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (i10 != 4) {
            return super.onKeyDown(i10, keyEvent);
        }
        this.f82738c.moveTaskToBack(false);
        return true;
    }
}
