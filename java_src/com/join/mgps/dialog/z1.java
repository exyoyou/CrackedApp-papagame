package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.posting.PostingActivity;

/* JADX INFO: loaded from: classes3.dex */
public class z1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f68008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PostingActivity.m f68009b;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            z1.this.f68009b.c(4354);
            z1.this.b();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            z1.this.f68009b.c(4353);
            z1.this.b();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            z1.this.f68009b.c(4352);
            z1.this.b();
        }
    }

    public z1(Activity activity, PostingActivity.m callback) {
        this.f68009b = callback;
        c(activity);
    }

    public void b() {
        this.f68008a.dismiss();
    }

    void c(Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f68008a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f68008a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_posting_select_game, (ViewGroup) null);
        viewInflate.findViewById(R.id.tv_papaku).setOnClickListener(new a());
        viewInflate.findViewById(R.id.tv_collection).setOnClickListener(new b());
        viewInflate.findViewById(R.id.tv_local).setOnClickListener(new c());
        this.f68008a.setContentView(viewInflate);
        Window window = this.f68008a.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = com.join.mgps.Util.i0.a(activity, 166.0f);
        window.setGravity(80);
    }

    public void d() {
        if (this.f68008a.isShowing()) {
            return;
        }
        this.f68008a.show();
    }
}
