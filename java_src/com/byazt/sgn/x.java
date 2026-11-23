package com.byazt.sgn;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.ete.ic;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 71})
public class x extends AlertDialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.xs.c f19751a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f19752c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f19753n;
    public com.byazt.ux.sp sp;
    public JSONObject tt;
    public sp.c uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f19754x;

    public x(String str, Context context, JSONObject jSONObject, JSONObject jSONObject2, com.byazt.ux.sp spVar, ic icVar) {
        super(context);
        this.sp = spVar;
        this.ve = context;
        this.f19752c = jSONObject;
        this.f19753n = str;
        this.tt = jSONObject2;
        this.f19751a = new com.byazt.xs.c(context, icVar);
    }

    private void tt() {
        if (this.f19752c == null || this.tt == null || this.f19751a == null) {
            return;
        }
        this.f19754x = false;
        final FrameLayout frameLayout = new FrameLayout(this.ve);
        this.f19751a.c(this.f19752c, this.tt, new com.byazt.ux.sp() { // from class: com.byazt.sgn.x.1
            @Override // com.byazt.ux.sp
            public void c(int i10, String str) {
                x.this.f19754x = true;
                if (x.this.sp != null) {
                    FrameLayout frameLayout2 = frameLayout;
                    if (frameLayout2 != null) {
                        frameLayout2.removeAllViews();
                    }
                    x.this.sp.c(i10, str);
                }
            }

            @Override // com.byazt.ux.sp
            public void c(com.byazt.xj.ve<View> veVar) {
                x.this.f19754x = false;
                if (x.this.sp != null) {
                    x.this.sp.c(null);
                }
                frameLayout.addView(veVar.i(), new FrameLayout.LayoutParams(veVar.or(), veVar.cu()));
                x.this.setContentView(frameLayout);
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        sp.c cVar = this.uj;
        if (cVar != null) {
            cVar.ve(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vfu.sp.tt(this);
        tt();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (this.f19754x) {
            hide();
            dismiss();
        }
    }

    public String c() {
        return this.f19753n;
    }

    public void c(sp.c cVar) {
        this.uj = cVar;
        com.byazt.xs.c cVar2 = this.f19751a;
        if (cVar2 != null) {
            cVar2.c(cVar);
        }
    }

    public void c(com.byazt.ux.sp spVar) {
        this.sp = spVar;
    }
}
