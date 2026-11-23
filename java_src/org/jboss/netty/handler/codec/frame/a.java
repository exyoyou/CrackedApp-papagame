package org.jboss.netty.handler.codec.frame;

import java.net.SocketAddress;
import java.util.Iterator;
import org.jboss.netty.buffer.e;
import org.jboss.netty.buffer.h;
import org.jboss.netty.buffer.i;
import org.jboss.netty.channel.ChannelHandler;
import org.jboss.netty.channel.e0;
import org.jboss.netty.channel.h0;
import org.jboss.netty.channel.i0;
import org.jboss.netty.channel.m;
import org.jboss.netty.channel.m0;
import org.jboss.netty.channel.n;
import org.jboss.netty.channel.q;
import org.jboss.netty.channel.s;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a extends m0 implements h0 {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS = 1024;
    private int copyThreshold;
    private volatile m ctx;
    protected e cumulation;
    private int maxCumulationBufferComponents;
    private boolean unfold;

    protected a() {
        this(false);
    }

    private void a(m mVar, org.jboss.netty.channel.e eVar, e eVar2, SocketAddress socketAddress) throws Exception {
        while (eVar2.z0()) {
            int i10 = eVar2.readerIndex();
            Object objDecode = decode(mVar, eVar, eVar2);
            if (objDecode == null) {
                if (i10 == eVar2.readerIndex()) {
                    return;
                }
            } else {
                if (i10 == eVar2.readerIndex()) {
                    throw new IllegalStateException("decode() method must read at least one byte if it returned a frame (caused by: " + getClass() + ')');
                }
                unfoldAndFireMessageReceived(mVar, socketAddress, objDecode);
            }
        }
    }

    protected int actualReadableBytes() {
        return internalBuffer().readableBytes();
    }

    @Override // org.jboss.netty.channel.h0
    public void afterAdd(m mVar) throws Exception {
    }

    @Override // org.jboss.netty.channel.h0
    public void afterRemove(m mVar) throws Exception {
    }

    protected e appendToCumulation(e eVar) {
        e eVarCopy = this.cumulation;
        if (eVarCopy instanceof i) {
            i iVar = (i) eVarCopy;
            if (iVar.i() >= this.maxCumulationBufferComponents) {
                eVarCopy = iVar.copy();
            }
        }
        e eVarJ0 = h.j0(eVarCopy, eVar);
        this.cumulation = eVarJ0;
        return eVarJ0;
    }

    @Override // org.jboss.netty.channel.h0
    public void beforeAdd(m mVar) throws Exception {
        this.ctx = mVar;
    }

    @Override // org.jboss.netty.channel.h0
    public void beforeRemove(m mVar) throws Exception {
    }

    @Override // org.jboss.netty.channel.m0
    public void channelClosed(m mVar, q qVar) throws Exception {
        cleanup(mVar, qVar);
    }

    @Override // org.jboss.netty.channel.m0
    public void channelDisconnected(m mVar, q qVar) throws Exception {
        cleanup(mVar, qVar);
    }

    protected void cleanup(m mVar, q qVar) throws Exception {
        try {
            e eVar = this.cumulation;
            if (eVar == null) {
                return;
            }
            this.cumulation = null;
            if (eVar.z0()) {
                a(mVar, mVar.getChannel(), eVar, null);
            }
            Object objDecodeLast = decodeLast(mVar, mVar.getChannel(), eVar);
            if (objDecodeLast != null) {
                unfoldAndFireMessageReceived(mVar, null, objDecodeLast);
            }
        } finally {
            mVar.a(qVar);
        }
    }

    protected abstract Object decode(m mVar, org.jboss.netty.channel.e eVar, e eVar2) throws Exception;

    protected Object decodeLast(m mVar, org.jboss.netty.channel.e eVar, e eVar2) throws Exception {
        return decode(mVar, eVar, eVar2);
    }

    @Override // org.jboss.netty.channel.m0
    public void exceptionCaught(m mVar, e0 e0Var) throws Exception {
        mVar.a(e0Var);
    }

    protected e extractFrame(e eVar, int i10, int i11) {
        e eVarB = eVar.factory().b(i11);
        eVarB.K0(eVar, i10, i11);
        return eVarB;
    }

    public final int getMaxCumulationBufferCapacity() {
        return this.copyThreshold;
    }

    public final int getMaxCumulationBufferComponents() {
        return this.maxCumulationBufferComponents;
    }

    protected e internalBuffer() {
        e eVar = this.cumulation;
        return eVar == null ? h.f95466c : eVar;
    }

    public final boolean isUnfold() {
        return this.unfold;
    }

    @Override // org.jboss.netty.channel.m0
    public void messageReceived(m mVar, i0 i0Var) throws Exception {
        Object message = i0Var.getMessage();
        if (!(message instanceof e)) {
            mVar.a(i0Var);
            return;
        }
        e eVar = (e) message;
        if (eVar.z0()) {
            if (this.cumulation == null) {
                try {
                    a(mVar, i0Var.getChannel(), eVar, i0Var.getRemoteAddress());
                } finally {
                    updateCumulation(mVar, eVar);
                }
            } else {
                e eVarAppendToCumulation = appendToCumulation(eVar);
                try {
                    a(mVar, i0Var.getChannel(), eVarAppendToCumulation, i0Var.getRemoteAddress());
                } finally {
                    updateCumulation(mVar, eVarAppendToCumulation);
                }
            }
        }
    }

    protected e newCumulationBuffer(m mVar, int i10) {
        return mVar.getChannel().getConfig().d().b(Math.max(i10, 256));
    }

    public void replace(String str, ChannelHandler channelHandler) {
        if (this.ctx == null) {
            throw new IllegalStateException("Replace cann only be called once the FrameDecoder is added to the ChannelPipeline");
        }
        n pipeline = this.ctx.getPipeline();
        pipeline.d(this.ctx.getName(), str, channelHandler);
        try {
            if (this.cumulation != null) {
                s.J(this.ctx, this.cumulation.N(actualReadableBytes()));
            }
        } finally {
            pipeline.c(this);
        }
    }

    public final void setMaxCumulationBufferCapacity(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("maxCumulationBufferCapacity must be >= 0");
        }
        if (this.ctx != null) {
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
        this.copyThreshold = i10;
    }

    public final void setMaxCumulationBufferComponents(int i10) {
        if (i10 >= 2) {
            if (this.ctx != null) {
                throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
            }
            this.maxCumulationBufferComponents = i10;
        } else {
            throw new IllegalArgumentException("maxCumulationBufferComponents: " + i10 + " (expected: >= 2)");
        }
    }

    public final void setUnfold(boolean z10) {
        if (this.ctx != null) {
            throw new IllegalStateException("decoder properties cannot be changed once the decoder is added to a pipeline.");
        }
        this.unfold = z10;
    }

    protected final void unfoldAndFireMessageReceived(m mVar, SocketAddress socketAddress, Object obj) {
        if (!this.unfold) {
            s.K(mVar, obj, socketAddress);
            return;
        }
        if (obj instanceof Object[]) {
            for (Object obj2 : (Object[]) obj) {
                s.K(mVar, obj2, socketAddress);
            }
            return;
        }
        if (!(obj instanceof Iterable)) {
            s.K(mVar, obj, socketAddress);
            return;
        }
        Iterator it2 = ((Iterable) obj).iterator();
        while (it2.hasNext()) {
            s.K(mVar, it2.next(), socketAddress);
        }
    }

    protected e updateCumulation(m mVar, e eVar) {
        int i10 = eVar.readableBytes();
        if (i10 <= 0) {
            this.cumulation = null;
            return null;
        }
        int iCapacity = eVar.capacity();
        if (i10 < iCapacity && iCapacity > this.copyThreshold) {
            e eVarNewCumulationBuffer = newCumulationBuffer(mVar, eVar.readableBytes());
            this.cumulation = eVarNewCumulationBuffer;
            eVarNewCumulationBuffer.E0(eVar);
            return eVarNewCumulationBuffer;
        }
        if (eVar.readerIndex() == 0) {
            this.cumulation = eVar;
            return eVar;
        }
        e eVarY0 = eVar.y0();
        this.cumulation = eVarY0;
        return eVarY0;
    }

    protected a(boolean z10) {
        this.maxCumulationBufferComponents = 1024;
        this.unfold = z10;
    }
}
