package com.kwad.framework.filedownloader.message;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    public static MessageSnapshot a(int i10, File file, boolean z10) {
        long length = file.length();
        if (length > 2147483647L) {
            return z10 ? new d.a(i10, true, length) : new d.b(i10, true, length);
        }
        return z10 ? new h.a(i10, true, (int) length) : new h.b(i10, true, (int) length);
    }

    public static MessageSnapshot e(com.kwad.framework.filedownloader.a aVar) {
        return aVar.AN() ? new d.e(aVar.getId(), aVar.AE(), aVar.AG()) : new h.e(aVar.getId(), aVar.getSmallFileSoFarBytes(), aVar.getSmallFileTotalBytes());
    }

    public static MessageSnapshot t(MessageSnapshot messageSnapshot) {
        if (messageSnapshot.AH() == -3) {
            return new a.C0910a(messageSnapshot);
        }
        throw new IllegalStateException(com.kwad.framework.filedownloader.f.f.c("take block completed snapshot, must has already be completed. %d %d", Integer.valueOf(messageSnapshot.getId()), Byte.valueOf(messageSnapshot.AH())));
    }

    public static MessageSnapshot a(int i10, long j10, long j11, boolean z10) {
        if (j11 > 2147483647L) {
            if (z10) {
                return new d.i(i10, j10, j11);
            }
            return new d.j(i10, j10, j11);
        }
        if (z10) {
            return new h.i(i10, (int) j10, (int) j11);
        }
        return new h.j(i10, (int) j10, (int) j11);
    }

    public static MessageSnapshot a(int i10, long j10, Throwable th) {
        if (j10 > 2147483647L) {
            return new d.C0911d(i10, j10, th);
        }
        return new h.d(i10, (int) j10, th);
    }

    public static MessageSnapshot a(byte b10, com.kwad.framework.filedownloader.d.c cVar, com.kwad.framework.filedownloader.download.d.a aVar) {
        MessageSnapshot dVar;
        IllegalStateException illegalStateException;
        int id2 = cVar.getId();
        if (b10 == -4) {
            throw new IllegalStateException(com.kwad.framework.filedownloader.f.f.c("please use #catchWarn instead %d", Integer.valueOf(id2)));
        }
        if (b10 == -3) {
            if (cVar.AN()) {
                return new d.b(id2, false, cVar.getTotal());
            }
            return new h.b(id2, false, (int) cVar.getTotal());
        }
        if (b10 != -1) {
            if (b10 == 1) {
                if (cVar.AN()) {
                    return new d.f(id2, cVar.CX(), cVar.getTotal());
                }
                return new h.f(id2, (int) cVar.CX(), (int) cVar.getTotal());
            }
            if (b10 == 2) {
                String filename = cVar.AB() ? cVar.getFilename() : null;
                if (cVar.AN()) {
                    return new d.c(id2, aVar.CC(), cVar.getTotal(), cVar.CY(), filename);
                }
                return new h.c(id2, aVar.CC(), (int) cVar.getTotal(), cVar.CY(), filename);
            }
            if (b10 == 3) {
                if (cVar.AN()) {
                    return new d.g(id2, cVar.CX());
                }
                return new h.g(id2, (int) cVar.CX());
            }
            if (b10 != 5) {
                if (b10 != 6) {
                    String strC = com.kwad.framework.filedownloader.f.f.c("it can't takes a snapshot for the task(%s) when its status is %d,", cVar, Byte.valueOf(b10));
                    com.kwad.framework.filedownloader.f.d.d(f.class, "it can't takes a snapshot for the task(%s) when its status is %d,", cVar, Byte.valueOf(b10));
                    if (aVar.getException() != null) {
                        illegalStateException = new IllegalStateException(strC, aVar.getException());
                    } else {
                        illegalStateException = new IllegalStateException(strC);
                    }
                    if (cVar.AN()) {
                        return new d.C0911d(id2, cVar.CX(), illegalStateException);
                    }
                    return new h.d(id2, (int) cVar.CX(), illegalStateException);
                }
                return new MessageSnapshot.b(id2);
            }
            if (cVar.AN()) {
                dVar = new d.h(id2, cVar.CX(), aVar.getException(), aVar.AL());
            } else {
                dVar = new h.C0912h(id2, (int) cVar.CX(), aVar.getException(), aVar.AL());
            }
        } else if (cVar.AN()) {
            dVar = new d.C0911d(id2, cVar.CX(), aVar.getException());
        } else {
            dVar = new h.d(id2, (int) cVar.CX(), aVar.getException());
        }
        return dVar;
    }
}
