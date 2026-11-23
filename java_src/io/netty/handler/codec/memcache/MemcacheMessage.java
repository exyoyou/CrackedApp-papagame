package io.netty.handler.codec.memcache;

import io.netty.util.ReferenceCounted;

/* JADX INFO: loaded from: classes.dex */
public interface MemcacheMessage extends MemcacheObject, ReferenceCounted {
    MemcacheMessage retain();

    MemcacheMessage retain(int i10);

    MemcacheMessage touch();

    MemcacheMessage touch(Object obj);
}
