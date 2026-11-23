package org.jboss.netty.channel.socket.nio;

import java.net.Socket;
import java.util.Map;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.j0;
import org.jboss.netty.channel.k0;

/* JADX INFO: loaded from: classes10.dex */
class i extends ed.c implements s {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final k0 f95603i = new org.jboss.netty.channel.d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile int f95604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile int f95605e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile j0 f95606f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile k0 f95607g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile int f95608h;

    i(Socket socket) {
        super(socket);
        this.f95604d = 65536;
        this.f95605e = 32768;
        this.f95607g = f95603i;
        this.f95608h = 16;
    }

    private void j(int i10) {
        if (i10 >= 0) {
            this.f95604d = i10;
            return;
        }
        throw new IllegalArgumentException("writeBufferHighWaterMark: " + i10);
    }

    private void k(int i10) {
        if (i10 >= 0) {
            this.f95605e = i10;
            return;
        }
        throw new IllegalArgumentException("writeBufferLowWaterMark: " + i10);
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public k0 b() {
        return this.f95607g;
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public j0 c() {
        j0 j0Var = this.f95606f;
        if (j0Var != null) {
            return j0Var;
        }
        try {
            j0 j0VarA = b().a();
            this.f95606f = j0VarA;
            return j0VarA;
        } catch (Exception e10) {
            throw new ChannelException("Failed to create a new " + j0.class.getSimpleName() + external.org.apache.commons.lang3.d.f90941a, e10);
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public void e(j0 j0Var) {
        if (j0Var == null) {
            throw new NullPointerException("predictor");
        }
        this.f95606f = j0Var;
    }

    @Override // org.jboss.netty.channel.socket.nio.s
    public void f(k0 k0Var) {
        if (k0Var == null) {
            throw new NullPointerException("predictorFactory");
        }
        this.f95607g = k0Var;
    }

    @Override // ed.c, org.jboss.netty.channel.v, org.jboss.netty.channel.f
    public boolean g(String str, Object obj) {
        if (super.g(str, obj)) {
            return true;
        }
        if ("writeBufferHighWaterMark".equals(str)) {
            j(org.jboss.netty.util.internal.b.b(obj));
        } else if ("writeBufferLowWaterMark".equals(str)) {
            k(org.jboss.netty.util.internal.b.b(obj));
        } else if ("writeSpinCount".equals(str)) {
            setWriteSpinCount(org.jboss.netty.util.internal.b.b(obj));
        } else if ("receiveBufferSizePredictorFactory".equals(str)) {
            f((k0) obj);
        } else {
            if (!"receiveBufferSizePredictor".equals(str)) {
                return false;
            }
            e((j0) obj);
        }
        return true;
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public int getWriteBufferHighWaterMark() {
        return this.f95604d;
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public int getWriteBufferLowWaterMark() {
        return this.f95605e;
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public int getWriteSpinCount() {
        return this.f95608h;
    }

    @Override // org.jboss.netty.channel.v, org.jboss.netty.channel.f
    public void setOptions(Map<String, Object> map) {
        super.setOptions(map);
        if (getWriteBufferHighWaterMark() < getWriteBufferLowWaterMark()) {
            k(getWriteBufferHighWaterMark() >>> 1);
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public void setWriteBufferHighWaterMark(int i10) {
        if (i10 >= getWriteBufferLowWaterMark()) {
            j(i10);
            return;
        }
        throw new IllegalArgumentException("writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark (" + getWriteBufferLowWaterMark() + "): " + i10);
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public void setWriteBufferLowWaterMark(int i10) {
        if (i10 <= getWriteBufferHighWaterMark()) {
            k(i10);
            return;
        }
        throw new IllegalArgumentException("writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark (" + getWriteBufferHighWaterMark() + "): " + i10);
    }

    @Override // org.jboss.netty.channel.socket.nio.j
    public void setWriteSpinCount(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("writeSpinCount must be a positive integer.");
        }
        this.f95608h = i10;
    }
}
