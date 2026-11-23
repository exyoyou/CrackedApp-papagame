package org.jboss.netty.channel;

/* JADX INFO: loaded from: classes10.dex */
public class l0 implements r, g {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95540a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f95540a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95540a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95540a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95540a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public void bindRequested(m mVar, q qVar) throws Exception {
        mVar.b(qVar);
    }

    public void channelBound(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelClosed(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelConnected(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelDisconnected(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelInterestChanged(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelOpen(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void channelUnbound(m mVar, q qVar) throws Exception {
        mVar.a(qVar);
    }

    public void childChannelClosed(m mVar, t tVar) throws Exception {
        mVar.a(tVar);
    }

    public void childChannelOpen(m mVar, t tVar) throws Exception {
        mVar.a(tVar);
    }

    public void closeRequested(m mVar, q qVar) throws Exception {
        mVar.b(qVar);
    }

    public void connectRequested(m mVar, q qVar) throws Exception {
        mVar.b(qVar);
    }

    public void disconnectRequested(m mVar, q qVar) throws Exception {
        mVar.b(qVar);
    }

    public void exceptionCaught(m mVar, e0 e0Var) throws Exception {
        mVar.getPipeline().getLast();
        mVar.a(e0Var);
    }

    @Override // org.jboss.netty.channel.g
    public void handleDownstream(m mVar, h hVar) throws Exception {
        if (hVar instanceof i0) {
            writeRequested(mVar, (i0) hVar);
            return;
        }
        if (!(hVar instanceof q)) {
            mVar.b(hVar);
            return;
        }
        q qVar = (q) hVar;
        int i10 = a.f95540a[qVar.getState().ordinal()];
        if (i10 == 1) {
            if (Boolean.TRUE.equals(qVar.getValue())) {
                return;
            }
            closeRequested(mVar, qVar);
            return;
        }
        if (i10 == 2) {
            if (qVar.getValue() != null) {
                bindRequested(mVar, qVar);
                return;
            } else {
                unbindRequested(mVar, qVar);
                return;
            }
        }
        if (i10 != 3) {
            if (i10 != 4) {
                mVar.b(hVar);
                return;
            } else {
                setInterestOpsRequested(mVar, qVar);
                return;
            }
        }
        if (qVar.getValue() != null) {
            connectRequested(mVar, qVar);
        } else {
            disconnectRequested(mVar, qVar);
        }
    }

    @Override // org.jboss.netty.channel.r
    public void handleUpstream(m mVar, h hVar) throws Exception {
        if (hVar instanceof i0) {
            messageReceived(mVar, (i0) hVar);
            return;
        }
        if (hVar instanceof q0) {
            writeComplete(mVar, (q0) hVar);
            return;
        }
        if (hVar instanceof t) {
            t tVar = (t) hVar;
            if (tVar.b().isOpen()) {
                childChannelOpen(mVar, tVar);
                return;
            } else {
                childChannelClosed(mVar, tVar);
                return;
            }
        }
        if (!(hVar instanceof q)) {
            if (hVar instanceof e0) {
                exceptionCaught(mVar, (e0) hVar);
                return;
            } else {
                mVar.a(hVar);
                return;
            }
        }
        q qVar = (q) hVar;
        int i10 = a.f95540a[qVar.getState().ordinal()];
        if (i10 == 1) {
            if (Boolean.TRUE.equals(qVar.getValue())) {
                channelOpen(mVar, qVar);
                return;
            } else {
                channelClosed(mVar, qVar);
                return;
            }
        }
        if (i10 == 2) {
            if (qVar.getValue() != null) {
                channelBound(mVar, qVar);
                return;
            } else {
                channelUnbound(mVar, qVar);
                return;
            }
        }
        if (i10 != 3) {
            if (i10 != 4) {
                mVar.a(hVar);
                return;
            } else {
                channelInterestChanged(mVar, qVar);
                return;
            }
        }
        if (qVar.getValue() != null) {
            channelConnected(mVar, qVar);
        } else {
            channelDisconnected(mVar, qVar);
        }
    }

    public void messageReceived(m mVar, i0 i0Var) throws Exception {
        mVar.a(i0Var);
    }

    public void setInterestOpsRequested(m mVar, q qVar) throws Exception {
        mVar.b(qVar);
    }

    public void unbindRequested(m mVar, q qVar) throws Exception {
        mVar.b(qVar);
    }

    public void writeComplete(m mVar, q0 q0Var) throws Exception {
        mVar.a(q0Var);
    }

    public void writeRequested(m mVar, i0 i0Var) throws Exception {
        mVar.b(i0Var);
    }
}
