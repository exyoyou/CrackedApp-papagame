package io.netty.handler.codec.stomp;

/* JADX INFO: loaded from: classes.dex */
public interface StompHeadersSubframe extends StompSubframe {
    StompCommand command();

    StompHeaders headers();
}
