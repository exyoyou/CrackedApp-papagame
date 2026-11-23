package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.NewArenaMainActivty_;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f67662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Activity f67663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f67664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f67665d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f67666e;

    public m(Activity activity) {
        this.f67663b = activity;
        d(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void f(View view) {
        c();
        ((NewArenaMainActivty_.h) NewArenaMainActivty_.intent(view.getContext()).flags(67108864)).start();
    }

    public void c() {
        this.f67662a.dismiss();
    }

    void d(final Activity activity) {
        this.f67662a = new Dialog(activity, R.style.newtrans_floating_dialog);
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_arena_no_record, (ViewGroup) null);
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67645b.e(view);
            }
        });
        this.f67664c = viewInflate.findViewById(R.id.noRecord);
        this.f67666e = (TextView) viewInflate.findViewById(R.id.tv_top);
        View viewFindViewById = viewInflate.findViewById(R.id.tv2);
        this.f67665d = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67650b.f(view);
            }
        });
        this.f67662a.setContentView(viewInflate);
        Window window = this.f67662a.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setGravity(17);
    }

    public void g() {
        if (this.f67662a.isShowing()) {
            return;
        }
        this.f67662a.show();
    }
}
