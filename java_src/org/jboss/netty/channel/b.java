package org.jboss.netty.channel;

/* JADX INFO: loaded from: classes10.dex */
public abstract class b implements p {
    protected b() {
    }

    @Override // org.jboss.netty.channel.p
    public void a(n nVar, h hVar, ChannelPipelineException channelPipelineException) throws Exception {
        Throwable cause = channelPipelineException.getCause();
        if (cause != null) {
            channelPipelineException = cause;
        }
        if (d(hVar, channelPipelineException)) {
            s.F(hVar.getChannel(), channelPipelineException);
        } else {
            s.D(hVar.getChannel(), channelPipelineException);
        }
    }

    @Override // org.jboss.netty.channel.p
    public j c(n nVar, Runnable runnable) {
        try {
            runnable.run();
            return s.W(nVar.getChannel());
        } catch (Throwable th) {
            return s.i(nVar.getChannel(), th);
        }
    }

    protected boolean d(h hVar, Throwable th) {
        return false;
    }
}
