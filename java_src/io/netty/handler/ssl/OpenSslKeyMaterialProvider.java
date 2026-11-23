package io.netty.handler.ssl;

import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.UnpooledByteBufAllocator;
import io.netty.internal.tcnative.SSL;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLException;
import javax.net.ssl.X509KeyManager;

/* JADX INFO: loaded from: classes.dex */
class OpenSslKeyMaterialProvider {
    private final X509KeyManager keyManager;
    private final String password;

    OpenSslKeyMaterialProvider(X509KeyManager x509KeyManager, String str) {
        this.keyManager = x509KeyManager;
        this.password = str;
    }

    static void validateKeyMaterialSupported(X509Certificate[] x509CertificateArr, PrivateKey privateKey, String str) throws Throwable {
        validateSupported(x509CertificateArr);
        validateSupported(privateKey, str);
    }

    private static void validateSupported(PrivateKey privateKey, String str) throws Throwable {
        if (privateKey == null) {
            return;
        }
        long j10 = 0;
        try {
            try {
                long bio = ReferenceCountedOpenSslContext.toBIO(UnpooledByteBufAllocator.DEFAULT, privateKey);
                try {
                    long privateKey2 = SSL.parsePrivateKey(bio, str);
                    SSL.freeBIO(bio);
                    if (privateKey2 != 0) {
                        SSL.freePrivateKey(privateKey2);
                    }
                } catch (Exception e10) {
                    e = e10;
                    throw new SSLException("PrivateKey type not supported " + privateKey.getFormat(), e);
                } catch (Throwable th) {
                    th = th;
                    j10 = bio;
                    SSL.freeBIO(j10);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0086  */
    /* JADX WARN: Code duplicated, block: B:42:0x008d  */
    OpenSslKeyMaterial chooseKeyMaterial(ByteBufAllocator byteBufAllocator, String str) throws Exception {
        long bio;
        long bio2;
        long x509Chain;
        long privateKey;
        OpenSslKeyMaterial defaultOpenSslKeyMaterial;
        X509Certificate[] certificateChain = this.keyManager.getCertificateChain(str);
        if (certificateChain == null || certificateChain.length == 0) {
            return null;
        }
        PrivateKey privateKey2 = this.keyManager.getPrivateKey(str);
        PemEncoded pem = PemX509Certificate.toPEM(byteBufAllocator, true, certificateChain);
        long j10 = 0;
        try {
            bio2 = ReferenceCountedOpenSslContext.toBIO(byteBufAllocator, pem.retain());
            try {
                x509Chain = SSL.parseX509Chain(bio2);
                try {
                    if (privateKey2 instanceof OpenSslPrivateKey) {
                        defaultOpenSslKeyMaterial = ((OpenSslPrivateKey) privateKey2).newKeyMaterial(x509Chain, certificateChain);
                    } else {
                        bio = ReferenceCountedOpenSslContext.toBIO(byteBufAllocator, privateKey2);
                        if (privateKey2 == null) {
                            privateKey = 0;
                        } else {
                            try {
                                privateKey = SSL.parsePrivateKey(bio, this.password);
                            } catch (Throwable th) {
                                th = th;
                                privateKey = 0;
                                SSL.freeBIO(bio2);
                                SSL.freeBIO(bio);
                                if (x509Chain != 0) {
                                    SSL.freeX509Chain(x509Chain);
                                }
                                if (privateKey != 0) {
                                    SSL.freePrivateKey(privateKey);
                                }
                                pem.release();
                                throw th;
                            }
                        }
                        try {
                            try {
                                defaultOpenSslKeyMaterial = new DefaultOpenSslKeyMaterial(x509Chain, privateKey, certificateChain);
                                j10 = bio;
                            } catch (Throwable th2) {
                                th = th2;
                                bio = bio;
                                SSL.freeBIO(bio2);
                                SSL.freeBIO(bio);
                                if (x509Chain != 0) {
                                    SSL.freeX509Chain(x509Chain);
                                }
                                if (privateKey != 0) {
                                    SSL.freePrivateKey(privateKey);
                                }
                                pem.release();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    SSL.freeBIO(bio2);
                    SSL.freeBIO(j10);
                    pem.release();
                    return defaultOpenSslKeyMaterial;
                } catch (Throwable th4) {
                    th = th4;
                    bio = 0;
                    privateKey = 0;
                }
            } catch (Throwable th5) {
                th = th5;
                bio = 0;
                x509Chain = 0;
                privateKey = x509Chain;
                SSL.freeBIO(bio2);
                SSL.freeBIO(bio);
                if (x509Chain != 0) {
                    SSL.freeX509Chain(x509Chain);
                }
                if (privateKey != 0) {
                    SSL.freePrivateKey(privateKey);
                }
                pem.release();
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
            bio = 0;
            bio2 = 0;
            x509Chain = 0;
        }
    }

    void destroy() {
    }

    X509KeyManager keyManager() {
        return this.keyManager;
    }

    private static void validateSupported(X509Certificate[] x509CertificateArr) throws Throwable {
        if (x509CertificateArr == null || x509CertificateArr.length == 0) {
            return;
        }
        long j10 = 0;
        PemEncoded pem = null;
        try {
            try {
                UnpooledByteBufAllocator unpooledByteBufAllocator = UnpooledByteBufAllocator.DEFAULT;
                pem = PemX509Certificate.toPEM(unpooledByteBufAllocator, true, x509CertificateArr);
                long bio = ReferenceCountedOpenSslContext.toBIO(unpooledByteBufAllocator, pem.retain());
                try {
                    long x509Chain = SSL.parseX509Chain(bio);
                    SSL.freeBIO(bio);
                    if (x509Chain != 0) {
                        SSL.freeX509Chain(x509Chain);
                    }
                    pem.release();
                } catch (Exception e10) {
                    e = e10;
                    throw new SSLException("Certificate type not supported", e);
                } catch (Throwable th) {
                    th = th;
                    j10 = bio;
                    SSL.freeBIO(j10);
                    if (pem != null) {
                        pem.release();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }
}
