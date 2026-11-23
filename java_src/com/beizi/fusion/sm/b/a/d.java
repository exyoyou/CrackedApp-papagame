package com.beizi.fusion.sm.b.a;

import io.netty.handler.codec.rtsp.RtspHeaders;

/* JADX INFO: loaded from: classes6.dex */
class d implements com.beizi.fusion.sm.b.c {
    d() {
    }

    @Override // com.beizi.fusion.sm.b.c
    public boolean a() {
        return false;
    }

    @Override // com.beizi.fusion.sm.b.c
    public void a(com.beizi.fusion.sm.b.b bVar) {
        if (bVar == null) {
            return;
        }
        bVar.a(new com.beizi.fusion.sm.b.d(RtspHeaders.Names.UNSUPPORTED));
    }
}
