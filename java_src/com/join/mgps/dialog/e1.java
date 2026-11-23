package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f67507a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Window f67508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f67509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f67511e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            e1.this.f67511e.a();
            e1.this.b();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            e1.this.b();
        }
    }

    public interface c {
        void a();
    }

    public e1(Context context, c callback) {
        this.f67509c = context;
        this.f67511e = callback;
        c(context);
    }

    private void c(Context context) {
        Dialog dialog = new Dialog(context, R.style.newtrans_floating_dialog);
        this.f67507a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f67507a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_invite_pwd, (ViewGroup) null);
        this.f67510d = (TextView) viewInflate.findViewById(R.id.tv_pwd_info);
        viewInflate.findViewById(R.id.btn_copy).setOnClickListener(new a());
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new b());
        this.f67507a.setContentView(viewInflate);
        Window window = this.f67507a.getWindow();
        this.f67508b = window;
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.height = -1;
        attributes2.width = -1;
        this.f67508b.setGravity(17);
    }

    public void b() {
        this.f67507a.dismiss();
    }

    public boolean d() {
        return this.f67507a.isShowing();
    }

    public void e(String pwd_info) {
        this.f67510d.setText(pwd_info);
    }

    public void f() {
        this.f67507a.show();
    }
}
