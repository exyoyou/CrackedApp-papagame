package io.netty.channel.local;

import com.facebook.infer.annotation.ThreadConfined;
import io.netty.channel.Channel;
import io.netty.util.internal.ObjectUtil;
import java.net.SocketAddress;

/* JADX INFO: loaded from: classes.dex */
public final class LocalAddress extends SocketAddress implements Comparable<LocalAddress> {
    public static final LocalAddress ANY = new LocalAddress(ThreadConfined.ANY);
    private static final long serialVersionUID = 4644331421130916435L;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final String f91619id;
    private final String strVal;

    LocalAddress(Channel channel) {
        StringBuilder sb2 = new StringBuilder(16);
        sb2.append("local:E");
        sb2.append(Long.toHexString((((long) channel.hashCode()) & 4294967295L) | 4294967296L));
        sb2.setCharAt(7, ':');
        this.f91619id = sb2.substring(6);
        this.strVal = sb2.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof LocalAddress) {
            return this.f91619id.equals(((LocalAddress) obj).f91619id);
        }
        return false;
    }

    public int hashCode() {
        return this.f91619id.hashCode();
    }

    public String id() {
        return this.f91619id;
    }

    public String toString() {
        return this.strVal;
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalAddress localAddress) {
        return this.f91619id.compareTo(localAddress.f91619id);
    }

    public LocalAddress(String str) {
        ObjectUtil.checkNotNull(str, "id");
        String lowerCase = str.trim().toLowerCase();
        if (!lowerCase.isEmpty()) {
            this.f91619id = lowerCase;
            this.strVal = "local:" + lowerCase;
            return;
        }
        throw new IllegalArgumentException("empty id");
    }
}
