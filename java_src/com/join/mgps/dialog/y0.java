package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class y0 extends Dialog {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f67965i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f67966j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f67967k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f67968l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static int f67969m = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f67971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f67972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f67973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f67974f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f67975g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Handler f67976h;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == -1) {
                y0.this.c(-1);
                return;
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return;
                    }
                    y0.this.c(2);
                    return;
                }
                y0.this.c(1);
            }
            y0.this.c(0);
        }
    }

    public y0(Context context, int theme) {
        super(context, theme);
        this.f67976h = new a();
        this.f67970b = context;
    }

    public void a(CharSequence charsequence) {
        if (this.f67975g == null) {
            this.f67975g = (TextView) this.f67973e.findViewById(R.id.forum_send_failed_tv);
        }
        this.f67975g.setText(charsequence);
    }

    public void b(CharSequence charsequence) {
        if (this.f67974f == null) {
            this.f67974f = (TextView) this.f67972d.findViewById(R.id.forum_send_success_tv);
        }
        this.f67974f.setText(charsequence);
    }

    public void c(int dialogType) {
        f67969m = dialogType;
        if (dialogType == -1) {
            dismiss();
            return;
        }
        if (isShowing()) {
            dismiss();
        }
        this.f67971c.setVisibility(8);
        this.f67972d.setVisibility(8);
        this.f67973e.setVisibility(8);
        if (dialogType == 0) {
            this.f67971c.setVisibility(0);
        } else if (dialogType == 1) {
            this.f67973e.setVisibility(0);
            this.f67976h.sendEmptyMessageDelayed(-1, 500L);
        } else if (dialogType == 2) {
            this.f67972d.setVisibility(0);
            this.f67976h.sendEmptyMessageDelayed(-1, 500L);
        }
        if (isShowing()) {
            return;
        }
        show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    public y0(Context context) {
        super(context, R.style.dialog_error);
        this.f67976h = new a();
        this.f67970b = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.forum_send_loading_layout, (ViewGroup) null);
        this.f67971c = viewInflate.findViewById(R.id.forum_send_loading_container);
        this.f67972d = viewInflate.findViewById(R.id.forum_send_success_container);
        this.f67973e = viewInflate.findViewById(R.id.forum_send_failed_container);
        setContentView(viewInflate);
        setCancelable(true);
        setCanceledOnTouchOutside(false);
    }
}
