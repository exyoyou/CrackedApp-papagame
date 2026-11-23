package com.kwad.sdk.core.adlog.c;

import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.track.AdTrackLog;
import com.kwad.sdk.utils.al;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private final a aMU = new a();

    public final a Jh() {
        return this.aMU;
    }

    public final b aC(long j10) {
        this.aMU.zV = j10;
        return this;
    }

    public final b b(com.kwad.sdk.core.adlog.a.C0924a c0924a) {
        this.aMU.QZ = c0924a;
        return this;
    }

    public final b ec(int i10) {
        this.aMU.nm = i10;
        return this;
    }

    public final b ed(int i10) {
        this.aMU.aMh = i10;
        return this;
    }

    public final b ee(int i10) {
        this.aMU.aMi = i10;
        return this;
    }

    public final b ef(int i10) {
        this.aMU.downloadSource = i10;
        return this;
    }

    public final b eg(int i10) {
        this.aMU.aMA = i10;
        return this;
    }

    public final b eh(int i10) {
        this.aMU.aMD = i10;
        return this;
    }

    public final b ei(int i10) {
        this.aMU.aME = i10;
        return this;
    }

    public final b ej(int i10) {
        this.aMU.aMs = i10;
        return this;
    }

    public final b ek(int i10) {
        this.aMU.aMK = i10;
        return this;
    }

    public final b el(int i10) {
        this.aMU.aMO = i10;
        return this;
    }

    public final b em(int i10) {
        this.aMU.dV(i10);
        return this;
    }

    public final b en(int i10) {
        this.aMU.aMQ = i10;
        return this;
    }

    public final b eo(int i10) {
        this.aMU.Rb = i10;
        return this;
    }

    public final b ep(int i10) {
        this.aMU.aMS = i10;
        return this;
    }

    public final b eq(int i10) {
        this.aMU.Ra = i10;
        return this;
    }

    public final b er(int i10) {
        this.aMU.aMv = i10;
        return this;
    }

    public final b f(al.a aVar) {
        this.aMU.no = aVar;
        return this;
    }

    public final b j(double d10) {
        this.aMU.np = d10;
        return this;
    }

    public final b z(int i10, int i11) {
        this.aMU.aMj = i10 + "," + i11;
        return this;
    }

    public final b b(AdTemplate adTemplate, String str, String str2, com.kwad.sdk.g.a<AdTrackLog> aVar) {
        a aVar2 = this.aMU;
        if (aVar2.QZ == null) {
            aVar2.QZ = new com.kwad.sdk.core.adlog.a.C0924a();
        }
        this.aMU.QZ.a(adTemplate, str, str2, aVar);
        return this;
    }

    public final b ec(String str) {
        this.aMU.QY = str;
        return this;
    }

    public final b ed(String str) {
        this.aMU.aMB = str;
        return this;
    }

    public final b ee(String str) {
        this.aMU.aMC = str;
        return this;
    }

    public final b ef(String str) {
        this.aMU.aMM = str;
        return this;
    }
}
