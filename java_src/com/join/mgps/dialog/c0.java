package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class c0 extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67454b;

    public c0(@NonNull Context context) {
        super(context);
    }

    public void a(View.OnClickListener clickListener) {
        this.f67454b.setOnClickListener(clickListener);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(true);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        setContentView(R.layout.dialog_copy_view);
        this.f67454b = (TextView) findViewById(R.id.copyTv);
    }

    public c0(Context context, int themeResId) {
        super(context, themeResId);
    }
}
