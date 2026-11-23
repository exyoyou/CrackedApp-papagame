package com.byazt.ouz;

import android.view.ViewGroup;
import com.byazt.aas.nb;
import com.byazt.aas.or;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.omf.d;
import com.byazt.omf.zb;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, TcMouseManager.MOUSE_STARY})
public class p implements SSWebView.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SSWebView f18475c;
    public ic tt;
    public d ve;

    public p(SSWebView sSWebView, d dVar, ic icVar) {
        this.f18475c = sSWebView;
        this.tt = icVar;
        this.ve = dVar;
    }

    private boolean c() {
        SSWebView sSWebView = this.f18475c;
        if (sSWebView == null) {
            return false;
        }
        return zb.tt(sSWebView, 50, nb.sl(this.tt));
    }

    @Override // com.byazt.el.SSWebView.tt
    public void c(final int i10) {
        boolean zC = c();
        com.byazt.nr.m.tt("xeasy", "wv:".concat(String.valueOf(zC)));
        if (zC) {
            if (com.byazt.omf.gt.tt().rh()) {
                SSWebView sSWebView = this.f18475c;
                if (sSWebView != null) {
                    or.c((WeakReference<ViewGroup>) new WeakReference((ViewGroup) sSWebView.getParent()), new com.byazt.hkv.ve() { // from class: com.byazt.ouz.p.1
                        @Override // com.byazt.hkv.ve
                        public void c() {
                            if (p.this.ve != null) {
                                p.this.ve.c(i10);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            d dVar = this.ve;
            if (dVar != null) {
                dVar.c(i10);
            }
        }
    }
}
