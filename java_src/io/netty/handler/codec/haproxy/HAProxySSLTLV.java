package io.netty.handler.codec.haproxy;

import io.netty.buffer.ByteBuf;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HAProxySSLTLV extends HAProxyTLV {
    private final byte clientBitField;
    private final List<HAProxyTLV> tlvs;
    private final int verify;

    HAProxySSLTLV(int i10, byte b10, List<HAProxyTLV> list, ByteBuf byteBuf) {
        super(HAProxyTLV.Type.PP2_TYPE_SSL, (byte) 32, byteBuf);
        this.verify = i10;
        this.tlvs = Collections.unmodifiableList(list);
        this.clientBitField = b10;
    }

    public List<HAProxyTLV> encapsulatedTLVs() {
        return this.tlvs;
    }

    public boolean isPP2ClientCertConn() {
        return (this.clientBitField & 2) != 0;
    }

    public boolean isPP2ClientCertSess() {
        return (this.clientBitField & 4) != 0;
    }

    public boolean isPP2ClientSSL() {
        return (this.clientBitField & 1) != 0;
    }

    public int verify() {
        return this.verify;
    }
}
