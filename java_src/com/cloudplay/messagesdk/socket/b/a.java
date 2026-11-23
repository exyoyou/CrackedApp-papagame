package com.cloudplay.messagesdk.socket.b;

import com.cloudplay.messagesdk.socket.b.g.j;
import com.cloudplay.messagesdk.socket.b.g.l;
import com.cloudplay.messagesdk.socket.b.g.o;
import com.cloudplay.messagesdk.socket.websocket.exceptions.ParseFailed;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f24128a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.cloudplay.messagesdk.socket.b.h.b f24129b;

    public a(com.cloudplay.messagesdk.socket.b.h.b bVar) {
        this.f24129b = bVar;
    }

    private byte[] a(String str) throws ParseFailed {
        try {
            return a(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            throw new ParseFailed("payload is an invalid utf-8 string");
        }
    }

    private byte[] a(byte[] bArr) throws ParseFailed {
        if (bArr.length <= this.f24129b.f()) {
            return this.f24128a.d(bArr);
        }
        throw new ParseFailed("message payload exceeds payload limit");
    }

    public byte[] a(com.cloudplay.messagesdk.socket.b.g.g gVar) throws ParseFailed {
        if (gVar instanceof o) {
            return a(((o) gVar).f24206a);
        }
        if (gVar instanceof l) {
            return a(((l) gVar).f24203a);
        }
        if (gVar instanceof com.cloudplay.messagesdk.socket.b.g.a) {
            com.cloudplay.messagesdk.socket.b.g.a aVar = (com.cloudplay.messagesdk.socket.b.g.a) gVar;
            if (aVar.f24187a.length <= this.f24129b.f()) {
                return this.f24128a.c(aVar.f24187a);
            }
            throw new ParseFailed("message payload exceeds payload limit");
        }
        if (gVar instanceof com.cloudplay.messagesdk.socket.b.g.h) {
            return this.f24128a.a(((com.cloudplay.messagesdk.socket.b.g.h) gVar).f24200a);
        }
        if (gVar instanceof j) {
            return this.f24128a.b(((j) gVar).f24202a);
        }
        if (gVar instanceof com.cloudplay.messagesdk.socket.b.g.d) {
            com.cloudplay.messagesdk.socket.b.g.d dVar = (com.cloudplay.messagesdk.socket.b.g.d) gVar;
            return this.f24128a.a(dVar.f24195a, dVar.f24196b);
        }
        if (gVar instanceof com.cloudplay.messagesdk.socket.b.g.c) {
            return c.a((com.cloudplay.messagesdk.socket.b.g.c) gVar);
        }
        throw new ParseFailed("unknown message received by WebSocketWriter");
    }
}
