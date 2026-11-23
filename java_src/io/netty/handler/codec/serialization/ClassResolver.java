package io.netty.handler.codec.serialization;

/* JADX INFO: loaded from: classes.dex */
public interface ClassResolver {
    Class<?> resolve(String str) throws ClassNotFoundException;
}
