package com.byazt.of;

import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1217, 54})
public abstract class ve {
    public static tt c(RandomAccessFile randomAccessFile, long j10, long j11) {
        return c(randomAccessFile.getChannel(), j10, j11);
    }

    public static tt c(FileChannel fileChannel, long j10, long j11) {
        fileChannel.getClass();
        return new uj(fileChannel, j10, j11);
    }
}
