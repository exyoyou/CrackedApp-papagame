package com.coremedia.iso;

import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes9.dex */
public final class j {
    public static void a(long j10, ByteBuffer byteBuffer, int i10) {
        if (i10 == 1) {
            i.m(byteBuffer, (int) (j10 & 255));
            return;
        }
        if (i10 == 2) {
            i.f(byteBuffer, (int) (j10 & WebSocketProtocol.PAYLOAD_SHORT_MAX));
            return;
        }
        if (i10 == 3) {
            i.h(byteBuffer, (int) (j10 & 16777215));
            return;
        }
        if (i10 == 4) {
            i.i(byteBuffer, j10);
        } else {
            if (i10 == 8) {
                i.l(byteBuffer, j10);
                return;
            }
            throw new RuntimeException("I don't know how to read " + i10 + " bytes");
        }
    }
}
