package com.kwad.framework.filedownloader.a;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements com.kwad.framework.filedownloader.f.c.a {
    @Override // com.kwad.framework.filedownloader.f.c.a
    public final int ab(long j10) {
        if (j10 < 1048576) {
            return 1;
        }
        if (j10 < 5242880) {
            return 2;
        }
        if (j10 < 52428800) {
            return 3;
        }
        return j10 < 104857600 ? 4 : 5;
    }
}
