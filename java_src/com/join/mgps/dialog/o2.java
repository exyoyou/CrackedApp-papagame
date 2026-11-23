package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o2 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f67725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67726c;

    public o2(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(List<String> content) {
        show();
        if (content != null) {
            StringBuilder sb2 = new StringBuilder();
            Iterator<String> it2 = content.iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next());
            }
            this.f67726c.setText(sb2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (v10.getId() == R.id.iv_close) {
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_upload_slot_tip);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f67725b = (ImageView) findViewById(R.id.iv_close);
        this.f67726c = (TextView) findViewById(R.id.tv_sub_title);
        this.f67725b.setOnClickListener(this);
    }
}
