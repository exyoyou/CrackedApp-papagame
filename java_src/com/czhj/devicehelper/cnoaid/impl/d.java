package com.czhj.devicehelper.cnoaid.impl;

import io.netty.handler.codec.rtsp.RtspHeaders;

/* JADX INFO: loaded from: classes9.dex */
class d implements com.czhj.devicehelper.cnoaid.d {
    d() {
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (cVar == null) {
            return;
        }
        cVar.a(new com.czhj.devicehelper.cnoaid.f(RtspHeaders.Names.UNSUPPORTED));
    }

    @Override // com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        return false;
    }
}
