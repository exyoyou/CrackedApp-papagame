package io.netty.handler.ssl;

import com.haima.hmcp.beans.HmInputMappingContent;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.internal.tcnative.Buffer;
import io.netty.internal.tcnative.SSL;
import io.netty.util.AbstractReferenceCounted;
import io.netty.util.CharsetUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.ResourceLeakDetectorFactory;
import io.netty.util.ResourceLeakTracker;
import io.netty.util.internal.EmptyArrays;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionBindingEvent;
import javax.net.ssl.SSLSessionBindingListener;
import javax.net.ssl.SSLSessionContext;
import javax.security.cert.X509Certificate;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class ReferenceCountedOpenSslEngine extends SSLEngine implements ReferenceCounted, ApplicationProtocolAccessor {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV2 = 0;
    private static final int OPENSSL_OP_NO_PROTOCOL_INDEX_SSLV3 = 1;
    private static final int OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1 = 2;
    private static final int OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_1 = 3;
    private static final int OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_2 = 4;
    private static final int OPENSSL_OP_NO_PROTOCOL_INDEX_TLSv1_3 = 5;
    private Object algorithmConstraints;
    final ByteBufAllocator alloc;
    private final OpenSslApplicationProtocolNegotiator apn;
    private volatile String applicationProtocol;
    private volatile ClientAuth clientAuth;
    private final boolean clientMode;
    private volatile boolean destroyed;
    private final boolean enableOcsp;
    private String endPointIdentificationAlgorithm;
    private final OpenSslEngineMap engineMap;
    private Throwable handshakeException;
    private HandshakeState handshakeState;
    private boolean isInboundDone;
    final boolean jdkCompatibilityMode;
    private volatile long lastAccessed;
    private final ResourceLeakTracker<ReferenceCountedOpenSslEngine> leak;
    private volatile Certificate[] localCertificateChain;
    private volatile Collection<?> matchers;
    private int maxWrapBufferSize;
    private int maxWrapOverhead;
    private volatile boolean needTask;
    private long networkBIO;
    private boolean outboundClosed;
    private final ReferenceCountedOpenSslContext parentContext;
    private boolean receivedShutdown;
    private final AbstractReferenceCounted refCnt;
    private final OpenSslSession session;
    private final ByteBuffer[] singleDstBuffer;
    private final ByteBuffer[] singleSrcBuffer;
    private List<String> sniHostNames;
    private long ssl;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) ReferenceCountedOpenSslEngine.class);
    private static final ResourceLeakDetector<ReferenceCountedOpenSslEngine> leakDetector = ResourceLeakDetectorFactory.instance().newResourceLeakDetector(ReferenceCountedOpenSslEngine.class);
    private static final int[] OPENSSL_OP_NO_PROTOCOLS = {SSL.SSL_OP_NO_SSLv2, SSL.SSL_OP_NO_SSLv3, SSL.SSL_OP_NO_TLSv1, SSL.SSL_OP_NO_TLSv1_1, SSL.SSL_OP_NO_TLSv1_2, SSL.SSL_OP_NO_TLSv1_3};
    static final int MAX_PLAINTEXT_LENGTH = SSL.SSL_MAX_PLAINTEXT_LENGTH;
    private static final int MAX_RECORD_SIZE = SSL.SSL_MAX_RECORD_LENGTH;
    private static final SSLEngineResult NEED_UNWRAP_OK = new SSLEngineResult(SSLEngineResult.Status.OK, SSLEngineResult.HandshakeStatus.NEED_UNWRAP, 0, 0);
    private static final SSLEngineResult NEED_UNWRAP_CLOSED = new SSLEngineResult(SSLEngineResult.Status.CLOSED, SSLEngineResult.HandshakeStatus.NEED_UNWRAP, 0, 0);
    private static final SSLEngineResult NEED_WRAP_OK = new SSLEngineResult(SSLEngineResult.Status.OK, SSLEngineResult.HandshakeStatus.NEED_WRAP, 0, 0);
    private static final SSLEngineResult NEED_WRAP_CLOSED = new SSLEngineResult(SSLEngineResult.Status.CLOSED, SSLEngineResult.HandshakeStatus.NEED_WRAP, 0, 0);
    private static final SSLEngineResult CLOSED_NOT_HANDSHAKING = new SSLEngineResult(SSLEngineResult.Status.CLOSED, SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, 0, 0);

    /* JADX INFO: renamed from: io.netty.handler.ssl.ReferenceCountedOpenSslEngine$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$ssl$ClientAuth;
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState;

        static {
            int[] iArr = new int[ApplicationProtocolConfig.Protocol.values().length];
            $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol = iArr;
            try {
                iArr[ApplicationProtocolConfig.Protocol.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[ApplicationProtocolConfig.Protocol.ALPN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[ApplicationProtocolConfig.Protocol.NPN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[ApplicationProtocolConfig.Protocol.NPN_AND_ALPN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ClientAuth.values().length];
            $SwitchMap$io$netty$handler$ssl$ClientAuth = iArr2;
            try {
                iArr2[ClientAuth.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ClientAuth[ClientAuth.REQUIRE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ClientAuth[ClientAuth.OPTIONAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[HandshakeState.values().length];
            $SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState = iArr3;
            try {
                iArr3[HandshakeState.NOT_STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState[HandshakeState.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState[HandshakeState.STARTED_IMPLICITLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState[HandshakeState.STARTED_EXPLICITLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private enum HandshakeState {
        NOT_STARTED,
        STARTED_IMPLICITLY,
        STARTED_EXPLICITLY,
        FINISHED
    }

    ReferenceCountedOpenSslEngine(ReferenceCountedOpenSslContext referenceCountedOpenSslContext, ByteBufAllocator byteBufAllocator, String str, int i10, boolean z10, boolean z11) {
        super(str, i10);
        this.handshakeState = HandshakeState.NOT_STARTED;
        this.refCnt = new AbstractReferenceCounted() { // from class: io.netty.handler.ssl.ReferenceCountedOpenSslEngine.1
            static final /* synthetic */ boolean $assertionsDisabled = false;

            @Override // io.netty.util.AbstractReferenceCounted
            protected void deallocate() {
                ReferenceCountedOpenSslEngine.this.shutdown();
                if (ReferenceCountedOpenSslEngine.this.leak != null) {
                    ReferenceCountedOpenSslEngine.this.leak.close(ReferenceCountedOpenSslEngine.this);
                }
                ReferenceCountedOpenSslEngine.this.parentContext.release();
            }

            @Override // io.netty.util.ReferenceCounted
            public ReferenceCounted touch(Object obj) {
                if (ReferenceCountedOpenSslEngine.this.leak != null) {
                    ReferenceCountedOpenSslEngine.this.leak.record(obj);
                }
                return ReferenceCountedOpenSslEngine.this;
            }
        };
        ClientAuth clientAuth = ClientAuth.NONE;
        this.clientAuth = clientAuth;
        this.lastAccessed = -1L;
        boolean z12 = true;
        this.singleSrcBuffer = new ByteBuffer[1];
        this.singleDstBuffer = new ByteBuffer[1];
        OpenSsl.ensureAvailability();
        this.alloc = (ByteBufAllocator) ObjectUtil.checkNotNull(byteBufAllocator, "alloc");
        this.apn = (OpenSslApplicationProtocolNegotiator) referenceCountedOpenSslContext.applicationProtocolNegotiator();
        boolean zIsClient = referenceCountedOpenSslContext.isClient();
        this.clientMode = zIsClient;
        if (PlatformDependent.javaVersion() >= 7) {
            this.session = new ExtendedOpenSslSession(new DefaultOpenSslSession(referenceCountedOpenSslContext.sessionContext())) { // from class: io.netty.handler.ssl.ReferenceCountedOpenSslEngine.2
                private String[] peerSupportedSignatureAlgorithms;
                private List requestedServerNames;

                @Override // javax.net.ssl.ExtendedSSLSession
                public String[] getPeerSupportedSignatureAlgorithms() {
                    String[] strArr;
                    String[] sigAlgs;
                    synchronized (ReferenceCountedOpenSslEngine.this) {
                        if (this.peerSupportedSignatureAlgorithms == null) {
                            if (ReferenceCountedOpenSslEngine.this.isDestroyed() || (sigAlgs = SSL.getSigAlgs(ReferenceCountedOpenSslEngine.this.ssl)) == null) {
                                this.peerSupportedSignatureAlgorithms = EmptyArrays.EMPTY_STRINGS;
                            } else {
                                LinkedHashSet linkedHashSet = new LinkedHashSet(sigAlgs.length);
                                for (String str2 : sigAlgs) {
                                    String javaName = SignatureAlgorithmConverter.toJavaName(str2);
                                    if (javaName != null) {
                                        linkedHashSet.add(javaName);
                                    }
                                }
                                this.peerSupportedSignatureAlgorithms = (String[]) linkedHashSet.toArray(new String[0]);
                            }
                        }
                        strArr = (String[]) this.peerSupportedSignatureAlgorithms.clone();
                    }
                    return strArr;
                }

                @Override // io.netty.handler.ssl.ExtendedOpenSslSession, javax.net.ssl.ExtendedSSLSession
                public List getRequestedServerNames() {
                    List list;
                    if (ReferenceCountedOpenSslEngine.this.clientMode) {
                        return Java8SslUtils.getSniHostNames((List<String>) ReferenceCountedOpenSslEngine.this.sniHostNames);
                    }
                    synchronized (ReferenceCountedOpenSslEngine.this) {
                        if (this.requestedServerNames == null) {
                            if (ReferenceCountedOpenSslEngine.this.isDestroyed() || SSL.getSniHostname(ReferenceCountedOpenSslEngine.this.ssl) == null) {
                                this.requestedServerNames = Collections.emptyList();
                            } else {
                                this.requestedServerNames = Java8SslUtils.getSniHostName(SSL.getSniHostname(ReferenceCountedOpenSslEngine.this.ssl).getBytes(CharsetUtil.UTF_8));
                            }
                        }
                        list = this.requestedServerNames;
                    }
                    return list;
                }

                @Override // io.netty.handler.ssl.ExtendedOpenSslSession
                public List<byte[]> getStatusResponses() {
                    byte[] ocspResponse = null;
                    if (ReferenceCountedOpenSslEngine.this.enableOcsp && ReferenceCountedOpenSslEngine.this.clientMode) {
                        synchronized (ReferenceCountedOpenSslEngine.this) {
                            ocspResponse = ReferenceCountedOpenSslEngine.this.isDestroyed() ? null : SSL.getOcspResponse(ReferenceCountedOpenSslEngine.this.ssl);
                        }
                    }
                    return ocspResponse == null ? Collections.emptyList() : Collections.singletonList(ocspResponse);
                }
            };
        } else {
            this.session = new DefaultOpenSslSession(referenceCountedOpenSslContext.sessionContext());
        }
        this.engineMap = referenceCountedOpenSslContext.engineMap;
        boolean z13 = referenceCountedOpenSslContext.enableOcsp;
        this.enableOcsp = z13;
        this.localCertificateChain = referenceCountedOpenSslContext.keyCertChain;
        this.jdkCompatibilityMode = z10;
        Lock lock = referenceCountedOpenSslContext.ctxLock.readLock();
        lock.lock();
        try {
            long j10 = referenceCountedOpenSslContext.ctx;
            if (referenceCountedOpenSslContext.isClient()) {
                z12 = false;
            }
            long jNewSSL = SSL.newSSL(j10, z12);
            lock.unlock();
            synchronized (this) {
                this.ssl = jNewSSL;
                try {
                    this.networkBIO = SSL.bioNewByteBuffer(jNewSSL, referenceCountedOpenSslContext.getBioNonApplicationBufferSize());
                    if (!zIsClient) {
                        clientAuth = referenceCountedOpenSslContext.clientAuth;
                    }
                    setClientAuth(clientAuth);
                    String[] strArr = referenceCountedOpenSslContext.protocols;
                    if (strArr != null) {
                        setEnabledProtocols(strArr);
                    }
                    if (zIsClient && SslUtils.isValidHostNameForSNI(str)) {
                        SSL.setTlsExtHostName(this.ssl, str);
                        this.sniHostNames = Collections.singletonList(str);
                    }
                    if (z13) {
                        SSL.enableOcsp(this.ssl);
                    }
                    if (!z10) {
                        long j11 = this.ssl;
                        SSL.setMode(j11, SSL.getMode(j11) | SSL.SSL_MODE_ENABLE_PARTIAL_WRITE);
                    }
                    calculateMaxWrapOverhead();
                } catch (Throwable th) {
                    shutdown();
                    PlatformDependent.throwException(th);
                }
            }
            this.parentContext = referenceCountedOpenSslContext;
            referenceCountedOpenSslContext.retain();
            this.leak = z11 ? leakDetector.track(this) : null;
        } catch (Throwable th2) {
            lock.unlock();
            throw th2;
        }
    }

    private static long bufferAddress(ByteBuffer byteBuffer) {
        return PlatformDependent.hasUnsafe() ? PlatformDependent.directBufferAddress(byteBuffer) : Buffer.address(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calculateMaxWrapOverhead() {
        this.maxWrapOverhead = SSL.getMaxWrapOverhead(this.ssl);
        this.maxWrapBufferSize = this.jdkCompatibilityMode ? maxEncryptedPacketLength0() : maxEncryptedPacketLength0() << 4;
    }

    private void checkEngineClosed() throws SSLException {
        if (isDestroyed()) {
            throw new SSLException("engine closed");
        }
    }

    private void closeAll() throws SSLException {
        this.receivedShutdown = true;
        closeOutbound();
        closeInbound();
    }

    private boolean doSSLShutdown() {
        if (SSL.isInInit(this.ssl) != 0) {
            return false;
        }
        int iShutdownSSL = SSL.shutdownSSL(this.ssl);
        if (iShutdownSSL >= 0) {
            return true;
        }
        int error = SSL.getError(this.ssl, iShutdownSSL);
        if (error != SSL.SSL_ERROR_SYSCALL && error != SSL.SSL_ERROR_SSL) {
            SSL.clearError();
            return true;
        }
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            int lastErrorNumber = SSL.getLastErrorNumber();
            internalLogger.debug("SSL_shutdown failed: OpenSSL error: {} {}", Integer.valueOf(lastErrorNumber), SSL.getErrorString(lastErrorNumber));
        }
        shutdown();
        return false;
    }

    private SSLEngineResult.HandshakeStatus handshake() throws SSLException {
        if (this.needTask) {
            return SSLEngineResult.HandshakeStatus.NEED_TASK;
        }
        if (this.handshakeState == HandshakeState.FINISHED) {
            return SSLEngineResult.HandshakeStatus.FINISHED;
        }
        checkEngineClosed();
        if (this.handshakeException != null) {
            if (SSL.doHandshake(this.ssl) <= 0) {
                SSL.clearError();
            }
            return handshakeException();
        }
        this.engineMap.add(this);
        if (this.lastAccessed == -1) {
            this.lastAccessed = System.currentTimeMillis();
        }
        int iDoHandshake = SSL.doHandshake(this.ssl);
        if (iDoHandshake > 0) {
            if (SSL.bioLengthNonApplication(this.networkBIO) > 0) {
                return SSLEngineResult.HandshakeStatus.NEED_WRAP;
            }
            this.session.handshakeFinished();
            return SSLEngineResult.HandshakeStatus.FINISHED;
        }
        int error = SSL.getError(this.ssl, iDoHandshake);
        if (error == SSL.SSL_ERROR_WANT_READ || error == SSL.SSL_ERROR_WANT_WRITE) {
            return pendingStatus(SSL.bioLengthNonApplication(this.networkBIO));
        }
        if (error == SSL.SSL_ERROR_WANT_X509_LOOKUP || error == SSL.SSL_ERROR_WANT_CERTIFICATE_VERIFY || error == SSL.SSL_ERROR_WANT_PRIVATE_KEY_OPERATION) {
            return SSLEngineResult.HandshakeStatus.NEED_TASK;
        }
        if (this.handshakeException != null) {
            return handshakeException();
        }
        throw shutdownWithError("SSL_do_handshake", error);
    }

    private SSLEngineResult.HandshakeStatus handshakeException() throws SSLException {
        if (SSL.bioLengthNonApplication(this.networkBIO) > 0) {
            return SSLEngineResult.HandshakeStatus.NEED_WRAP;
        }
        Throwable th = this.handshakeException;
        this.handshakeException = null;
        shutdown();
        if (th instanceof SSLHandshakeException) {
            throw ((SSLHandshakeException) th);
        }
        SSLHandshakeException sSLHandshakeException = new SSLHandshakeException("General OpenSslEngine problem");
        sSLHandshakeException.initCause(th);
        throw sSLHandshakeException;
    }

    private boolean isBytesAvailableEnoughForWrap(int i10, int i11, int i12) {
        return ((long) i10) - (((long) this.maxWrapOverhead) * ((long) i12)) >= ((long) i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDestroyed() {
        return this.destroyed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isEmpty(Object[] objArr) {
        return objArr == null || objArr.length == 0;
    }

    private static boolean isEndPointVerificationEnabled(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    private static boolean isProtocolEnabled(int i10, int i11, String str) {
        return (i10 & i11) == 0 && OpenSsl.SUPPORTED_PROTOCOLS_SET.contains(str);
    }

    private SSLEngineResult.HandshakeStatus mayFinishHandshake(SSLEngineResult.HandshakeStatus handshakeStatus) throws SSLException {
        return (handshakeStatus != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING || this.handshakeState == HandshakeState.FINISHED) ? handshakeStatus : handshake();
    }

    private boolean needPendingStatus() {
        return (this.handshakeState == HandshakeState.NOT_STARTED || isDestroyed() || (this.handshakeState == HandshakeState.FINISHED && !isInboundDone() && !isOutboundDone())) ? false : true;
    }

    private SSLEngineResult newResult(SSLEngineResult.HandshakeStatus handshakeStatus, int i10, int i11) {
        return newResult(SSLEngineResult.Status.OK, handshakeStatus, i10, i11);
    }

    private SSLEngineResult newResultMayFinishHandshake(SSLEngineResult.HandshakeStatus handshakeStatus, int i10, int i11) throws SSLException {
        SSLEngineResult.HandshakeStatus handshakeStatus2 = SSLEngineResult.HandshakeStatus.FINISHED;
        if (handshakeStatus != handshakeStatus2) {
            handshakeStatus2 = getHandshakeStatus();
        }
        return newResult(mayFinishHandshake(handshakeStatus2), i10, i11);
    }

    private static SSLEngineResult.HandshakeStatus pendingStatus(int i10) {
        return i10 > 0 ? SSLEngineResult.HandshakeStatus.NEED_WRAP : SSLEngineResult.HandshakeStatus.NEED_UNWRAP;
    }

    private int readPlaintextData(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        if (byteBuffer.isDirect()) {
            int fromSSL = SSL.readFromSSL(this.ssl, bufferAddress(byteBuffer) + ((long) iPosition), byteBuffer.limit() - iPosition);
            if (fromSSL <= 0) {
                return fromSSL;
            }
            byteBuffer.position(iPosition + fromSSL);
            return fromSSL;
        }
        int iLimit = byteBuffer.limit();
        int iMin = Math.min(maxEncryptedPacketLength0(), iLimit - iPosition);
        ByteBuf byteBufDirectBuffer = this.alloc.directBuffer(iMin);
        try {
            int fromSSL2 = SSL.readFromSSL(this.ssl, OpenSsl.memoryAddress(byteBufDirectBuffer), iMin);
            if (fromSSL2 > 0) {
                byteBuffer.limit(iPosition + fromSSL2);
                byteBufDirectBuffer.getBytes(byteBufDirectBuffer.readerIndex(), byteBuffer);
                byteBuffer.limit(iLimit);
            }
            return fromSSL2;
        } finally {
            byteBufDirectBuffer.release();
        }
    }

    private void rejectRemoteInitiatedRenegotiation() throws SSLHandshakeException {
        if (isDestroyed() || SSL.getHandshakeCount(this.ssl) <= 1 || "TLSv1.3".equals(this.session.getProtocol()) || this.handshakeState != HandshakeState.FINISHED) {
            return;
        }
        shutdown();
        throw new SSLHandshakeException("remote-initiated renegotiation not allowed");
    }

    private void resetSingleDstBuffer() {
        this.singleDstBuffer[0] = null;
    }

    private void resetSingleSrcBuffer() {
        this.singleSrcBuffer[0] = null;
    }

    private void setClientAuth(ClientAuth clientAuth) {
        if (this.clientMode) {
            return;
        }
        synchronized (this) {
            if (this.clientAuth == clientAuth) {
                return;
            }
            int i10 = AnonymousClass4.$SwitchMap$io$netty$handler$ssl$ClientAuth[clientAuth.ordinal()];
            if (i10 == 1) {
                SSL.setVerify(this.ssl, 0, 10);
            } else if (i10 == 2) {
                SSL.setVerify(this.ssl, 2, 10);
            } else {
                if (i10 != 3) {
                    throw new Error(clientAuth.toString());
                }
                SSL.setVerify(this.ssl, 1, 10);
            }
            this.clientAuth = clientAuth;
        }
    }

    private SSLException shutdownWithError(String str, int i10) {
        return shutdownWithError(str, i10, SSL.getLastErrorNumber());
    }

    private ByteBuffer[] singleDstBuffer(ByteBuffer byteBuffer) {
        ByteBuffer[] byteBufferArr = this.singleDstBuffer;
        byteBufferArr[0] = byteBuffer;
        return byteBufferArr;
    }

    private ByteBuffer[] singleSrcBuffer(ByteBuffer byteBuffer) {
        ByteBuffer[] byteBufferArr = this.singleSrcBuffer;
        byteBufferArr[0] = byteBuffer;
        return byteBufferArr;
    }

    private int sslPending0() {
        if (this.handshakeState != HandshakeState.FINISHED) {
            return 0;
        }
        return SSL.sslPending(this.ssl);
    }

    private SSLEngineResult sslReadErrorResult(int i10, int i11, int i12, int i13) throws SSLException {
        if (SSL.bioLengthNonApplication(this.networkBIO) <= 0) {
            throw shutdownWithError("SSL_read", i10, i11);
        }
        if (this.handshakeException == null && this.handshakeState != HandshakeState.FINISHED) {
            this.handshakeException = new SSLHandshakeException(SSL.getErrorString(i11));
        }
        SSL.clearError();
        return new SSLEngineResult(SSLEngineResult.Status.OK, SSLEngineResult.HandshakeStatus.NEED_WRAP, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String toJavaCipherSuite(String str) {
        if (str == null) {
            return null;
        }
        return CipherSuiteConverter.toJava(str, toJavaCipherSuitePrefix(SSL.getVersion(this.ssl)));
    }

    private static String toJavaCipherSuitePrefix(String str) {
        char cCharAt = 0;
        if (str != null && !str.isEmpty()) {
            cCharAt = str.charAt(0);
        }
        if (cCharAt != 'S') {
            return cCharAt != 'T' ? t7.a.f97139c : SSLConnectionSocketFactory.TLS;
        }
        return SSLConnectionSocketFactory.SSL;
    }

    private ByteBuf writeEncryptedData(ByteBuffer byteBuffer, int i10) {
        int iPosition = byteBuffer.position();
        if (byteBuffer.isDirect()) {
            SSL.bioSetByteBuffer(this.networkBIO, bufferAddress(byteBuffer) + ((long) iPosition), i10, false);
            return null;
        }
        ByteBuf byteBufDirectBuffer = this.alloc.directBuffer(i10);
        try {
            int iLimit = byteBuffer.limit();
            byteBuffer.limit(iPosition + i10);
            byteBufDirectBuffer.writeBytes(byteBuffer);
            byteBuffer.position(iPosition);
            byteBuffer.limit(iLimit);
            SSL.bioSetByteBuffer(this.networkBIO, OpenSsl.memoryAddress(byteBufDirectBuffer), i10, false);
            return byteBufDirectBuffer;
        } catch (Throwable th) {
            byteBufDirectBuffer.release();
            PlatformDependent.throwException(th);
            return null;
        }
    }

    private int writePlaintextData(ByteBuffer byteBuffer, int i10) {
        int iWriteToSSL;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        if (byteBuffer.isDirect()) {
            iWriteToSSL = SSL.writeToSSL(this.ssl, bufferAddress(byteBuffer) + ((long) iPosition), i10);
            if (iWriteToSSL > 0) {
                byteBuffer.position(iPosition + iWriteToSSL);
            }
        } else {
            ByteBuf byteBufDirectBuffer = this.alloc.directBuffer(i10);
            try {
                byteBuffer.limit(iPosition + i10);
                byteBufDirectBuffer.setBytes(0, byteBuffer);
                byteBuffer.limit(iLimit);
                iWriteToSSL = SSL.writeToSSL(this.ssl, OpenSsl.memoryAddress(byteBufDirectBuffer), i10);
                if (iWriteToSSL > 0) {
                    byteBuffer.position(iPosition + iWriteToSSL);
                } else {
                    byteBuffer.position(iPosition);
                }
            } finally {
                byteBufDirectBuffer.release();
            }
        }
        return iWriteToSSL;
    }

    final synchronized String[] authMethods() {
        if (isDestroyed()) {
            return EmptyArrays.EMPTY_STRINGS;
        }
        return SSL.authenticationMethods(this.ssl);
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized void beginHandshake() throws SSLException {
        int i10 = AnonymousClass4.$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState[this.handshakeState.ordinal()];
        if (i10 == 1) {
            this.handshakeState = HandshakeState.STARTED_EXPLICITLY;
            if (handshake() == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                this.needTask = true;
            }
            calculateMaxWrapOverhead();
        } else {
            if (i10 == 2) {
                throw new SSLException("renegotiation unsupported");
            }
            if (i10 == 3) {
                checkEngineClosed();
                this.handshakeState = HandshakeState.STARTED_EXPLICITLY;
                calculateMaxWrapOverhead();
            } else if (i10 != 4) {
                throw new Error();
            }
        }
    }

    final int calculateMaxLengthForWrap(int i10, int i11) {
        return (int) Math.min(this.maxWrapBufferSize, ((long) i10) + (((long) this.maxWrapOverhead) * ((long) i11)));
    }

    final boolean checkSniHostnameMatch(byte[] bArr) {
        return Java8SslUtils.checkSniHostnameMatch(this.matchers, bArr);
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized void closeInbound() throws SSLException {
        if (this.isInboundDone) {
            return;
        }
        this.isInboundDone = true;
        if (isOutboundDone()) {
            shutdown();
        }
        if (this.handshakeState != HandshakeState.NOT_STARTED && !this.receivedShutdown) {
            throw new SSLException("Inbound closed before receiving peer's close_notify: possible truncation attack?");
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized void closeOutbound() {
        if (this.outboundClosed) {
            return;
        }
        this.outboundClosed = true;
        if (this.handshakeState == HandshakeState.NOT_STARTED || isDestroyed()) {
            shutdown();
        } else if ((SSL.getShutdown(this.ssl) & SSL.SSL_SENT_SHUTDOWN) != SSL.SSL_SENT_SHUTDOWN) {
            doSSLShutdown();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized Runnable getDelegatedTask() {
        if (isDestroyed()) {
            return null;
        }
        final Runnable task = SSL.getTask(this.ssl);
        if (task == null) {
            return null;
        }
        return new Runnable() { // from class: io.netty.handler.ssl.ReferenceCountedOpenSslEngine.3
            @Override // java.lang.Runnable
            public void run() {
                if (ReferenceCountedOpenSslEngine.this.isDestroyed()) {
                    return;
                }
                try {
                    task.run();
                } finally {
                    ReferenceCountedOpenSslEngine.this.needTask = false;
                }
            }
        };
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getEnableSessionCreation() {
        return false;
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getEnabledCipherSuites() {
        synchronized (this) {
            if (isDestroyed()) {
                return EmptyArrays.EMPTY_STRINGS;
            }
            String[] ciphers = SSL.getCiphers(this.ssl);
            if (ciphers == null) {
                return EmptyArrays.EMPTY_STRINGS;
            }
            ArrayList arrayList = new ArrayList();
            synchronized (this) {
                for (int i10 = 0; i10 < ciphers.length; i10++) {
                    String javaCipherSuite = toJavaCipherSuite(ciphers[i10]);
                    if (javaCipherSuite == null) {
                        javaCipherSuite = ciphers[i10];
                    }
                    if (OpenSsl.isTlsv13Supported() || !SslUtils.isTLSv13Cipher(javaCipherSuite)) {
                        arrayList.add(javaCipherSuite);
                    }
                }
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getEnabledProtocols() {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add("SSLv2Hello");
        synchronized (this) {
            if (isDestroyed()) {
                return (String[]) arrayList.toArray(new String[0]);
            }
            int options = SSL.getOptions(this.ssl);
            if (isProtocolEnabled(options, SSL.SSL_OP_NO_TLSv1, "TLSv1")) {
                arrayList.add("TLSv1");
            }
            if (isProtocolEnabled(options, SSL.SSL_OP_NO_TLSv1_1, "TLSv1.1")) {
                arrayList.add("TLSv1.1");
            }
            if (isProtocolEnabled(options, SSL.SSL_OP_NO_TLSv1_2, "TLSv1.2")) {
                arrayList.add("TLSv1.2");
            }
            if (isProtocolEnabled(options, SSL.SSL_OP_NO_TLSv1_3, "TLSv1.3")) {
                arrayList.add("TLSv1.3");
            }
            if (isProtocolEnabled(options, SSL.SSL_OP_NO_SSLv2, SSLConnectionSocketFactory.SSLV2)) {
                arrayList.add(SSLConnectionSocketFactory.SSLV2);
            }
            if (isProtocolEnabled(options, SSL.SSL_OP_NO_SSLv3, "SSLv3")) {
                arrayList.add("SSLv3");
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLSession getHandshakeSession() {
        int i10 = AnonymousClass4.$SwitchMap$io$netty$handler$ssl$ReferenceCountedOpenSslEngine$HandshakeState[this.handshakeState.ordinal()];
        if (i10 == 1 || i10 == 2) {
            return null;
        }
        return this.session;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult.HandshakeStatus getHandshakeStatus() {
        if (!needPendingStatus()) {
            return SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
        }
        if (this.needTask) {
            return SSLEngineResult.HandshakeStatus.NEED_TASK;
        }
        return pendingStatus(SSL.bioLengthNonApplication(this.networkBIO));
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getNeedClientAuth() {
        return this.clientAuth == ClientAuth.REQUIRE;
    }

    @Override // io.netty.handler.ssl.ApplicationProtocolAccessor
    public String getNegotiatedApplicationProtocol() {
        return this.applicationProtocol;
    }

    public byte[] getOcspResponse() {
        if (!this.enableOcsp) {
            throw new IllegalStateException("OCSP stapling is not enabled");
        }
        if (!this.clientMode) {
            throw new IllegalStateException("Not a client SSLEngine");
        }
        synchronized (this) {
            if (isDestroyed()) {
                return EmptyArrays.EMPTY_BYTES;
            }
            return SSL.getOcspResponse(this.ssl);
        }
    }

    @Override // javax.net.ssl.SSLEngine
    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    public final synchronized SSLParameters getSSLParameters() {
        SSLParameters sSLParameters;
        sSLParameters = super.getSSLParameters();
        int iJavaVersion = PlatformDependent.javaVersion();
        if (iJavaVersion >= 7) {
            sSLParameters.setEndpointIdentificationAlgorithm(this.endPointIdentificationAlgorithm);
            Java7SslParametersUtils.setAlgorithmConstraints(sSLParameters, this.algorithmConstraints);
            if (iJavaVersion >= 8) {
                List<String> list = this.sniHostNames;
                if (list != null) {
                    Java8SslUtils.setSniHostNames(sSLParameters, list);
                }
                if (!isDestroyed()) {
                    Java8SslUtils.setUseCipherSuitesOrder(sSLParameters, (SSL.getOptions(this.ssl) & SSL.SSL_OP_CIPHER_SERVER_PREFERENCE) != 0);
                }
                Java8SslUtils.setSNIMatchers(sSLParameters, this.matchers);
            }
        }
        return sSLParameters;
    }

    @Override // javax.net.ssl.SSLEngine
    public final SSLSession getSession() {
        return this.session;
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getSupportedCipherSuites() {
        return (String[]) OpenSsl.AVAILABLE_CIPHER_SUITES.toArray(new String[0]);
    }

    @Override // javax.net.ssl.SSLEngine
    public final String[] getSupportedProtocols() {
        return (String[]) OpenSsl.SUPPORTED_PROTOCOLS_SET.toArray(new String[0]);
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getUseClientMode() {
        return this.clientMode;
    }

    @Override // javax.net.ssl.SSLEngine
    public final boolean getWantClientAuth() {
        return this.clientAuth == ClientAuth.OPTIONAL;
    }

    final void initHandshakeException(Throwable th) {
        this.handshakeException = th;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized boolean isInboundDone() {
        return this.isInboundDone;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    @Override // javax.net.ssl.SSLEngine
    public final synchronized boolean isOutboundDone() {
        boolean z10;
        if (this.outboundClosed) {
            long j10 = this.networkBIO;
            if (j10 == 0 || SSL.bioLengthNonApplication(j10) == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        return z10;
    }

    final synchronized SecretKeySpec masterKey() {
        if (isDestroyed()) {
            return null;
        }
        return new SecretKeySpec(SSL.getMasterKey(this.ssl), "AES");
    }

    final synchronized int maxEncryptedPacketLength() {
        return maxEncryptedPacketLength0();
    }

    final int maxEncryptedPacketLength0() {
        return this.maxWrapOverhead + MAX_PLAINTEXT_LENGTH;
    }

    final synchronized int maxWrapOverhead() {
        return this.maxWrapOverhead;
    }

    @Override // io.netty.util.ReferenceCounted
    public final int refCnt() {
        return this.refCnt.refCnt();
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release() {
        return this.refCnt.release();
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted retain() {
        this.refCnt.retain();
        return this;
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setEnableSessionCreation(boolean z10) {
        if (z10) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setEnabledCipherSuites(String[] strArr) {
        ObjectUtil.checkNotNull(strArr, "cipherSuites");
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        CipherSuiteConverter.convertToCipherStrings(Arrays.asList(strArr), sb2, sb3, OpenSsl.isBoringSSL());
        String string = sb2.toString();
        String string2 = sb3.toString();
        if (!OpenSsl.isTlsv13Supported() && !string2.isEmpty()) {
            throw new IllegalArgumentException("TLSv1.3 is not supported by this java version.");
        }
        synchronized (this) {
            if (isDestroyed()) {
                throw new IllegalStateException("failed to enable cipher suites: " + string);
            }
            try {
                SSL.setCipherSuites(this.ssl, string, false);
                if (OpenSsl.isTlsv13Supported()) {
                    SSL.setCipherSuites(this.ssl, string2, true);
                }
            } catch (Exception e10) {
                throw new IllegalStateException("failed to enable cipher suites: " + string, e10);
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setEnabledProtocols(String[] strArr) {
        if (strArr == null) {
            throw new IllegalArgumentException();
        }
        int length = OPENSSL_OP_NO_PROTOCOLS.length;
        int i10 = 0;
        for (String str : strArr) {
            if (!OpenSsl.SUPPORTED_PROTOCOLS_SET.contains(str)) {
                throw new IllegalArgumentException("Protocol " + str + " is not supported.");
            }
            if (str.equals(SSLConnectionSocketFactory.SSLV2)) {
                if (length > 0) {
                    length = 0;
                }
                if (i10 < 0) {
                    i10 = 0;
                }
            } else if (str.equals("SSLv3")) {
                if (length > 1) {
                    length = 1;
                }
                if (i10 < 1) {
                    i10 = 1;
                }
            } else if (str.equals("TLSv1")) {
                if (length > 2) {
                    length = 2;
                }
                if (i10 < 2) {
                    i10 = 2;
                }
            } else if (str.equals("TLSv1.1")) {
                if (length > 3) {
                    length = 3;
                }
                if (i10 < 3) {
                    i10 = 3;
                }
            } else if (str.equals("TLSv1.2")) {
                if (length > 4) {
                    length = 4;
                }
                if (i10 < 4) {
                    i10 = 4;
                }
            } else if (str.equals("TLSv1.3")) {
                if (length > 5) {
                    length = 5;
                }
                if (i10 < 5) {
                    i10 = 5;
                }
            }
        }
        synchronized (this) {
            if (isDestroyed()) {
                throw new IllegalStateException("failed to enable protocols: " + Arrays.asList(strArr));
            }
            SSL.clearOptions(this.ssl, SSL.SSL_OP_NO_SSLv2 | SSL.SSL_OP_NO_SSLv3 | SSL.SSL_OP_NO_TLSv1 | SSL.SSL_OP_NO_TLSv1_1 | SSL.SSL_OP_NO_TLSv1_2 | SSL.SSL_OP_NO_TLSv1_3);
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                i11 |= OPENSSL_OP_NO_PROTOCOLS[i12];
            }
            int i13 = i10 + 1;
            while (true) {
                int[] iArr = OPENSSL_OP_NO_PROTOCOLS;
                if (i13 < iArr.length) {
                    i11 |= iArr[i13];
                    i13++;
                } else {
                    SSL.setOptions(this.ssl, i11);
                }
            }
        }
    }

    final boolean setKeyMaterial(OpenSslKeyMaterial openSslKeyMaterial) throws Exception {
        synchronized (this) {
            if (isDestroyed()) {
                return false;
            }
            SSL.setKeyMaterial(this.ssl, openSslKeyMaterial.certificateChainAddress(), openSslKeyMaterial.privateKeyAddress());
            this.localCertificateChain = openSslKeyMaterial.certificateChain();
            return true;
        }
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setNeedClientAuth(boolean z10) {
        setClientAuth(z10 ? ClientAuth.REQUIRE : ClientAuth.NONE);
    }

    public void setOcspResponse(byte[] bArr) {
        if (!this.enableOcsp) {
            throw new IllegalStateException("OCSP stapling is not enabled");
        }
        if (this.clientMode) {
            throw new IllegalStateException("Not a server SSLEngine");
        }
        synchronized (this) {
            if (!isDestroyed()) {
                SSL.setOcspResponse(this.ssl, bArr);
            }
        }
    }

    @Override // javax.net.ssl.SSLEngine
    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    public final synchronized void setSSLParameters(SSLParameters sSLParameters) {
        int iJavaVersion = PlatformDependent.javaVersion();
        if (iJavaVersion >= 7) {
            if (sSLParameters.getAlgorithmConstraints() != null) {
                throw new IllegalArgumentException("AlgorithmConstraints are not supported.");
            }
            if (iJavaVersion >= 8) {
                if (!isDestroyed()) {
                    if (this.clientMode) {
                        List<String> sniHostNames = Java8SslUtils.getSniHostNames(sSLParameters);
                        Iterator<String> it2 = sniHostNames.iterator();
                        while (it2.hasNext()) {
                            SSL.setTlsExtHostName(this.ssl, it2.next());
                        }
                        this.sniHostNames = sniHostNames;
                    }
                    if (Java8SslUtils.getUseCipherSuitesOrder(sSLParameters)) {
                        SSL.setOptions(this.ssl, SSL.SSL_OP_CIPHER_SERVER_PREFERENCE);
                    } else {
                        SSL.clearOptions(this.ssl, SSL.SSL_OP_CIPHER_SERVER_PREFERENCE);
                    }
                }
                this.matchers = sSLParameters.getSNIMatchers();
            }
            String endpointIdentificationAlgorithm = sSLParameters.getEndpointIdentificationAlgorithm();
            boolean zIsEndPointVerificationEnabled = isEndPointVerificationEnabled(endpointIdentificationAlgorithm);
            if (this.clientMode && zIsEndPointVerificationEnabled) {
                SSL.setVerify(this.ssl, 2, -1);
            }
            this.endPointIdentificationAlgorithm = endpointIdentificationAlgorithm;
            this.algorithmConstraints = sSLParameters.getAlgorithmConstraints();
        }
        super.setSSLParameters(sSLParameters);
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setUseClientMode(boolean z10) {
        if (z10 != this.clientMode) {
            throw new UnsupportedOperationException();
        }
    }

    public final synchronized void setVerify(int i10, int i11) {
        SSL.setVerify(this.ssl, i10, i11);
    }

    @Override // javax.net.ssl.SSLEngine
    public final void setWantClientAuth(boolean z10) {
        setClientAuth(z10 ? ClientAuth.OPTIONAL : ClientAuth.NONE);
    }

    public final synchronized void shutdown() {
        if (!this.destroyed) {
            this.destroyed = true;
            this.engineMap.remove(this.ssl);
            SSL.freeSSL(this.ssl);
            this.networkBIO = 0L;
            this.ssl = 0L;
            this.outboundClosed = true;
            this.isInboundDone = true;
        }
        SSL.clearError();
    }

    final synchronized int sslPending() {
        return sslPending0();
    }

    public final synchronized long sslPointer() {
        return this.ssl;
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted touch() {
        this.refCnt.touch();
        return this;
    }

    public final SSLEngineResult unwrap(ByteBuffer[] byteBufferArr, int i10, int i11, ByteBuffer[] byteBufferArr2, int i12, int i13) throws SSLException {
        int i14;
        int i15;
        int i16;
        int i17;
        int iMin;
        int iMin2;
        ByteBuf byteBufWriteEncryptedData;
        int i18 = i10;
        int i19 = i12;
        ObjectUtil.checkNotNull(byteBufferArr, "srcs");
        if (i18 >= byteBufferArr.length || (i14 = i18 + i11) > byteBufferArr.length) {
            throw new IndexOutOfBoundsException("offset: " + i18 + ", length: " + i11 + " (expected: offset <= offset + length <= srcs.length (" + byteBufferArr.length + "))");
        }
        if (byteBufferArr2 == null) {
            throw new IllegalArgumentException("dsts is null");
        }
        if (i19 >= byteBufferArr2.length || (i15 = i19 + i13) > byteBufferArr2.length) {
            throw new IndexOutOfBoundsException("offset: " + i19 + ", length: " + i13 + " (expected: offset <= offset + length <= dsts.length (" + byteBufferArr2.length + "))");
        }
        long jRemaining = 0;
        for (int i20 = i19; i20 < i15; i20++) {
            ByteBuffer byteBuffer = byteBufferArr2[i20];
            if (byteBuffer == null) {
                throw new IllegalArgumentException("dsts[" + i20 + "] is null");
            }
            if (byteBuffer.isReadOnly()) {
                throw new ReadOnlyBufferException();
            }
            jRemaining += (long) byteBuffer.remaining();
        }
        long jRemaining2 = 0;
        for (int i21 = i18; i21 < i14; i21++) {
            ByteBuffer byteBuffer2 = byteBufferArr[i21];
            if (byteBuffer2 == null) {
                throw new IllegalArgumentException("srcs[" + i21 + "] is null");
            }
            jRemaining2 += (long) byteBuffer2.remaining();
        }
        synchronized (this) {
            if (isInboundDone()) {
                return (isOutboundDone() || isDestroyed()) ? CLOSED_NOT_HANDSHAKING : NEED_WRAP_CLOSED;
            }
            SSLEngineResult.HandshakeStatus handshakeStatusHandshake = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
            HandshakeState handshakeState = this.handshakeState;
            if (handshakeState != HandshakeState.FINISHED) {
                if (handshakeState != HandshakeState.STARTED_EXPLICITLY) {
                    this.handshakeState = HandshakeState.STARTED_IMPLICITLY;
                }
                handshakeStatusHandshake = handshake();
                if (handshakeStatusHandshake == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                    return newResult(handshakeStatusHandshake, 0, 0);
                }
                if (handshakeStatusHandshake == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
                    return NEED_WRAP_OK;
                }
                if (this.isInboundDone) {
                    return NEED_WRAP_CLOSED;
                }
            }
            int iSslPending0 = sslPending0();
            if (!this.jdkCompatibilityMode) {
                i16 = iSslPending0;
                if (jRemaining2 == 0 && i16 <= 0) {
                    return newResultMayFinishHandshake(SSLEngineResult.Status.BUFFER_UNDERFLOW, handshakeStatusHandshake, 0, 0);
                }
                if (jRemaining == 0) {
                    return newResultMayFinishHandshake(SSLEngineResult.Status.BUFFER_OVERFLOW, handshakeStatusHandshake, 0, 0);
                }
                i17 = 0;
                iMin = (int) Math.min(2147483647L, jRemaining2);
            } else {
                if (jRemaining2 < 5) {
                    return newResultMayFinishHandshake(SSLEngineResult.Status.BUFFER_UNDERFLOW, handshakeStatusHandshake, 0, 0);
                }
                iMin = SslUtils.getEncryptedPacketLength(byteBufferArr, i10);
                if (iMin == -2) {
                    throw new NotSslRecordException("not an SSL/TLS record");
                }
                int i22 = iMin - 5;
                i16 = iSslPending0;
                if (i22 > jRemaining) {
                    if (i22 <= MAX_RECORD_SIZE) {
                        this.session.tryExpandApplicationBufferSize(i22);
                        return newResultMayFinishHandshake(SSLEngineResult.Status.BUFFER_OVERFLOW, handshakeStatusHandshake, 0, 0);
                    }
                    throw new SSLException("Illegal packet length: " + i22 + " > " + this.session.getApplicationBufferSize());
                }
                if (jRemaining2 < iMin) {
                    return newResultMayFinishHandshake(SSLEngineResult.Status.BUFFER_UNDERFLOW, handshakeStatusHandshake, 0, 0);
                }
                i17 = 0;
            }
            int iSslPending1 = i16;
            int i23 = 0;
            loop2: while (true) {
                try {
                    ByteBuffer byteBuffer3 = byteBufferArr[i18];
                    int iRemaining = byteBuffer3.remaining();
                    if (iRemaining != 0) {
                        iMin2 = Math.min(iMin, iRemaining);
                        byteBufWriteEncryptedData = writeEncryptedData(byteBuffer3, iMin2);
                    } else if (iSslPending1 <= 0) {
                        i18++;
                        if (i18 >= i14) {
                            break;
                        }
                    } else {
                        iMin2 = SSL.bioLengthByteBuffer(this.networkBIO);
                        byteBufWriteEncryptedData = null;
                    }
                    while (true) {
                        try {
                            ByteBuffer byteBuffer4 = byteBufferArr2[i19];
                            if (!byteBuffer4.hasRemaining()) {
                                i19++;
                                if (i19 >= i15) {
                                    if (byteBufWriteEncryptedData == null) {
                                        break loop2;
                                    }
                                    byteBufWriteEncryptedData.release();
                                    break loop2;
                                }
                            } else {
                                int i24 = iSslPending1;
                                int plaintextData = readPlaintextData(byteBuffer4);
                                SSLEngineResult.HandshakeStatus handshakeStatus = handshakeStatusHandshake;
                                int i25 = i14;
                                int iBioLengthByteBuffer = iMin2 - SSL.bioLengthByteBuffer(this.networkBIO);
                                i23 += iBioLengthByteBuffer;
                                iMin -= iBioLengthByteBuffer;
                                iMin2 -= iBioLengthByteBuffer;
                                byteBuffer3.position(byteBuffer3.position() + iBioLengthByteBuffer);
                                if (plaintextData > 0) {
                                    i17 += plaintextData;
                                    if (byteBuffer4.hasRemaining()) {
                                        handshakeStatusHandshake = handshakeStatus;
                                        if (iMin != 0 && !this.jdkCompatibilityMode) {
                                            iSslPending1 = i24;
                                        }
                                        if (byteBufWriteEncryptedData == null) {
                                            break loop2;
                                        }
                                        byteBufWriteEncryptedData.release();
                                        break loop2;
                                    }
                                    iSslPending1 = sslPending0();
                                    i19++;
                                    if (i19 >= i15) {
                                        SSLEngineResult sSLEngineResultNewResult = iSslPending1 > 0 ? newResult(SSLEngineResult.Status.BUFFER_OVERFLOW, handshakeStatus, i23, i17) : newResultMayFinishHandshake(isInboundDone() ? SSLEngineResult.Status.CLOSED : SSLEngineResult.Status.OK, handshakeStatus, i23, i17);
                                        if (byteBufWriteEncryptedData != null) {
                                            byteBufWriteEncryptedData.release();
                                        }
                                        SSL.bioClearByteBuffer(this.networkBIO);
                                        rejectRemoteInitiatedRenegotiation();
                                        return sSLEngineResultNewResult;
                                    }
                                    handshakeStatusHandshake = handshakeStatus;
                                    i14 = i25;
                                } else {
                                    handshakeStatusHandshake = handshakeStatus;
                                    int error = SSL.getError(this.ssl, plaintextData);
                                    if (error != SSL.SSL_ERROR_WANT_READ && error != SSL.SSL_ERROR_WANT_WRITE) {
                                        if (error == SSL.SSL_ERROR_ZERO_RETURN) {
                                            if (!this.receivedShutdown) {
                                                closeAll();
                                            }
                                            SSLEngineResult sSLEngineResultNewResultMayFinishHandshake = newResultMayFinishHandshake(isInboundDone() ? SSLEngineResult.Status.CLOSED : SSLEngineResult.Status.OK, handshakeStatusHandshake, i23, i17);
                                            if (byteBufWriteEncryptedData != null) {
                                                byteBufWriteEncryptedData.release();
                                            }
                                            SSL.bioClearByteBuffer(this.networkBIO);
                                            rejectRemoteInitiatedRenegotiation();
                                            return sSLEngineResultNewResultMayFinishHandshake;
                                        }
                                        if (error != SSL.SSL_ERROR_WANT_X509_LOOKUP && error != SSL.SSL_ERROR_WANT_CERTIFICATE_VERIFY && error != SSL.SSL_ERROR_WANT_PRIVATE_KEY_OPERATION) {
                                            SSLEngineResult sSLEngineResultSslReadErrorResult = sslReadErrorResult(error, SSL.getLastErrorNumber(), i23, i17);
                                            if (byteBufWriteEncryptedData != null) {
                                                byteBufWriteEncryptedData.release();
                                            }
                                            SSL.bioClearByteBuffer(this.networkBIO);
                                            rejectRemoteInitiatedRenegotiation();
                                            return sSLEngineResultSslReadErrorResult;
                                        }
                                        SSLEngineResult sSLEngineResultNewResult2 = newResult(isInboundDone() ? SSLEngineResult.Status.CLOSED : SSLEngineResult.Status.OK, SSLEngineResult.HandshakeStatus.NEED_TASK, i23, i17);
                                        if (byteBufWriteEncryptedData != null) {
                                            byteBufWriteEncryptedData.release();
                                        }
                                        SSL.bioClearByteBuffer(this.networkBIO);
                                        rejectRemoteInitiatedRenegotiation();
                                        return sSLEngineResultNewResult2;
                                    }
                                    i18++;
                                    i14 = i25;
                                    if (i18 >= i14) {
                                        if (byteBufWriteEncryptedData == null) {
                                            break;
                                        }
                                        byteBufWriteEncryptedData.release();
                                        break loop2;
                                    }
                                    if (byteBufWriteEncryptedData != null) {
                                        byteBufWriteEncryptedData.release();
                                    }
                                    iSslPending1 = i24;
                                }
                            }
                        } catch (Throwable th) {
                            if (byteBufWriteEncryptedData != null) {
                                byteBufWriteEncryptedData.release();
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    SSL.bioClearByteBuffer(this.networkBIO);
                    rejectRemoteInitiatedRenegotiation();
                    throw th2;
                }
            }
            SSL.bioClearByteBuffer(this.networkBIO);
            rejectRemoteInitiatedRenegotiation();
            if (!this.receivedShutdown && (SSL.getShutdown(this.ssl) & SSL.SSL_RECEIVED_SHUTDOWN) == SSL.SSL_RECEIVED_SHUTDOWN) {
                closeAll();
            }
            return newResultMayFinishHandshake(isInboundDone() ? SSLEngineResult.Status.CLOSED : SSLEngineResult.Status.OK, handshakeStatusHandshake, i23, i17);
        }
    }

    /* JADX WARN: Code duplicated, block: B:275:0x04bf A[Catch: all -> 0x04d7, TryCatch #3 {, blocks: (B:11:0x0013, B:13:0x0019, B:15:0x001f, B:18:0x0026, B:20:0x002b, B:19:0x0029, B:32:0x0083, B:34:0x008a, B:36:0x00a1, B:35:0x0093, B:41:0x00b1, B:43:0x00b8, B:45:0x00cf, B:44:0x00c1, B:50:0x00dd, B:52:0x00e4, B:54:0x00fb, B:53:0x00ed, B:59:0x010a, B:61:0x0111, B:63:0x0128, B:62:0x011a, B:273:0x04b8, B:275:0x04bf, B:277:0x04d6, B:276:0x04ce, B:79:0x0155, B:81:0x015c, B:83:0x0173, B:82:0x0165, B:86:0x017d, B:88:0x0184, B:90:0x019b, B:89:0x018d, B:95:0x01b1, B:97:0x01b8, B:99:0x01cf, B:98:0x01c1, B:108:0x01ee, B:110:0x01f5, B:112:0x020c, B:111:0x01fe, B:120:0x021d, B:122:0x0224, B:124:0x023b, B:123:0x022d, B:130:0x024b, B:132:0x0252, B:134:0x0269, B:133:0x025b, B:159:0x02c3, B:161:0x02ca, B:163:0x02e1, B:162:0x02d3, B:195:0x0360, B:197:0x0367, B:199:0x037e, B:198:0x0370, B:214:0x03b9, B:216:0x03c0, B:218:0x03d7, B:217:0x03c9, B:221:0x03df, B:223:0x03e6, B:225:0x03fd, B:224:0x03ef, B:230:0x0409, B:232:0x0410, B:234:0x0427, B:233:0x0419, B:239:0x0433, B:241:0x043a, B:243:0x0451, B:242:0x0443, B:255:0x046d, B:257:0x0474, B:259:0x048b, B:258:0x047d, B:176:0x0319, B:178:0x0320, B:180:0x0337, B:179:0x0329, B:262:0x0491, B:264:0x0498, B:266:0x04af, B:265:0x04a1), top: B:292:0x0013 }] */
    /* JADX WARN: Code duplicated, block: B:276:0x04ce A[Catch: all -> 0x04d7, TryCatch #3 {, blocks: (B:11:0x0013, B:13:0x0019, B:15:0x001f, B:18:0x0026, B:20:0x002b, B:19:0x0029, B:32:0x0083, B:34:0x008a, B:36:0x00a1, B:35:0x0093, B:41:0x00b1, B:43:0x00b8, B:45:0x00cf, B:44:0x00c1, B:50:0x00dd, B:52:0x00e4, B:54:0x00fb, B:53:0x00ed, B:59:0x010a, B:61:0x0111, B:63:0x0128, B:62:0x011a, B:273:0x04b8, B:275:0x04bf, B:277:0x04d6, B:276:0x04ce, B:79:0x0155, B:81:0x015c, B:83:0x0173, B:82:0x0165, B:86:0x017d, B:88:0x0184, B:90:0x019b, B:89:0x018d, B:95:0x01b1, B:97:0x01b8, B:99:0x01cf, B:98:0x01c1, B:108:0x01ee, B:110:0x01f5, B:112:0x020c, B:111:0x01fe, B:120:0x021d, B:122:0x0224, B:124:0x023b, B:123:0x022d, B:130:0x024b, B:132:0x0252, B:134:0x0269, B:133:0x025b, B:159:0x02c3, B:161:0x02ca, B:163:0x02e1, B:162:0x02d3, B:195:0x0360, B:197:0x0367, B:199:0x037e, B:198:0x0370, B:214:0x03b9, B:216:0x03c0, B:218:0x03d7, B:217:0x03c9, B:221:0x03df, B:223:0x03e6, B:225:0x03fd, B:224:0x03ef, B:230:0x0409, B:232:0x0410, B:234:0x0427, B:233:0x0419, B:239:0x0433, B:241:0x043a, B:243:0x0451, B:242:0x0443, B:255:0x046d, B:257:0x0474, B:259:0x048b, B:258:0x047d, B:176:0x0319, B:178:0x0320, B:180:0x0337, B:179:0x0329, B:262:0x0491, B:264:0x0498, B:266:0x04af, B:265:0x04a1), top: B:292:0x0013 }] */
    @Override // javax.net.ssl.SSLEngine
    public final SSLEngineResult wrap(ByteBuffer[] byteBufferArr, int i10, int i11, ByteBuffer byteBuffer) throws SSLException {
        int i12;
        int i13;
        int iWritePlaintextData;
        if (byteBufferArr == null) {
            throw new IllegalArgumentException("srcs is null");
        }
        if (byteBuffer == null) {
            throw new IllegalArgumentException("dst is null");
        }
        if (i10 >= byteBufferArr.length || (i12 = i10 + i11) > byteBufferArr.length) {
            throw new IndexOutOfBoundsException("offset: " + i10 + ", length: " + i11 + " (expected: offset <= offset + length <= srcs.length (" + byteBufferArr.length + "))");
        }
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        synchronized (this) {
            if (isOutboundDone()) {
                return (isInboundDone() || isDestroyed()) ? CLOSED_NOT_HANDSHAKING : NEED_UNWRAP_CLOSED;
            }
            int i14 = 0;
            int i15 = 0;
            ByteBuf byteBufDirectBuffer = null;
            byteBufDirectBuffer = null;
            try {
                if (byteBuffer.isDirect()) {
                    SSL.bioSetByteBuffer(this.networkBIO, bufferAddress(byteBuffer) + ((long) byteBuffer.position()), byteBuffer.remaining(), true);
                } else {
                    byteBufDirectBuffer = this.alloc.directBuffer(byteBuffer.remaining());
                    SSL.bioSetByteBuffer(this.networkBIO, OpenSsl.memoryAddress(byteBufDirectBuffer), byteBufDirectBuffer.writableBytes(), true);
                }
                int iBioLengthByteBuffer = SSL.bioLengthByteBuffer(this.networkBIO);
                try {
                    try {
                        if (this.outboundClosed) {
                            if (!isBytesAvailableEnoughForWrap(byteBuffer.remaining(), 2, 1)) {
                                SSLEngineResult sSLEngineResult = new SSLEngineResult(SSLEngineResult.Status.BUFFER_OVERFLOW, getHandshakeStatus(), 0, 0);
                                SSL.bioClearByteBuffer(this.networkBIO);
                                if (byteBufDirectBuffer == null) {
                                    byteBuffer.position(byteBuffer.position() + 0);
                                } else {
                                    byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), 0));
                                    byteBufDirectBuffer.release();
                                }
                                return sSLEngineResult;
                            }
                            int iBioFlushByteBuffer = SSL.bioFlushByteBuffer(this.networkBIO);
                            if (iBioFlushByteBuffer <= 0) {
                                SSLEngineResult sSLEngineResultNewResultMayFinishHandshake = newResultMayFinishHandshake(SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, 0, 0);
                                SSL.bioClearByteBuffer(this.networkBIO);
                                if (byteBufDirectBuffer == null) {
                                    byteBuffer.position(byteBuffer.position() + iBioFlushByteBuffer);
                                } else {
                                    byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioFlushByteBuffer));
                                    byteBufDirectBuffer.release();
                                }
                                return sSLEngineResultNewResultMayFinishHandshake;
                            }
                            if (!doSSLShutdown()) {
                                SSLEngineResult sSLEngineResultNewResultMayFinishHandshake2 = newResultMayFinishHandshake(SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, 0, iBioFlushByteBuffer);
                                SSL.bioClearByteBuffer(this.networkBIO);
                                if (byteBufDirectBuffer == null) {
                                    byteBuffer.position(byteBuffer.position() + iBioFlushByteBuffer);
                                } else {
                                    byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioFlushByteBuffer));
                                    byteBufDirectBuffer.release();
                                }
                                return sSLEngineResultNewResultMayFinishHandshake2;
                            }
                            int iBioLengthByteBuffer2 = iBioLengthByteBuffer - SSL.bioLengthByteBuffer(this.networkBIO);
                            SSLEngineResult sSLEngineResultNewResultMayFinishHandshake3 = newResultMayFinishHandshake(SSLEngineResult.HandshakeStatus.NEED_WRAP, 0, iBioLengthByteBuffer2);
                            SSL.bioClearByteBuffer(this.networkBIO);
                            if (byteBufDirectBuffer == null) {
                                byteBuffer.position(byteBuffer.position() + iBioLengthByteBuffer2);
                            } else {
                                byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioLengthByteBuffer2));
                                byteBufDirectBuffer.release();
                            }
                            return sSLEngineResultNewResultMayFinishHandshake3;
                        }
                        SSLEngineResult.HandshakeStatus handshakeStatus = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
                        HandshakeState handshakeState = this.handshakeState;
                        if (handshakeState != HandshakeState.FINISHED) {
                            if (handshakeState != HandshakeState.STARTED_EXPLICITLY) {
                                this.handshakeState = HandshakeState.STARTED_IMPLICITLY;
                            }
                            int iBioFlushByteBuffer2 = SSL.bioFlushByteBuffer(this.networkBIO);
                            try {
                                if (this.handshakeException != null) {
                                    if (iBioFlushByteBuffer2 > 0) {
                                        SSLEngineResult sSLEngineResultNewResult = newResult(SSLEngineResult.HandshakeStatus.NEED_WRAP, 0, iBioFlushByteBuffer2);
                                        SSL.bioClearByteBuffer(this.networkBIO);
                                        if (byteBufDirectBuffer == null) {
                                            byteBuffer.position(byteBuffer.position() + iBioFlushByteBuffer2);
                                        } else {
                                            byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioFlushByteBuffer2));
                                            byteBufDirectBuffer.release();
                                        }
                                        return sSLEngineResultNewResult;
                                    }
                                    SSLEngineResult sSLEngineResultNewResult2 = newResult(handshakeException(), 0, 0);
                                    SSL.bioClearByteBuffer(this.networkBIO);
                                    if (byteBufDirectBuffer == null) {
                                        byteBuffer.position(byteBuffer.position() + iBioFlushByteBuffer2);
                                    } else {
                                        byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioFlushByteBuffer2));
                                        byteBufDirectBuffer.release();
                                    }
                                    return sSLEngineResultNewResult2;
                                }
                                SSLEngineResult.HandshakeStatus handshakeStatusHandshake = handshake();
                                int iBioLengthByteBuffer3 = iBioLengthByteBuffer - SSL.bioLengthByteBuffer(this.networkBIO);
                                if (handshakeStatusHandshake == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                                    SSLEngineResult sSLEngineResultNewResult3 = newResult(handshakeStatusHandshake, 0, iBioLengthByteBuffer3);
                                    SSL.bioClearByteBuffer(this.networkBIO);
                                    if (byteBufDirectBuffer == null) {
                                        byteBuffer.position(byteBuffer.position() + iBioLengthByteBuffer3);
                                    } else {
                                        byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioLengthByteBuffer3));
                                        byteBufDirectBuffer.release();
                                    }
                                    return sSLEngineResultNewResult3;
                                }
                                if (iBioLengthByteBuffer3 > 0) {
                                    SSLEngineResult.HandshakeStatus handshakeStatus2 = SSLEngineResult.HandshakeStatus.FINISHED;
                                    if (handshakeStatusHandshake != handshakeStatus2) {
                                        handshakeStatus2 = iBioLengthByteBuffer3 == iBioLengthByteBuffer ? SSLEngineResult.HandshakeStatus.NEED_WRAP : getHandshakeStatus(SSL.bioLengthNonApplication(this.networkBIO));
                                    }
                                    SSLEngineResult sSLEngineResultNewResult4 = newResult(mayFinishHandshake(handshakeStatus2), 0, iBioLengthByteBuffer3);
                                    SSL.bioClearByteBuffer(this.networkBIO);
                                    if (byteBufDirectBuffer == null) {
                                        byteBuffer.position(byteBuffer.position() + iBioLengthByteBuffer3);
                                    } else {
                                        byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioLengthByteBuffer3));
                                        byteBufDirectBuffer.release();
                                    }
                                    return sSLEngineResultNewResult4;
                                }
                                if (handshakeStatusHandshake == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
                                    SSLEngineResult sSLEngineResult2 = isOutboundDone() ? NEED_UNWRAP_CLOSED : NEED_UNWRAP_OK;
                                    SSL.bioClearByteBuffer(this.networkBIO);
                                    if (byteBufDirectBuffer == null) {
                                        byteBuffer.position(byteBuffer.position() + iBioLengthByteBuffer3);
                                    } else {
                                        byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioLengthByteBuffer3));
                                        byteBufDirectBuffer.release();
                                    }
                                    return sSLEngineResult2;
                                }
                                if (this.outboundClosed) {
                                    int iBioFlushByteBuffer3 = SSL.bioFlushByteBuffer(this.networkBIO);
                                    SSLEngineResult sSLEngineResultNewResultMayFinishHandshake4 = newResultMayFinishHandshake(handshakeStatusHandshake, 0, iBioFlushByteBuffer3);
                                    SSL.bioClearByteBuffer(this.networkBIO);
                                    if (byteBufDirectBuffer == null) {
                                        byteBuffer.position(byteBuffer.position() + iBioFlushByteBuffer3);
                                    } else {
                                        byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioFlushByteBuffer3));
                                        byteBufDirectBuffer.release();
                                    }
                                    return sSLEngineResultNewResultMayFinishHandshake4;
                                }
                                i13 = iBioLengthByteBuffer3;
                                handshakeStatus = handshakeStatusHandshake;
                            } catch (Throwable th) {
                                th = th;
                                i14 = iBioFlushByteBuffer2;
                                SSL.bioClearByteBuffer(this.networkBIO);
                                if (byteBufDirectBuffer != null) {
                                    byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i14));
                                    byteBufDirectBuffer.release();
                                } else {
                                    byteBuffer.position(byteBuffer.position() + i14);
                                }
                                throw th;
                            }
                        } else {
                            i13 = 0;
                        }
                        try {
                            if (this.jdkCompatibilityMode) {
                                int iRemaining = 0;
                                for (int i16 = i10; i16 < i12; i16++) {
                                    ByteBuffer byteBuffer2 = byteBufferArr[i16];
                                    if (byteBuffer2 == null) {
                                        throw new IllegalArgumentException("srcs[" + i16 + "] is null");
                                    }
                                    int i17 = MAX_PLAINTEXT_LENGTH;
                                    if (iRemaining != i17 && ((iRemaining = iRemaining + byteBuffer2.remaining()) > i17 || iRemaining < 0)) {
                                        iRemaining = i17;
                                    }
                                }
                                if (!isBytesAvailableEnoughForWrap(byteBuffer.remaining(), iRemaining, 1)) {
                                    SSLEngineResult sSLEngineResult3 = new SSLEngineResult(SSLEngineResult.Status.BUFFER_OVERFLOW, getHandshakeStatus(), 0, 0);
                                    SSL.bioClearByteBuffer(this.networkBIO);
                                    if (byteBufDirectBuffer == null) {
                                        byteBuffer.position(byteBuffer.position() + i13);
                                    } else {
                                        byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i13));
                                        byteBufDirectBuffer.release();
                                    }
                                    return sSLEngineResult3;
                                }
                            }
                            int iBioFlushByteBuffer4 = SSL.bioFlushByteBuffer(this.networkBIO);
                            while (i10 < i12) {
                                try {
                                    ByteBuffer byteBuffer3 = byteBufferArr[i10];
                                    int iRemaining2 = byteBuffer3.remaining();
                                    if (iRemaining2 != 0) {
                                        if (this.jdkCompatibilityMode) {
                                            iWritePlaintextData = writePlaintextData(byteBuffer3, Math.min(iRemaining2, MAX_PLAINTEXT_LENGTH - i15));
                                        } else {
                                            int iRemaining3 = (byteBuffer.remaining() - iBioFlushByteBuffer4) - this.maxWrapOverhead;
                                            if (iRemaining3 <= 0) {
                                                SSLEngineResult sSLEngineResult4 = new SSLEngineResult(SSLEngineResult.Status.BUFFER_OVERFLOW, getHandshakeStatus(), i15, iBioFlushByteBuffer4);
                                                SSL.bioClearByteBuffer(this.networkBIO);
                                                if (byteBufDirectBuffer == null) {
                                                    byteBuffer.position(byteBuffer.position() + iBioFlushByteBuffer4);
                                                } else {
                                                    byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioFlushByteBuffer4));
                                                    byteBufDirectBuffer.release();
                                                }
                                                return sSLEngineResult4;
                                            }
                                            iWritePlaintextData = writePlaintextData(byteBuffer3, Math.min(iRemaining2, iRemaining3));
                                        }
                                        int iBioLengthByteBuffer4 = SSL.bioLengthByteBuffer(this.networkBIO);
                                        int i18 = (iBioLengthByteBuffer - iBioLengthByteBuffer4) + iBioFlushByteBuffer4;
                                        if (iWritePlaintextData > 0) {
                                            i15 += iWritePlaintextData;
                                            if (!this.jdkCompatibilityMode && i18 != byteBuffer.remaining()) {
                                                iBioFlushByteBuffer4 = i18;
                                                iBioLengthByteBuffer = iBioLengthByteBuffer4;
                                            }
                                            SSLEngineResult sSLEngineResultNewResultMayFinishHandshake5 = newResultMayFinishHandshake(handshakeStatus, i15, i18);
                                            SSL.bioClearByteBuffer(this.networkBIO);
                                            if (byteBufDirectBuffer == null) {
                                                byteBuffer.position(byteBuffer.position() + i18);
                                            } else {
                                                byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i18));
                                                byteBufDirectBuffer.release();
                                            }
                                            return sSLEngineResultNewResultMayFinishHandshake5;
                                        }
                                        int error = SSL.getError(this.ssl, iWritePlaintextData);
                                        if (error == SSL.SSL_ERROR_ZERO_RETURN) {
                                            if (this.receivedShutdown) {
                                                SSLEngineResult sSLEngineResultNewResult5 = newResult(SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING, i15, i18);
                                                SSL.bioClearByteBuffer(this.networkBIO);
                                                if (byteBufDirectBuffer == null) {
                                                    byteBuffer.position(byteBuffer.position() + i18);
                                                } else {
                                                    byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i18));
                                                    byteBufDirectBuffer.release();
                                                }
                                                return sSLEngineResultNewResult5;
                                            }
                                            closeAll();
                                            int iBioLengthByteBuffer5 = i18 + (iBioLengthByteBuffer4 - SSL.bioLengthByteBuffer(this.networkBIO));
                                            SSLEngineResult.HandshakeStatus handshakeStatus3 = SSLEngineResult.HandshakeStatus.FINISHED;
                                            if (handshakeStatus != handshakeStatus3) {
                                                handshakeStatus3 = iBioLengthByteBuffer5 == byteBuffer.remaining() ? SSLEngineResult.HandshakeStatus.NEED_WRAP : getHandshakeStatus(SSL.bioLengthNonApplication(this.networkBIO));
                                            }
                                            SSLEngineResult sSLEngineResultNewResult6 = newResult(mayFinishHandshake(handshakeStatus3), i15, iBioLengthByteBuffer5);
                                            SSL.bioClearByteBuffer(this.networkBIO);
                                            if (byteBufDirectBuffer == null) {
                                                byteBuffer.position(byteBuffer.position() + iBioLengthByteBuffer5);
                                            } else {
                                                byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioLengthByteBuffer5));
                                                byteBufDirectBuffer.release();
                                            }
                                            return sSLEngineResultNewResult6;
                                        }
                                        if (error == SSL.SSL_ERROR_WANT_READ) {
                                            SSLEngineResult sSLEngineResultNewResult7 = newResult(SSLEngineResult.HandshakeStatus.NEED_UNWRAP, i15, i18);
                                            SSL.bioClearByteBuffer(this.networkBIO);
                                            if (byteBufDirectBuffer == null) {
                                                byteBuffer.position(byteBuffer.position() + i18);
                                            } else {
                                                byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i18));
                                                byteBufDirectBuffer.release();
                                            }
                                            return sSLEngineResultNewResult7;
                                        }
                                        if (error == SSL.SSL_ERROR_WANT_WRITE) {
                                            SSLEngineResult sSLEngineResultNewResult8 = newResult(SSLEngineResult.Status.BUFFER_OVERFLOW, handshakeStatus, i15, i18);
                                            SSL.bioClearByteBuffer(this.networkBIO);
                                            if (byteBufDirectBuffer == null) {
                                                byteBuffer.position(byteBuffer.position() + i18);
                                            } else {
                                                byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i18));
                                                byteBufDirectBuffer.release();
                                            }
                                            return sSLEngineResultNewResult8;
                                        }
                                        if (error != SSL.SSL_ERROR_WANT_X509_LOOKUP && error != SSL.SSL_ERROR_WANT_CERTIFICATE_VERIFY && error != SSL.SSL_ERROR_WANT_PRIVATE_KEY_OPERATION) {
                                            throw shutdownWithError("SSL_write", error);
                                        }
                                        SSLEngineResult sSLEngineResultNewResult9 = newResult(SSLEngineResult.HandshakeStatus.NEED_TASK, i15, i18);
                                        SSL.bioClearByteBuffer(this.networkBIO);
                                        if (byteBufDirectBuffer == null) {
                                            byteBuffer.position(byteBuffer.position() + i18);
                                        } else {
                                            byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i18));
                                            byteBufDirectBuffer.release();
                                        }
                                        return sSLEngineResultNewResult9;
                                    }
                                    i10++;
                                } catch (Throwable th2) {
                                    th = th2;
                                    i14 = iBioFlushByteBuffer4;
                                    SSL.bioClearByteBuffer(this.networkBIO);
                                    if (byteBufDirectBuffer != null) {
                                        byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), i14));
                                        byteBufDirectBuffer.release();
                                    } else {
                                        byteBuffer.position(byteBuffer.position() + i14);
                                    }
                                    throw th;
                                }
                            }
                            SSLEngineResult sSLEngineResultNewResultMayFinishHandshake6 = newResultMayFinishHandshake(handshakeStatus, i15, iBioFlushByteBuffer4);
                            SSL.bioClearByteBuffer(this.networkBIO);
                            if (byteBufDirectBuffer == null) {
                                byteBuffer.position(byteBuffer.position() + iBioFlushByteBuffer4);
                            } else {
                                byteBuffer.put(byteBufDirectBuffer.internalNioBuffer(byteBufDirectBuffer.readerIndex(), iBioFlushByteBuffer4));
                                byteBufDirectBuffer.release();
                            }
                            return sSLEngineResultNewResultMayFinishHandshake6;
                        } catch (Throwable th3) {
                            th = th3;
                            i14 = i13;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        i14 = iBioLengthByteBuffer;
                    }
                } catch (Throwable th5) {
                    i14 = byteBufferArr;
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isEmpty(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    private SSLEngineResult newResult(SSLEngineResult.Status status, SSLEngineResult.HandshakeStatus handshakeStatus, int i10, int i11) {
        if (!isOutboundDone()) {
            if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                this.needTask = true;
            }
            return new SSLEngineResult(status, handshakeStatus, i10, i11);
        }
        if (isInboundDone()) {
            handshakeStatus = SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
            shutdown();
        }
        return new SSLEngineResult(SSLEngineResult.Status.CLOSED, handshakeStatus, i10, i11);
    }

    private SSLEngineResult newResultMayFinishHandshake(SSLEngineResult.Status status, SSLEngineResult.HandshakeStatus handshakeStatus, int i10, int i11) throws SSLException {
        SSLEngineResult.HandshakeStatus handshakeStatus2 = SSLEngineResult.HandshakeStatus.FINISHED;
        if (handshakeStatus != handshakeStatus2) {
            handshakeStatus2 = getHandshakeStatus();
        }
        return newResult(status, mayFinishHandshake(handshakeStatus2), i10, i11);
    }

    private SSLException shutdownWithError(String str, int i10, int i11) {
        String errorString = SSL.getErrorString(i11);
        InternalLogger internalLogger = logger;
        if (internalLogger.isDebugEnabled()) {
            internalLogger.debug("{} failed with {}: OpenSSL error: {} {}", str, Integer.valueOf(i10), Integer.valueOf(i11), errorString);
        }
        shutdown();
        if (this.handshakeState == HandshakeState.FINISHED) {
            return new SSLException(errorString);
        }
        SSLHandshakeException sSLHandshakeException = new SSLHandshakeException(errorString);
        Throwable th = this.handshakeException;
        if (th != null) {
            sSLHandshakeException.initCause(th);
            this.handshakeException = null;
        }
        return sSLHandshakeException;
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release(int i10) {
        return this.refCnt.release(i10);
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted retain(int i10) {
        this.refCnt.retain(i10);
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public final ReferenceCounted touch(Object obj) {
        this.refCnt.touch(obj);
        return this;
    }

    private SSLEngineResult.HandshakeStatus getHandshakeStatus(int i10) {
        if (needPendingStatus()) {
            if (this.needTask) {
                return SSLEngineResult.HandshakeStatus.NEED_TASK;
            }
            return pendingStatus(i10);
        }
        return SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING;
    }

    private final class DefaultOpenSslSession implements OpenSslSession {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private volatile int applicationBufferSize = ReferenceCountedOpenSslEngine.MAX_PLAINTEXT_LENGTH;
        private String cipher;
        private long creationTime;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private byte[] f91652id;
        private Certificate[] peerCerts;
        private String protocol;
        private final OpenSslSessionContext sessionContext;
        private Map<String, Object> values;
        private X509Certificate[] x509PeerCerts;

        DefaultOpenSslSession(OpenSslSessionContext openSslSessionContext) {
            this.sessionContext = openSslSessionContext;
        }

        private void initCerts(byte[][] bArr, int i10) {
            for (int i11 = 0; i11 < bArr.length; i11++) {
                int i12 = i10 + i11;
                this.peerCerts[i12] = new OpenSslX509Certificate(bArr[i11]);
                this.x509PeerCerts[i12] = new OpenSslJavaxX509Certificate(bArr[i11]);
            }
        }

        private void initPeerCerts() {
            byte[][] peerCertChain = SSL.getPeerCertChain(ReferenceCountedOpenSslEngine.this.ssl);
            if (ReferenceCountedOpenSslEngine.this.clientMode) {
                if (ReferenceCountedOpenSslEngine.isEmpty(peerCertChain)) {
                    this.peerCerts = EmptyArrays.EMPTY_CERTIFICATES;
                    this.x509PeerCerts = EmptyArrays.EMPTY_JAVAX_X509_CERTIFICATES;
                    return;
                } else {
                    this.peerCerts = new Certificate[peerCertChain.length];
                    this.x509PeerCerts = new X509Certificate[peerCertChain.length];
                    initCerts(peerCertChain, 0);
                    return;
                }
            }
            byte[] peerCertificate = SSL.getPeerCertificate(ReferenceCountedOpenSslEngine.this.ssl);
            if (ReferenceCountedOpenSslEngine.isEmpty(peerCertificate)) {
                this.peerCerts = EmptyArrays.EMPTY_CERTIFICATES;
                this.x509PeerCerts = EmptyArrays.EMPTY_JAVAX_X509_CERTIFICATES;
            } else {
                if (ReferenceCountedOpenSslEngine.isEmpty(peerCertChain)) {
                    this.peerCerts = new Certificate[]{new OpenSslX509Certificate(peerCertificate)};
                    this.x509PeerCerts = new X509Certificate[]{new OpenSslJavaxX509Certificate(peerCertificate)};
                    return;
                }
                Certificate[] certificateArr = new Certificate[peerCertChain.length + 1];
                this.peerCerts = certificateArr;
                this.x509PeerCerts = new X509Certificate[peerCertChain.length + 1];
                certificateArr[0] = new OpenSslX509Certificate(peerCertificate);
                this.x509PeerCerts[0] = new OpenSslJavaxX509Certificate(peerCertificate);
                initCerts(peerCertChain, 1);
            }
        }

        private SSLSessionBindingEvent newSSLSessionBindingEvent(String str) {
            return new SSLSessionBindingEvent(ReferenceCountedOpenSslEngine.this.session, str);
        }

        private void notifyUnbound(Object obj, String str) {
            if (obj instanceof SSLSessionBindingListener) {
                ((SSLSessionBindingListener) obj).valueUnbound(newSSLSessionBindingEvent(str));
            }
        }

        private void selectApplicationProtocol() throws SSLException {
            ApplicationProtocolConfig.SelectedListenerFailureBehavior selectedListenerFailureBehavior = ReferenceCountedOpenSslEngine.this.apn.selectedListenerFailureBehavior();
            List<String> listProtocols = ReferenceCountedOpenSslEngine.this.apn.protocols();
            int i10 = AnonymousClass4.$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol[ReferenceCountedOpenSslEngine.this.apn.protocol().ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    String alpnSelected = SSL.getAlpnSelected(ReferenceCountedOpenSslEngine.this.ssl);
                    if (alpnSelected != null) {
                        ReferenceCountedOpenSslEngine.this.applicationProtocol = selectApplicationProtocol(listProtocols, selectedListenerFailureBehavior, alpnSelected);
                        return;
                    }
                    return;
                }
                if (i10 == 3) {
                    String nextProtoNegotiated = SSL.getNextProtoNegotiated(ReferenceCountedOpenSslEngine.this.ssl);
                    if (nextProtoNegotiated != null) {
                        ReferenceCountedOpenSslEngine.this.applicationProtocol = selectApplicationProtocol(listProtocols, selectedListenerFailureBehavior, nextProtoNegotiated);
                        return;
                    }
                    return;
                }
                if (i10 != 4) {
                    throw new Error();
                }
                String alpnSelected2 = SSL.getAlpnSelected(ReferenceCountedOpenSslEngine.this.ssl);
                if (alpnSelected2 == null) {
                    alpnSelected2 = SSL.getNextProtoNegotiated(ReferenceCountedOpenSslEngine.this.ssl);
                }
                if (alpnSelected2 != null) {
                    ReferenceCountedOpenSslEngine.this.applicationProtocol = selectApplicationProtocol(listProtocols, selectedListenerFailureBehavior, alpnSelected2);
                }
            }
        }

        @Override // javax.net.ssl.SSLSession
        public int getApplicationBufferSize() {
            return this.applicationBufferSize;
        }

        @Override // javax.net.ssl.SSLSession
        public String getCipherSuite() {
            synchronized (ReferenceCountedOpenSslEngine.this) {
                String str = this.cipher;
                return str == null ? "SSL_NULL_WITH_NULL_NULL" : str;
            }
        }

        @Override // javax.net.ssl.SSLSession
        public long getCreationTime() {
            synchronized (ReferenceCountedOpenSslEngine.this) {
                if (this.creationTime == 0 && !ReferenceCountedOpenSslEngine.this.isDestroyed()) {
                    this.creationTime = SSL.getTime(ReferenceCountedOpenSslEngine.this.ssl) * 1000;
                }
            }
            return this.creationTime;
        }

        @Override // javax.net.ssl.SSLSession
        public byte[] getId() {
            synchronized (ReferenceCountedOpenSslEngine.this) {
                byte[] bArr = this.f91652id;
                if (bArr == null) {
                    return EmptyArrays.EMPTY_BYTES;
                }
                return (byte[]) bArr.clone();
            }
        }

        @Override // javax.net.ssl.SSLSession
        public long getLastAccessedTime() {
            long j10 = ReferenceCountedOpenSslEngine.this.lastAccessed;
            return j10 == -1 ? getCreationTime() : j10;
        }

        @Override // javax.net.ssl.SSLSession
        public Certificate[] getLocalCertificates() {
            Certificate[] certificateArr = ReferenceCountedOpenSslEngine.this.localCertificateChain;
            if (certificateArr == null) {
                return null;
            }
            return (Certificate[]) certificateArr.clone();
        }

        @Override // javax.net.ssl.SSLSession
        public Principal getLocalPrincipal() {
            Certificate[] certificateArr = ReferenceCountedOpenSslEngine.this.localCertificateChain;
            if (certificateArr == null || certificateArr.length == 0) {
                return null;
            }
            return ((java.security.cert.X509Certificate) certificateArr[0]).getIssuerX500Principal();
        }

        @Override // javax.net.ssl.SSLSession
        public int getPacketBufferSize() {
            return ReferenceCountedOpenSslEngine.this.maxEncryptedPacketLength();
        }

        @Override // javax.net.ssl.SSLSession
        public X509Certificate[] getPeerCertificateChain() throws SSLPeerUnverifiedException {
            X509Certificate[] x509CertificateArr;
            synchronized (ReferenceCountedOpenSslEngine.this) {
                if (ReferenceCountedOpenSslEngine.isEmpty(this.x509PeerCerts)) {
                    throw new SSLPeerUnverifiedException("peer not verified");
                }
                x509CertificateArr = (X509Certificate[]) this.x509PeerCerts.clone();
            }
            return x509CertificateArr;
        }

        @Override // javax.net.ssl.SSLSession
        public Certificate[] getPeerCertificates() throws SSLPeerUnverifiedException {
            Certificate[] certificateArr;
            synchronized (ReferenceCountedOpenSslEngine.this) {
                if (ReferenceCountedOpenSslEngine.isEmpty(this.peerCerts)) {
                    throw new SSLPeerUnverifiedException("peer not verified");
                }
                certificateArr = (Certificate[]) this.peerCerts.clone();
            }
            return certificateArr;
        }

        @Override // javax.net.ssl.SSLSession
        public String getPeerHost() {
            return ReferenceCountedOpenSslEngine.this.getPeerHost();
        }

        @Override // javax.net.ssl.SSLSession
        public int getPeerPort() {
            return ReferenceCountedOpenSslEngine.this.getPeerPort();
        }

        @Override // javax.net.ssl.SSLSession
        public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
            return ((java.security.cert.X509Certificate) getPeerCertificates()[0]).getSubjectX500Principal();
        }

        @Override // javax.net.ssl.SSLSession
        public String getProtocol() {
            String version = this.protocol;
            if (version == null) {
                synchronized (ReferenceCountedOpenSslEngine.this) {
                    version = !ReferenceCountedOpenSslEngine.this.isDestroyed() ? SSL.getVersion(ReferenceCountedOpenSslEngine.this.ssl) : "";
                }
            }
            return version;
        }

        @Override // javax.net.ssl.SSLSession
        public SSLSessionContext getSessionContext() {
            return this.sessionContext;
        }

        @Override // javax.net.ssl.SSLSession
        public Object getValue(String str) {
            ObjectUtil.checkNotNull(str, "name");
            synchronized (this) {
                Map<String, Object> map = this.values;
                if (map == null) {
                    return null;
                }
                return map.get(str);
            }
        }

        @Override // javax.net.ssl.SSLSession
        public String[] getValueNames() {
            synchronized (this) {
                Map<String, Object> map = this.values;
                if (map != null && !map.isEmpty()) {
                    return (String[]) map.keySet().toArray(new String[0]);
                }
                return EmptyArrays.EMPTY_STRINGS;
            }
        }

        @Override // io.netty.handler.ssl.OpenSslSession
        public void handshakeFinished() throws SSLException {
            synchronized (ReferenceCountedOpenSslEngine.this) {
                if (ReferenceCountedOpenSslEngine.this.isDestroyed()) {
                    throw new SSLException("Already closed");
                }
                this.f91652id = SSL.getSessionId(ReferenceCountedOpenSslEngine.this.ssl);
                ReferenceCountedOpenSslEngine referenceCountedOpenSslEngine = ReferenceCountedOpenSslEngine.this;
                this.cipher = referenceCountedOpenSslEngine.toJavaCipherSuite(SSL.getCipherForSSL(referenceCountedOpenSslEngine.ssl));
                this.protocol = SSL.getVersion(ReferenceCountedOpenSslEngine.this.ssl);
                initPeerCerts();
                selectApplicationProtocol();
                ReferenceCountedOpenSslEngine.this.calculateMaxWrapOverhead();
                ReferenceCountedOpenSslEngine.this.handshakeState = HandshakeState.FINISHED;
            }
        }

        @Override // javax.net.ssl.SSLSession
        public void invalidate() {
            synchronized (ReferenceCountedOpenSslEngine.this) {
                if (!ReferenceCountedOpenSslEngine.this.isDestroyed()) {
                    SSL.setTimeout(ReferenceCountedOpenSslEngine.this.ssl, 0L);
                }
            }
        }

        @Override // javax.net.ssl.SSLSession
        public boolean isValid() {
            synchronized (ReferenceCountedOpenSslEngine.this) {
                if (ReferenceCountedOpenSslEngine.this.isDestroyed()) {
                    return false;
                }
                return System.currentTimeMillis() - (SSL.getTimeout(ReferenceCountedOpenSslEngine.this.ssl) * 1000) < SSL.getTime(ReferenceCountedOpenSslEngine.this.ssl) * 1000;
            }
        }

        @Override // javax.net.ssl.SSLSession
        public void putValue(String str, Object obj) {
            Object objPut;
            ObjectUtil.checkNotNull(str, "name");
            ObjectUtil.checkNotNull(obj, HmInputMappingContent.FIELD_VALUE);
            synchronized (this) {
                Map map = this.values;
                if (map == null) {
                    map = new HashMap(2);
                    this.values = map;
                }
                objPut = map.put(str, obj);
            }
            if (obj instanceof SSLSessionBindingListener) {
                ((SSLSessionBindingListener) obj).valueBound(newSSLSessionBindingEvent(str));
            }
            notifyUnbound(objPut, str);
        }

        @Override // javax.net.ssl.SSLSession
        public void removeValue(String str) {
            ObjectUtil.checkNotNull(str, "name");
            synchronized (this) {
                Map<String, Object> map = this.values;
                if (map == null) {
                    return;
                }
                notifyUnbound(map.remove(str), str);
            }
        }

        @Override // io.netty.handler.ssl.OpenSslSession
        public void tryExpandApplicationBufferSize(int i10) {
            if (i10 <= ReferenceCountedOpenSslEngine.MAX_PLAINTEXT_LENGTH || this.applicationBufferSize == ReferenceCountedOpenSslEngine.MAX_RECORD_SIZE) {
                return;
            }
            this.applicationBufferSize = ReferenceCountedOpenSslEngine.MAX_RECORD_SIZE;
        }

        private String selectApplicationProtocol(List<String> list, ApplicationProtocolConfig.SelectedListenerFailureBehavior selectedListenerFailureBehavior, String str) throws SSLException {
            if (selectedListenerFailureBehavior == ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT) {
                return str;
            }
            int size = list.size();
            if (list.contains(str)) {
                return str;
            }
            if (selectedListenerFailureBehavior == ApplicationProtocolConfig.SelectedListenerFailureBehavior.CHOOSE_MY_LAST_PROTOCOL) {
                return list.get(size - 1);
            }
            throw new SSLException("unknown protocol " + str);
        }
    }

    public final SSLEngineResult unwrap(ByteBuffer[] byteBufferArr, ByteBuffer[] byteBufferArr2) throws SSLException {
        return unwrap(byteBufferArr, 0, byteBufferArr.length, byteBufferArr2, 0, byteBufferArr2.length);
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr, int i10, int i11) throws SSLException {
        SSLEngineResult sSLEngineResultUnwrap;
        try {
            sSLEngineResultUnwrap = unwrap(singleSrcBuffer(byteBuffer), 0, 1, byteBufferArr, i10, i11);
            resetSingleSrcBuffer();
        } catch (Throwable th) {
            resetSingleSrcBuffer();
            throw th;
        }
        return sSLEngineResultUnwrap;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        SSLEngineResult sSLEngineResultUnwrap;
        try {
            sSLEngineResultUnwrap = unwrap(singleSrcBuffer(byteBuffer), singleDstBuffer(byteBuffer2));
            resetSingleSrcBuffer();
            resetSingleDstBuffer();
        } catch (Throwable th) {
            resetSingleSrcBuffer();
            resetSingleDstBuffer();
            throw th;
        }
        return sSLEngineResultUnwrap;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr) throws SSLException {
        SSLEngineResult sSLEngineResultUnwrap;
        try {
            sSLEngineResultUnwrap = unwrap(singleSrcBuffer(byteBuffer), byteBufferArr);
            resetSingleSrcBuffer();
        } catch (Throwable th) {
            resetSingleSrcBuffer();
            throw th;
        }
        return sSLEngineResultUnwrap;
    }

    @Override // javax.net.ssl.SSLEngine
    public final synchronized SSLEngineResult wrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        SSLEngineResult sSLEngineResultWrap;
        try {
            sSLEngineResultWrap = wrap(singleSrcBuffer(byteBuffer), byteBuffer2);
            resetSingleSrcBuffer();
        } catch (Throwable th) {
            resetSingleSrcBuffer();
            throw th;
        }
        return sSLEngineResultWrap;
    }
}
