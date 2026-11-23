package org.apache.http.config;

import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class SocketConfig implements Cloneable {
    public static final SocketConfig DEFAULT = new Builder().build();
    private final boolean soKeepAlive;
    private final int soLinger;
    private final boolean soReuseAddress;
    private final int soTimeout;
    private final boolean tcpNoDelay;

    public static class Builder {
        private boolean soKeepAlive;
        private boolean soReuseAddress;
        private int soTimeout;
        private int soLinger = -1;
        private boolean tcpNoDelay = true;

        Builder() {
        }

        public SocketConfig build() {
            return new SocketConfig(this.soTimeout, this.soReuseAddress, this.soLinger, this.soKeepAlive, this.tcpNoDelay);
        }

        public Builder setSoKeepAlive(boolean z10) {
            this.soKeepAlive = z10;
            return this;
        }

        public Builder setSoLinger(int i10) {
            this.soLinger = i10;
            return this;
        }

        public Builder setSoReuseAddress(boolean z10) {
            this.soReuseAddress = z10;
            return this;
        }

        public Builder setSoTimeout(int i10) {
            this.soTimeout = i10;
            return this;
        }

        public Builder setTcpNoDelay(boolean z10) {
            this.tcpNoDelay = z10;
            return this;
        }
    }

    SocketConfig(int i10, boolean z10, int i11, boolean z11, boolean z12) {
        this.soTimeout = i10;
        this.soReuseAddress = z10;
        this.soLinger = i11;
        this.soKeepAlive = z11;
        this.tcpNoDelay = z12;
    }

    public static Builder copy(SocketConfig socketConfig) {
        Args.notNull(socketConfig, "Socket config");
        return new Builder().setSoTimeout(socketConfig.getSoTimeout()).setSoReuseAddress(socketConfig.isSoReuseAddress()).setSoLinger(socketConfig.getSoLinger()).setSoKeepAlive(socketConfig.isSoKeepAlive()).setTcpNoDelay(socketConfig.isTcpNoDelay());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getSoLinger() {
        return this.soLinger;
    }

    public int getSoTimeout() {
        return this.soTimeout;
    }

    public boolean isSoKeepAlive() {
        return this.soKeepAlive;
    }

    public boolean isSoReuseAddress() {
        return this.soReuseAddress;
    }

    public boolean isTcpNoDelay() {
        return this.tcpNoDelay;
    }

    public String toString() {
        return "[soTimeout=" + this.soTimeout + ", soReuseAddress=" + this.soReuseAddress + ", soLinger=" + this.soLinger + ", soKeepAlive=" + this.soKeepAlive + ", tcpNoDelay=" + this.tcpNoDelay + "]";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SocketConfig clone() throws CloneNotSupportedException {
        return (SocketConfig) super.clone();
    }
}
