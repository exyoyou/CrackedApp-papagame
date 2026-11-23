package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f67477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67478b;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            d1.this.a();
        }
    }

    public d1(Activity activity) {
        c(activity);
    }

    public void a() {
        this.f67477a.dismiss();
    }

    public Dialog b() {
        return this.f67477a;
    }

    void c(Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f67477a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f67477a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_hint, (ViewGroup) null);
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new a());
        this.f67478b = (TextView) viewInflate.findViewById(R.id.tv_hint);
        this.f67477a.setContentView(viewInflate);
        Window window = this.f67477a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void d(String value) {
        this.f67478b.setText(value);
    }

    public void e() {
        if (this.f67477a.isShowing()) {
            return;
        }
        this.f67477a.show();
    }
}
