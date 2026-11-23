package tv.haima.ijk.media.player.misc;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public interface IMediaDataSource {
    void close() throws IOException;

    long getSize() throws IOException;

    int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException;
}
