package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;

/* JADX INFO: loaded from: classes3.dex */
public class a2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f67393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PostingActivity.m f67394b;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f67395b;

        a(final int val$type) {
            this.f67395b = val$type;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a2.this.f67394b.d(this.f67395b);
            a2.this.c();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f67397b;

        b(final int val$type) {
            this.f67397b = val$type;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a2.this.f67394b.b(this.f67397b);
            a2.this.c();
        }
    }

    class c implements DialogInterface.OnKeyListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            if (keyCode != 4) {
                return false;
            }
            a2.this.f67394b.b(-1);
            a2.this.f67393a.dismiss();
            return false;
        }
    }

    public a2(Activity activity, PostingActivity.m callback, int type, String... params) {
        this.f67394b = callback;
        d(activity, type, params);
    }

    public void c() {
        this.f67393a.dismiss();
    }

    void d(Activity activity, final int type, String... params) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f67393a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f67393a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_pre_posting_hint, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.dialog_content);
        Button button = (Button) viewInflate.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) viewInflate.findViewById(R.id.dialog_button_ok);
        textView.setText(params[0]);
        textView2.setText(params[1]);
        if (params.length == 3) {
            button.setVisibility(8);
            button2.setText(params[2]);
        } else {
            button.setText(params[2]);
            button2.setText(params[3]);
        }
        button.setOnClickListener(new a(type));
        button2.setOnClickListener(new b(type));
        this.f67393a.setContentView(viewInflate);
        this.f67393a.setCancelable(false);
        this.f67393a.setOnKeyListener(new c());
        Window window = this.f67393a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -2;
        window.setGravity(17);
    }

    public void e() {
        if (this.f67393a.isShowing()) {
            return;
        }
        this.f67393a.show();
    }
}
