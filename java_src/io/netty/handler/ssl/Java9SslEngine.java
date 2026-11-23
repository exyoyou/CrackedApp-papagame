package io.netty.handler.ssl;

import io.netty.util.internal.SuppressJava6Requirement;
import java.nio.ByteBuffer;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.function.BiFunction;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes.dex */
@SuppressJava6Requirement(reason = "Usage guarded by java version check")
final class Java9SslEngine extends JdkSslEngine {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final AlpnSelector alpnSelector;
    private final JdkApplicationProtocolNegotiator.ProtocolSelectionListener selectionListener;

    private final class AlpnSelector implements BiFunction<SSLEngine, List<String>, String> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private boolean called;
        private final JdkApplicationProtocolNegotiator.ProtocolSelector selector;

        AlpnSelector(JdkApplicationProtocolNegotiator.ProtocolSelector protocolSelector) {
            this.selector = protocolSelector;
        }

        void checkUnsupported() {
            if (!this.called && Java9SslEngine.this.getApplicationProtocol().isEmpty()) {
                this.selector.unsupported();
            }
        }

        @Override // java.util.function.BiFunction
        public String apply(SSLEngine sSLEngine, List<String> list) {
            this.called = true;
            try {
                String strSelect = this.selector.select(list);
                return strSelect == null ? "" : strSelect;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    Java9SslEngine(SSLEngine sSLEngine, JdkApplicationProtocolNegotiator jdkApplicationProtocolNegotiator, boolean z10) {
        super(sSLEngine);
        if (!z10) {
            this.selectionListener = jdkApplicationProtocolNegotiator.protocolListenerFactory().newListener(this, jdkApplicationProtocolNegotiator.protocols());
            this.alpnSelector = null;
            Java9SslUtils.setApplicationProtocols(sSLEngine, jdkApplicationProtocolNegotiator.protocols());
        } else {
            this.selectionListener = null;
            AlpnSelector alpnSelector = new AlpnSelector(jdkApplicationProtocolNegotiator.protocolSelectorFactory().newSelector(this, new LinkedHashSet(jdkApplicationProtocolNegotiator.protocols())));
            this.alpnSelector = alpnSelector;
            Java9SslUtils.setHandshakeApplicationProtocolSelector(sSLEngine, alpnSelector);
        }
    }

    private SSLEngineResult verifyProtocolSelection(SSLEngineResult sSLEngineResult) throws SSLException {
        if (sSLEngineResult.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
            AlpnSelector alpnSelector = this.alpnSelector;
            if (alpnSelector == null) {
                try {
                    String applicationProtocol = getApplicationProtocol();
                    if (applicationProtocol.isEmpty()) {
                        this.selectionListener.unsupported();
                    } else {
                        this.selectionListener.selected(applicationProtocol);
                    }
                } catch (Throwable th) {
                    throw SslUtils.toSSLHandshakeException(th);
                }
            } else {
                alpnSelector.checkUnsupported();
            }
        }
        return sSLEngineResult;
    }

    @Override // javax.net.ssl.SSLEngine
    public String getApplicationProtocol() {
        return Java9SslUtils.getApplicationProtocol(getWrappedEngine());
    }

    @Override // javax.net.ssl.SSLEngine
    public String getHandshakeApplicationProtocol() {
        return Java9SslUtils.getHandshakeApplicationProtocol(getWrappedEngine());
    }

    @Override // javax.net.ssl.SSLEngine
    public BiFunction<SSLEngine, List<String>, String> getHandshakeApplicationProtocolSelector() {
        return Java9SslUtils.getHandshakeApplicationProtocolSelector(getWrappedEngine());
    }

    @Override // io.netty.handler.ssl.JdkSslEngine, io.netty.handler.ssl.ApplicationProtocolAccessor
    public String getNegotiatedApplicationProtocol() {
        String applicationProtocol = getApplicationProtocol();
        if (applicationProtocol == null || !applicationProtocol.isEmpty()) {
            return applicationProtocol;
        }
        return null;
    }

    @Override // javax.net.ssl.SSLEngine
    public void setHandshakeApplicationProtocolSelector(BiFunction<SSLEngine, List<String>, String> biFunction) {
        Java9SslUtils.setHandshakeApplicationProtocolSelector(getWrappedEngine(), biFunction);
    }

    @Override // io.netty.handler.ssl.JdkSslEngine
    void setNegotiatedApplicationProtocol(String str) {
    }

    @Override // io.netty.handler.ssl.JdkSslEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return verifyProtocolSelection(super.unwrap(byteBuffer, byteBuffer2));
    }

    @Override // io.netty.handler.ssl.JdkSslEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws SSLException {
        return verifyProtocolSelection(super.wrap(byteBuffer, byteBuffer2));
    }

    @Override // io.netty.handler.ssl.JdkSslEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr) throws SSLException {
        return verifyProtocolSelection(super.unwrap(byteBuffer, byteBufferArr));
    }

    @Override // io.netty.handler.ssl.JdkSslEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBufferArr, ByteBuffer byteBuffer) throws SSLException {
        return verifyProtocolSelection(super.wrap(byteBufferArr, byteBuffer));
    }

    @Override // io.netty.handler.ssl.JdkSslEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr, int i10, int i11) throws SSLException {
        return verifyProtocolSelection(super.unwrap(byteBuffer, byteBufferArr, i10, i11));
    }

    @Override // io.netty.handler.ssl.JdkSslEngine, javax.net.ssl.SSLEngine
    public SSLEngineResult wrap(ByteBuffer[] byteBufferArr, int i10, int i11, ByteBuffer byteBuffer) throws SSLException {
        return verifyProtocolSelection(super.wrap(byteBufferArr, i10, i11, byteBuffer));
    }
}
