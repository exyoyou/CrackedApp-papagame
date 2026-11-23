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
public class r0 extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67784c;

    public r0(Context context, int theme) {
        super(context, theme);
        this.f67783b = context;
    }

    public void a(String txt) {
        TextView textView = this.f67784c;
        if (textView != null) {
            textView.setText(txt);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        requestWindowFeature(1);
        super.onCreate(savedInstanceState);
        View viewInflate = LayoutInflater.from(this.f67783b).inflate(R.layout.dialog_fight_connect_server, (ViewGroup) null);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.fightLoadingIcon);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f67783b.getResources().getDrawable(R.drawable.net_invite_dialog_loading);
        imageView.setBackground(animationDrawable);
        animationDrawable.start();
        this.f67784c = (TextView) viewInflate.findViewById(R.id.hint);
        setCanceledOnTouchOutside(false);
        setCancelable(true);
        setContentView(viewInflate);
    }

    public r0(Context context) {
        super(context);
        this.f67783b = context;
    }
}
