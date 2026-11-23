package com.byazt.nat;

import android.content.Context;
import android.view.View;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1196, 20})
public class c extends com.byazt.zo.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public tt f17057n = new tt();

    /* JADX INFO: renamed from: com.byazt.nat.c$c, reason: collision with other inner class name */
    public interface InterfaceC0376c {
        void c(View view, int i10);
    }

    @Override // com.byazt.zo.c
    public int c(Map<String, Object> map, com.byazt.zo.ve veVar) {
        return 0;
    }

    public void tt(boolean z10) {
        this.f17057n.uj(z10);
    }

    public void uj(boolean z10) {
        this.f17057n.tt(z10);
    }

    public void ve(boolean z10) {
        this.f17057n.ve(z10);
    }

    public void c(int i10) {
        this.f17057n.tt(i10);
    }

    public void tt(int i10) {
        if (this.f17057n.uj()) {
            this.f17057n.c(i10);
        }
    }

    public void uj() {
        if (this.f17057n.uj()) {
            com.byazt.uz.c cVarN = this.f17057n.n();
            if (!nb.ve(this.f22932c) || cVarN == null) {
                return;
            }
            cVarN.tt();
        }
    }

    public void ve() {
        if (this.f17057n.tt() && this.f17057n.uj()) {
            com.byazt.pop.ve veVarA = this.f17057n.a();
            if (veVarA instanceof com.byazt.wz.c) {
                ((com.byazt.wz.c) veVarA).a(true);
            }
        }
    }

    public void c(Map<String, Object> map) {
        this.f17057n.c(map);
    }

    public void c(String str) {
        this.f17057n.c(str);
    }

    public tt tt() {
        return this.f17057n;
    }

    public void c(boolean z10) {
        this.f17057n.c(z10);
    }

    public void c(ic icVar) {
        this.f22932c = icVar;
        this.f17057n.c(icVar);
    }

    public void c(Context context) {
        this.tt = context;
        this.f17057n.c(context);
    }

    public void c(com.byazt.pop.ve veVar) {
        this.f17057n.c(veVar);
    }

    public com.byazt.pop.ve c() {
        return this.f17057n.a();
    }

    public void c(Object obj) {
        this.f17057n.c(obj);
    }

    public void c(com.byazt.uz.c cVar) {
        this.f17057n.c(cVar);
    }

    public void c(InterfaceC0376c interfaceC0376c) {
        this.f17057n.c(interfaceC0376c);
    }

    public void c(long j10) {
        this.f17057n.c(j10);
    }

    public void c(com.byazt.zd.tt ttVar) {
        this.f17057n.c(ttVar);
    }
}
