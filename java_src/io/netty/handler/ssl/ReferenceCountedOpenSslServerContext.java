package io.netty.handler.ssl;

import io.netty.buffer.ByteBufAllocator;
import io.netty.internal.tcnative.CertificateCallback;
import io.netty.internal.tcnative.SSLContext;
import io.netty.internal.tcnative.SniHostNameMatcher;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public final class ReferenceCountedOpenSslServerContext extends ReferenceCountedOpenSslContext {
    private final OpenSslServerSessionContext sessionContext;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ReferenceCountedOpenSslServerContext.class);
    private static final byte[] ID = {110, 101, 116, 116, 121};

    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    private static final class ExtendedTrustManagerVerifyCallback extends ReferenceCountedOpenSslContext.AbstractCertificateVerifier {
        private final X509ExtendedTrustManager manager;

        ExtendedTrustManagerVerifyCallback(OpenSslEngineMap openSslEngineMap, X509ExtendedTrustManager x509ExtendedTrustManager) {
            super(openSslEngineMap);
            this.manager = OpenSslTlsv13X509ExtendedTrustManager.wrap(x509ExtendedTrustManager);
        }

        @Override // io.netty.handler.ssl.ReferenceCountedOpenSslContext.AbstractCertificateVerifier
        void verify(ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine, X509Certificate[] x509CertificateArr, String str) throws Exception {
            this.manager.checkClientTrusted(x509CertificateArr, str, referenceCountedOpenSslEngine);
        }
    }

    private static final class OpenSslServerCertificateCallback implements CertificateCallback {
        private final OpenSslEngineMap engineMap;
        private final OpenSslKeyMaterialManager keyManagerHolder;

        OpenSslServerCertificateCallback(OpenSslEngineMap openSslEngineMap, OpenSslKeyMaterialManager openSslKeyMaterialManager) {
            this.engineMap = openSslEngineMap;
            this.keyManagerHolder = openSslKeyMaterialManager;
        }

        public void handle(long j10, byte[] bArr, byte[][] bArr2) throws Exception {
            ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = this.engineMap.get(j10);
            if (referenceCountedOpenSslEngine == null) {
                return;
            }
            try {
                this.keyManagerHolder.setKeyMaterialServerSide(referenceCountedOpenSslEngine);
            } catch (Throwable th) {
                ReferenceCountedOpenSslServerContext.logger.debug("Failed to set the server-side key material", th);
                referenceCountedOpenSslEngine.initHandshakeException(th);
            }
        }
    }

    private static final class OpenSslSniHostnameMatcher implements SniHostNameMatcher {
        private final OpenSslEngineMap engineMap;

        OpenSslSniHostnameMatcher(OpenSslEngineMap openSslEngineMap) {
            this.engineMap = openSslEngineMap;
        }

        public boolean match(long j10, String str) {
            ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = this.engineMap.get(j10);
            if (referenceCountedOpenSslEngine != null) {
                return referenceCountedOpenSslEngine.checkSniHostnameMatch(str.getBytes(CharsetUtil.UTF_8));
            }
            ReferenceCountedOpenSslServerContext.logger.warn("No ReferenceCountedOpenSslEngine found for SSL pointer: {}", Long.valueOf(j10));
            return false;
        }
    }

    private static final class TrustManagerVerifyCallback extends ReferenceCountedOpenSslContext.AbstractCertificateVerifier {
        private final X509TrustManager manager;

        TrustManagerVerifyCallback(OpenSslEngineMap openSslEngineMap, X509TrustManager x509TrustManager) {
            super(openSslEngineMap);
            this.manager = x509TrustManager;
        }

        @Override // io.netty.handler.ssl.ReferenceCountedOpenSslContext.AbstractCertificateVerifier
        void verify(ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine, X509Certificate[] x509CertificateArr, String str) throws Exception {
            this.manager.checkClientTrusted(x509CertificateArr, str);
        }
    }

    ReferenceCountedOpenSslServerContext(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, ApplicationProtocolConfig applicationProtocolConfig, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, String str2) throws SSLException {
        this(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, cipherSuiteFilter, ReferenceCountedOpenSslContext.toNegotiator(applicationProtocolConfig), j10, j11, clientAuth, strArr, z10, z11, str2);
    }

    static OpenSslServerSessionContext newSessionContext(ReferenceCountedOpenSslContext referenceCountedOpenSslContext, long j10, OpenSslEngineMap openSslEngineMap, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, String str2) throws Throwable {
        OpenSslKeyMaterialProvider openSslKeyMaterialProviderProviderFor;
        OpenSslKeyMaterialProvider openSslKeyMaterialProvider = null;
        try {
            try {
                SSLContext.setVerify(j10, 0, 10);
                if (OpenSsl.useKeyManagerFactory()) {
                    if (keyManagerFactory == null) {
                        char[] cArrKeyStorePassword = SslContext.keyStorePassword(str);
                        KeyStore keyStoreBuildKeyStore = SslContext.buildKeyStore(x509CertificateArr2, privateKey, cArrKeyStorePassword, str2);
                        KeyManagerFactory openSslX509KeyManagerFactory = keyStoreBuildKeyStore.aliases().hasMoreElements() ? new OpenSslX509KeyManagerFactory() : new OpenSslCachingX509KeyManagerFactory(KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm()));
                        openSslX509KeyManagerFactory.init(keyStoreBuildKeyStore, cArrKeyStorePassword);
                        keyManagerFactory = openSslX509KeyManagerFactory;
                    }
                    openSslKeyMaterialProviderProviderFor = ReferenceCountedOpenSslContext.providerFor(keyManagerFactory, str);
                    try {
                        try {
                            SSLContext.setCertificateCallback(j10, new OpenSslServerCertificateCallback(openSslEngineMap, new OpenSslKeyMaterialManager(openSslKeyMaterialProviderProviderFor)));
                        } catch (Exception e10) {
                            e = e10;
                            throw new SSLException("failed to set certificate and key", e);
                        }
                    } catch (Throwable th) {
                        th = th;
                        openSslKeyMaterialProvider = openSslKeyMaterialProviderProviderFor;
                        if (openSslKeyMaterialProvider != null) {
                            openSslKeyMaterialProvider.destroy();
                        }
                        throw th;
                    }
                } else {
                    if (keyManagerFactory != null) {
                        throw new IllegalArgumentException("KeyManagerFactory not supported");
                    }
                    ObjectUtil.checkNotNull(x509CertificateArr2, "keyCertChain");
                    ReferenceCountedOpenSslContext.setKeyMaterial(j10, x509CertificateArr2, privateKey, str);
                    openSslKeyMaterialProviderProviderFor = null;
                }
                try {
                    if (x509CertificateArr != null) {
                        trustManagerFactory = SslContext.buildTrustManagerFactory(x509CertificateArr, trustManagerFactory, str2);
                    } else if (trustManagerFactory == null) {
                        trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                        trustManagerFactory.init((KeyStore) null);
                    }
                    X509TrustManager x509TrustManagerChooseTrustManager = ReferenceCountedOpenSslContext.chooseTrustManager(trustManagerFactory.getTrustManagers());
                    setVerifyCallback(j10, openSslEngineMap, x509TrustManagerChooseTrustManager);
                    X509Certificate[] acceptedIssuers = x509TrustManagerChooseTrustManager.getAcceptedIssuers();
                    if (acceptedIssuers != null && acceptedIssuers.length > 0) {
                        long bio = 0;
                        try {
                            bio = ReferenceCountedOpenSslContext.toBIO(ByteBufAllocator.DEFAULT, acceptedIssuers);
                            if (!SSLContext.setCACertificateBio(j10, bio)) {
                                throw new SSLException("unable to setup accepted issuers for trustmanager " + x509TrustManagerChooseTrustManager);
                            }
                            ReferenceCountedOpenSslContext.freeBio(bio);
                        } catch (Throwable th2) {
                            ReferenceCountedOpenSslContext.freeBio(bio);
                            throw th2;
                        }
                    }
                    if (PlatformDependent.javaVersion() >= 8) {
                        SSLContext.setSniHostnameMatcher(j10, new OpenSslSniHostnameMatcher(openSslEngineMap));
                    }
                    OpenSslServerSessionContext openSslServerSessionContext = new OpenSslServerSessionContext(referenceCountedOpenSslContext, openSslKeyMaterialProviderProviderFor);
                    openSslServerSessionContext.setSessionIdContext(ID);
                    return openSslServerSessionContext;
                } catch (SSLException e11) {
                    throw e11;
                } catch (Exception e12) {
                    throw new SSLException("unable to setup trustmanager", e12);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    @SuppressJava6Requirement(reason = "Guarded by java version check")
    private static void setVerifyCallback(long j10, OpenSslEngineMap openSslEngineMap, X509TrustManager x509TrustManager) {
        if (ReferenceCountedOpenSslContext.useExtendedTrustManager(x509TrustManager)) {
            SSLContext.setCertVerifyCallback(j10, new ExtendedTrustManagerVerifyCallback(openSslEngineMap, z.a(x509TrustManager)));
        } else {
            SSLContext.setCertVerifyCallback(j10, new TrustManagerVerifyCallback(openSslEngineMap, x509TrustManager));
        }
    }

    ReferenceCountedOpenSslServerContext(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, CipherSuiteFilter cipherSuiteFilter, OpenSslApplicationProtocolNegotiator openSslApplicationProtocolNegotiator, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, String str2) throws SSLException {
        super(iterable, cipherSuiteFilter, openSslApplicationProtocolNegotiator, j10, j11, 1, (Certificate[]) x509CertificateArr2, clientAuth, strArr, z10, z11, true);
        try {
            this.sessionContext = newSessionContext(this, this.ctx, this.engineMap, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, str2);
        } catch (Throwable th) {
            release();
            throw th;
        }
    }

    @Override // io.netty.handler.ssl.ReferenceCountedOpenSslContext, io.netty.handler.ssl.SslContext
    public OpenSslServerSessionContext sessionContext() {
        return this.sessionContext;
    }
}
