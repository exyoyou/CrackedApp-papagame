package io.netty.handler.codec.http2;

import io.netty.channel.ChannelId;

/* JADX INFO: loaded from: classes.dex */
final class Http2StreamChannelId implements ChannelId {
    private static final long serialVersionUID = -6642338822166867585L;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f91638id;
    private final ChannelId parentId;

    Http2StreamChannelId(ChannelId channelId, int i10) {
        this.parentId = channelId;
        this.f91638id = i10;
    }

    @Override // io.netty.channel.ChannelId
    public String asLongText() {
        return this.parentId.asLongText() + '/' + this.f91638id;
    }

    @Override // io.netty.channel.ChannelId
    public String asShortText() {
        return this.parentId.asShortText() + '/' + this.f91638id;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Http2StreamChannelId)) {
            return false;
        }
        Http2StreamChannelId http2StreamChannelId = (Http2StreamChannelId) obj;
        return this.f91638id == http2StreamChannelId.f91638id && this.parentId.equals(http2StreamChannelId.parentId);
    }

    public int hashCode() {
        return (this.f91638id * 31) + this.parentId.hashCode();
    }

    public String toString() {
        return asShortText();
    }

    @Override // java.lang.Comparable
    public int compareTo(ChannelId channelId) {
        if (!(channelId instanceof Http2StreamChannelId)) {
            return this.parentId.compareTo(channelId);
        }
        Http2StreamChannelId http2StreamChannelId = (Http2StreamChannelId) channelId;
        int iCompareTo = this.parentId.compareTo(http2StreamChannelId.parentId);
        return iCompareTo == 0 ? this.f91638id - http2StreamChannelId.f91638id : iCompareTo;
    }
}
