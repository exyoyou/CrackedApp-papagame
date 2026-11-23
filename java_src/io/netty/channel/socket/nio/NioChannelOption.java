package io.netty.channel.socket.nio;

import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.util.internal.SuppressJava6Requirement;
import java.io.IOException;
import java.net.SocketOption;
import java.net.StandardSocketOptions;
import java.nio.channels.Channel;
import java.nio.channels.NetworkChannel;
import java.nio.channels.ServerSocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@SuppressJava6Requirement(reason = "Usage explicit by the user")
public final class NioChannelOption<T> extends ChannelOption<T> {
    private final SocketOption<T> option;

    private NioChannelOption(SocketOption<T> socketOption) {
        super(socketOption.name());
        this.option = socketOption;
    }

    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    static <T> T getOption(Channel channel, NioChannelOption<T> nioChannelOption) {
        NetworkChannel networkChannelA = a.a(channel);
        if (!networkChannelA.supportedOptions().contains(((NioChannelOption) nioChannelOption).option)) {
            return null;
        }
        if ((networkChannelA instanceof ServerSocketChannel) && ((NioChannelOption) nioChannelOption).option == StandardSocketOptions.IP_TOS) {
            return null;
        }
        try {
            return (T) networkChannelA.getOption(((NioChannelOption) nioChannelOption).option);
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }

    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    static ChannelOption[] getOptions(Channel channel) {
        NetworkChannel networkChannelA = a.a(channel);
        Set setSupportedOptions = networkChannelA.supportedOptions();
        int i10 = 0;
        if (!(networkChannelA instanceof ServerSocketChannel)) {
            ChannelOption[] channelOptionArr = new ChannelOption[setSupportedOptions.size()];
            Iterator it2 = setSupportedOptions.iterator();
            while (it2.hasNext()) {
                channelOptionArr[i10] = new NioChannelOption(g.a(it2.next()));
                i10++;
            }
            return channelOptionArr;
        }
        ArrayList arrayList = new ArrayList(setSupportedOptions.size());
        Iterator it3 = setSupportedOptions.iterator();
        while (it3.hasNext()) {
            SocketOption socketOptionA = g.a(it3.next());
            if (socketOptionA != StandardSocketOptions.IP_TOS) {
                arrayList.add(new NioChannelOption(socketOptionA));
            }
        }
        return (ChannelOption[]) arrayList.toArray(new ChannelOption[0]);
    }

    public static <T> ChannelOption<T> of(SocketOption<T> socketOption) {
        return new NioChannelOption(socketOption);
    }

    @SuppressJava6Requirement(reason = "Usage guarded by java version check")
    static <T> boolean setOption(Channel channel, NioChannelOption<T> nioChannelOption, T t10) {
        NetworkChannel networkChannelA = a.a(channel);
        if (!networkChannelA.supportedOptions().contains(((NioChannelOption) nioChannelOption).option)) {
            return false;
        }
        if ((networkChannelA instanceof ServerSocketChannel) && ((NioChannelOption) nioChannelOption).option == StandardSocketOptions.IP_TOS) {
            return false;
        }
        try {
            networkChannelA.setOption(((NioChannelOption) nioChannelOption).option, t10);
            return true;
        } catch (IOException e10) {
            throw new ChannelException(e10);
        }
    }
}
