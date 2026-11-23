package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class q0 extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67766c;

    public q0(Context context, int theme) {
        super(context, theme);
        this.f67765b = context;
    }

    public void a(String txt) {
        TextView textView = this.f67766c;
        if (textView != null) {
            textView.setText(txt);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67765b).inflate(R.layout.dialog_fight_connect_server2, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.fightLoadingIcon);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f67765b.getResources().getDrawable(R.drawable.net_invite_dialog_loading);
        imageView.setBackground(animationDrawable);
        animationDrawable.start();
        this.f67766c = (TextView) viewInflate.findViewById(R.id.hint);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        setContentView(viewInflate);
    }

    public q0(Context context) {
        super(context);
        this.f67765b = context;
    }
}
