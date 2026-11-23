package io.netty.handler.codec.spdy;

import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;

/* JADX INFO: loaded from: classes.dex */
public class SpdyProtocolException extends Exception {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 7870000537743847264L;

    public SpdyProtocolException() {
    }

    static SpdyProtocolException newStatic(String str) {
        return PlatformDependent.javaVersion() >= 7 ? new SpdyProtocolException(str, true) : new SpdyProtocolException(str);
    }

    public SpdyProtocolException(String str, Throwable th) {
        super(str, th);
    }

    public SpdyProtocolException(String str) {
        super(str);
    }

    public SpdyProtocolException(Throwable th) {
        super(th);
    }

    @SuppressJava6Requirement(reason = "uses Java 7+ Exception.<init>(String, Throwable, boolean, boolean) but is guarded by version checks")
    private SpdyProtocolException(String str, boolean z10) {
        super(str, null, false, true);
    }
}
