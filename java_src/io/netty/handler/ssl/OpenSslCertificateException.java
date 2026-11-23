package io.netty.handler.ssl;

import io.netty.internal.tcnative.CertificateVerifier;
import java.security.cert.CertificateException;

/* JADX INFO: loaded from: classes.dex */
public final class OpenSslCertificateException extends CertificateException {
    private static final long serialVersionUID = 5542675253797129798L;
    private final int errorCode;

    public OpenSslCertificateException(int i10) {
        this((String) null, i10);
    }

    private static int checkErrorCode(int i10) {
        if (!OpenSsl.isAvailable() || CertificateVerifier.isValid(i10)) {
            return i10;
        }
        throw new IllegalArgumentException("errorCode '" + i10 + "' invalid, see https://www.openssl.org/docs/man1.0.2/apps/verify.html.");
    }

    public int errorCode() {
        return this.errorCode;
    }

    public OpenSslCertificateException(String str, int i10) {
        super(str);
        this.errorCode = checkErrorCode(i10);
    }

    public OpenSslCertificateException(String str, Throwable th, int i10) {
        super(str, th);
        this.errorCode = checkErrorCode(i10);
    }

    public OpenSslCertificateException(Throwable th, int i10) {
        this(null, th, i10);
    }
}
