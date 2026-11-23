package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;

/* JADX INFO: loaded from: classes3.dex */
public class j1 extends AlertDialog implements View.OnClickListener, DialogInterface.OnShowListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f67638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SimpleDraweeView f67641e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f67642f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    a f67643g;

    public interface a {
        void a(j1 dialog);

        void b(j1 dialog);
    }

    public j1(@NonNull Context context) {
        super(context, R.style.Dialog);
    }

    public void a(String icon, String name, String gameId) {
        com.papa.sim.statistic.t.l(getContext()).R1(Event.showmodRunNormal, new Ext().setGameId(gameId));
        com.join.android.app.common.utils.l.h(this.f67641e, icon);
        this.f67638b.setText(name);
    }

    public void b(a optsClickListener) {
        this.f67643g = optsClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        a aVar;
        int id2 = v10.getId();
        if (id2 == R.id.iv_close) {
            dismiss();
            return;
        }
        if (id2 == R.id.tv_opt_1) {
            a aVar2 = this.f67643g;
            if (aVar2 != null) {
                aVar2.b(this);
                return;
            }
            return;
        }
        if (id2 != R.id.tv_opt_2 || (aVar = this.f67643g) == null) {
            return;
        }
        aVar.a(this);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_mod_feed_back);
        this.f67638b = (TextView) findViewById(R.id.tv_name);
        this.f67639c = (TextView) findViewById(R.id.tv_opt_1);
        this.f67640d = (TextView) findViewById(R.id.tv_opt_2);
        this.f67641e = (SimpleDraweeView) findViewById(R.id.sdv_image);
        this.f67642f = (ImageView) findViewById(R.id.iv_close);
        setCanceledOnTouchOutside(false);
        setOnShowListener(this);
        setOnDismissListener(this);
        this.f67642f.setOnClickListener(this);
        this.f67639c.setOnClickListener(this);
        this.f67640d.setOnClickListener(this);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
    }
}
