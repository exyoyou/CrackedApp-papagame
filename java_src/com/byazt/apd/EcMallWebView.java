package com.byazt.apd;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.at.n;
import com.byazt.bzd.x;
import com.byazt.ddx.a;
import com.byazt.ddx.uj;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.ete.my;
import com.byazt.nr.m;
import com.byazt.omf.d;
import com.byazt.omf.rl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1580, 2401})
public class EcMallWebView extends SSWebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ic f11659a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public d f11660n;
    public n sp;

    public EcMallWebView(final Context context, ic icVar, final int i10) {
        super(context);
        this.f11659a = icVar;
        x.c(new Runnable() { // from class: com.byazt.apd.EcMallWebView.1
            @Override // java.lang.Runnable
            public void run() {
                EcMallWebView.this.c(context, i10);
            }
        });
    }

    @Override // com.byazt.qg.BizWebView, android.view.View, com.byazt.nl.uj
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        d dVar = this.f11660n;
        if (dVar != null) {
            dVar.sl(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, int i10) {
        this.f11660n = new d(context);
        final String strC = nb.c(i10);
        this.sp = new n() { // from class: com.byazt.apd.EcMallWebView.2
            @Override // com.byazt.at.n
            public void c() {
            }

            @Override // com.byazt.at.n
            public void tt() {
            }

            @Override // com.byazt.at.n
            public void c(int i11) {
                if (EcMallWebView.this.f11659a != null) {
                    com.byazt.ocd.tt ttVar = (com.byazt.ocd.tt) rl.c(EcMallWebView.this.f11659a.rl(), com.byazt.ocd.tt.class);
                    if (ttVar != null) {
                        ttVar.c(2, null);
                    }
                } else {
                    m.c("EcMallWebView", "onSendReward failed meta null");
                }
                uj.c(strC, EcMallWebView.this.f11659a);
            }
        };
        this.f11660n.tt(this).c(this.f11659a).tt(this.f11659a.uj()).uj(this.f11659a.w_()).ve(i10).n(nb.my(this.f11659a)).c((SSWebView) this).c(strC).c(this.sp).c(true);
        setWebViewClient(new com.byazt.jwd.uj(context, this.f11660n, this.f11659a.uj(), new a(this.f11659a, this).tt(true)));
        setWebChromeClient(new com.byazt.jwd.ve(this.f11660n));
        String strX = my.x(this.f11659a);
        if (TextUtils.isEmpty(strX)) {
            strX = this.f11659a.x();
        }
        if (TextUtils.isEmpty(strX)) {
            return;
        }
        loadUrl(strX);
    }
}
