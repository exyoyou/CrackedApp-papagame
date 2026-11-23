package org.apache.http.conn.ssl;

import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class AllowAllHostnameVerifierHC4 extends AbstractVerifierHC4 {
    public final String toString() {
        return "ALLOW_ALL";
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, String[] strArr, String[] strArr2) {
    }
}
