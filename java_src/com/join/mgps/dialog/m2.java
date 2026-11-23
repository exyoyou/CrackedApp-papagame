package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class m2 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f67669b;

    public interface a {
        void a();
    }

    public m2(@NonNull Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        a aVar = this.f67669b;
        if (aVar != null) {
            aVar.a();
        }
        dismiss();
    }

    public void e(a listener) {
        this.f67669b = listener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_uninstall_confirm);
        setCanceledOnTouchOutside(false);
        getWindow().setBackgroundDrawableResource(17170445);
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        View viewFindViewById = findViewById(R.id.tvCancel);
        View viewFindViewById2 = findViewById(R.id.tvConfirm);
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.k2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67649b.c(view);
            }
        });
        viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.dialog.l2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f67661b.d(view);
            }
        });
    }
}
