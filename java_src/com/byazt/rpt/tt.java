package com.byazt.rpt;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.TextView;
import com.byazt.aas.pf;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.ete.to;
import com.byazt.nr.d;
import com.byazt.omf.gt;
import com.byazt.vfu.a;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 311, 13})
public class tt extends AlertDialog implements qp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f19509a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.hkv.tt f19510c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f19511da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f19512i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public TextView f19513n;
    public final String sp;
    public final d tt;
    public TextView uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final c f19514x;

    public interface c {
        void c(Dialog dialog);

        void tt(Dialog dialog);
    }

    public tt(Context context, ic icVar, c cVar) {
        super(context);
        this.tt = new d(Looper.getMainLooper(), this);
        this.f19511da = false;
        this.ve = context;
        if (context == null) {
            this.ve = gt.getContext();
        }
        this.sp = to.a(icVar);
        this.f19514x = cVar;
        if (to.n(icVar) != 3) {
            this.f19512i = to.x(icVar);
        } else {
            this.f19511da = true;
            this.f19512i = 5L;
        }
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        c cVar;
        if (message.what == 101) {
            long j10 = this.f19512i - 1;
            this.f19512i = j10;
            if (j10 > 0) {
                if (this.f19511da) {
                    pf.c(this.f19509a, "残忍拒绝");
                } else {
                    pf.c(this.f19509a, String.format("残忍拒绝(%1$s)", String.valueOf(j10)));
                }
                this.tt.sendEmptyMessageDelayed(101, 1000L);
                return;
            }
            if (this.f19511da && (cVar = this.f19514x) != null) {
                cVar.tt(this);
            }
            c cVar2 = this.f19514x;
            if (cVar2 != null) {
                cVar2.c(this);
            }
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(a.qp(this.ve));
        setCanceledOnTouchOutside(false);
        c();
        this.tt.sendEmptyMessageDelayed(101, 1000L);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (!z10) {
            this.tt.removeMessages(101);
        } else {
            this.tt.removeMessages(101);
            this.tt.sendEmptyMessageDelayed(101, 1000L);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        pf.c(this.uj, this.sp);
    }

    private void c() {
        this.uj = (TextView) findViewById(2114387826);
        this.f19513n = (TextView) findViewById(2114387638);
        this.f19509a = (TextView) findViewById(2114387833);
        if (this.f19514x == null) {
            return;
        }
        pf.c((View) this.f19513n, (View.OnClickListener) this.f19510c, "goLiveListener");
        pf.c(this.f19509a, new View.OnClickListener() { // from class: com.byazt.rpt.tt.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                tt.this.f19514x.c(tt.this);
            }
        }, "cancelTv");
    }

    public void c(com.byazt.hkv.tt ttVar) {
        this.f19510c = ttVar;
    }
}
