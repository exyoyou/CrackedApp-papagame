package tv.haima.ijk.media.player.misc;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public interface IAndroidIO {
    int close() throws IOException;

    int open(String str) throws IOException;

    int read(byte[] bArr, int i10) throws IOException;

    long seek(long j10, int i10) throws IOException;
}
