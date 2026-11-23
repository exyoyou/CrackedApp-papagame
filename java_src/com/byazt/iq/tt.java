package com.byazt.iq;

import com.byazt.eg.sl;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 179, 13})
public final class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<sl> f15476c;
    public int tt = 0;
    public boolean uj;
    public boolean ve;

    public tt(List<sl> list) {
        this.f15476c = list;
    }

    private boolean tt(SSLSocket sSLSocket) {
        for (int i10 = this.tt; i10 < this.f15476c.size(); i10++) {
            if (this.f15476c.get(i10).c(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public sl c(SSLSocket sSLSocket) throws IOException {
        sl slVar;
        int i10 = this.tt;
        int size = this.f15476c.size();
        while (true) {
            if (i10 >= size) {
                slVar = null;
                break;
            }
            slVar = this.f15476c.get(i10);
            if (slVar.c(sSLSocket)) {
                this.tt = i10 + 1;
                break;
            }
            i10++;
        }
        if (slVar != null) {
            this.ve = tt(sSLSocket);
            com.byazt.kh.c.f16261c.c(slVar, sSLSocket, this.uj);
            return slVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.uj + ", modes=" + this.f15476c + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean c(IOException iOException) {
        this.uj = true;
        if (!this.ve || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException);
    }
}
