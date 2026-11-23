package io.netty.util.internal;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
interface Cleaner {
    void freeDirectBuffer(ByteBuffer byteBuffer);
}
