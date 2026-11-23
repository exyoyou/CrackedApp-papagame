package com.join.mgps.customview.input;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f66615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Window f66616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InputNumView f66617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f66618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputNumView.d f66619e;

    /* JADX INFO: renamed from: com.join.mgps.customview.input.a$a, reason: collision with other inner class name */
    class C0712a implements InputNumView.d {
        C0712a() {
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            if (a.this.f66619e != null) {
                a.this.f66619e.a();
            }
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            if (a.this.f66619e != null) {
                a.this.f66619e.b(num);
            }
        }
    }

    class b implements DialogInterface.OnCancelListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            a.this.f66617c.d();
        }
    }

    class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            a.this.f66617c.d();
        }
    }

    public a(Context context, String title, int numLength, boolean isPwd) {
        this.f66618d = context;
        InputNumView inputNumView = new InputNumView(context);
        this.f66617c = inputNumView;
        inputNumView.setNumLengthAndIsPwd(numLength, isPwd);
        this.f66617c.setTitle(title);
        d();
    }

    private void d() {
        Dialog dialog = new Dialog(this.f66618d, R.style.newtrans_floating_dialog);
        this.f66615a = dialog;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f66615a.getWindow().setAttributes(attributes);
        }
        this.f66615a.setContentView(this.f66617c);
        if (i10 >= 28) {
            WindowManager.LayoutParams attributes2 = this.f66615a.getWindow().getAttributes();
            attributes2.layoutInDisplayCutoutMode = 1;
            this.f66615a.getWindow().setAttributes(attributes2);
        }
        Window window = this.f66615a.getWindow();
        this.f66616b = window;
        WindowManager.LayoutParams attributes3 = window.getAttributes();
        attributes3.height = -1;
        attributes3.width = -1;
        this.f66616b.setGravity(80);
        this.f66617c.setListener(new C0712a());
        this.f66615a.setOnCancelListener(new b());
        this.f66615a.setOnDismissListener(new c());
    }

    public void c() {
        this.f66615a.dismiss();
    }

    public boolean e() {
        return this.f66615a.isShowing();
    }

    public void f(String pwd) {
        this.f66617c.setCurrentPwd(pwd);
    }

    public void g(InputNumView.d inputListener) {
        this.f66619e = inputListener;
    }

    public void h() {
        if (this.f66615a.isShowing()) {
            return;
        }
        this.f66615a.show();
    }
}
