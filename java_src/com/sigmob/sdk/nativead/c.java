package com.sigmob.sdk.nativead;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.czhj.sdk.common.utils.Dips;
import com.sigmob.sdk.R;

/* JADX INFO: loaded from: classes3.dex */
public class c extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f81402a;

    public c(Context context, String textToShow) {
        super(context, com.sigmob.sdk.base.k.e());
        this.f81402a = textToShow;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getWindow() == null) {
            return;
        }
        setContentView(R.layout.sig_fullscreen_layout);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        findViewById(R.id.dialog_root).setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81443b.b(view);
            }
        });
        TextView textView = (TextView) findViewById(R.id.dialog_text);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81447b.a(view);
            }
        });
        textView.setText(this.f81402a);
        textView.requestFocus();
        a();
    }

    private void a() {
        int i10;
        Window window = getWindow();
        Context context = getContext();
        if (window == null) {
            return;
        }
        window.setGravity(17);
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i11 = context.getResources().getDisplayMetrics().widthPixels;
        int i12 = context.getResources().getDisplayMetrics().heightPixels;
        int iDipsToIntPixels = Dips.dipsToIntPixels(0.0f, context);
        int i13 = -1;
        if (i12 > i11) {
            i13 = i11 - iDipsToIntPixels;
            i10 = -1;
        } else {
            i10 = i12 - iDipsToIntPixels;
        }
        attributes.width = i13;
        attributes.height = i10;
        window.setAttributes(attributes);
        int iG = com.sigmob.sdk.base.k.g();
        if (iG <= 0) {
            return;
        }
        window.setWindowAnimations(iG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        dismiss();
    }
}
