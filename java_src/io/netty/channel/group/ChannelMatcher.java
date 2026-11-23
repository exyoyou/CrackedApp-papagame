package io.netty.channel.group;

import io.netty.channel.Channel;

/* JADX INFO: loaded from: classes.dex */
public interface ChannelMatcher {
    boolean matches(Channel channel);
}
