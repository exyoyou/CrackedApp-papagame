package org.jboss.netty.channel;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public interface n {
    void a(h hVar);

    void b(h hVar);

    void c(ChannelHandler channelHandler);

    void d(String str, String str2, ChannelHandler channelHandler);

    void e(ChannelHandler channelHandler, String str, ChannelHandler channelHandler2);

    j execute(Runnable runnable);

    p f();

    ChannelHandler g(String str, String str2, ChannelHandler channelHandler);

    <T extends ChannelHandler> T get(Class<T> cls);

    ChannelHandler get(String str);

    e getChannel();

    m getContext(Class<? extends ChannelHandler> cls);

    m getContext(String str);

    m getContext(ChannelHandler channelHandler);

    ChannelHandler getFirst();

    ChannelHandler getLast();

    List<String> getNames();

    boolean h();

    void i(String str, ChannelHandler channelHandler);

    void j(String str, String str2, ChannelHandler channelHandler);

    void k(e eVar, p pVar);

    void l(String str, ChannelHandler channelHandler);

    <T extends ChannelHandler> T m(Class<T> cls, String str, ChannelHandler channelHandler);

    <T extends ChannelHandler> T remove(Class<T> cls);

    ChannelHandler remove(String str);

    ChannelHandler removeFirst();

    ChannelHandler removeLast();

    Map<String, ChannelHandler> toMap();
}
