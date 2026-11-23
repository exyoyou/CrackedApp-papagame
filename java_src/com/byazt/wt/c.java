package com.byazt.wt;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1564, 20})
public final class c extends ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f21678c;

    public c(a aVar) {
        this.f21678c = aVar;
    }

    @Override // com.byazt.wt.ve
    public List<Certificate> c(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        X509Certificate x509Certificate;
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z10 = false;
        for (int i10 = 0; i10 < 9; i10++) {
            X509Certificate x509Certificate2 = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate x509CertificateC = this.f21678c.c(x509Certificate2);
            if (x509CertificateC != null) {
                if (arrayList.size() > 1 || !x509Certificate2.equals(x509CertificateC)) {
                    arrayList.add(x509CertificateC);
                }
                if (c(x509CertificateC, x509CertificateC)) {
                    return arrayList;
                }
                z10 = true;
            } else {
                Iterator it2 = arrayDeque.iterator();
                do {
                    if (!it2.hasNext()) {
                        if (z10) {
                            return arrayList;
                        }
                        throw new SSLPeerUnverifiedException("Failed to find a trusted cert that signed ".concat(String.valueOf(x509Certificate2)));
                    }
                    x509Certificate = (X509Certificate) it2.next();
                } while (!c(x509Certificate2, x509Certificate));
                it2.remove();
                arrayList.add(x509Certificate);
            }
        }
        throw new SSLPeerUnverifiedException("Certificate chain too long: ".concat(String.valueOf(arrayList)));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof c) && ((c) obj).f21678c.equals(this.f21678c);
    }

    public int hashCode() {
        return this.f21678c.hashCode();
    }

    private boolean c(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}
