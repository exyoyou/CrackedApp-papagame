package org.jboss.netty.channel;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;

/* JADX INFO: loaded from: classes10.dex */
public class c0 implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f95527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f95528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ChannelState f95529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f95530d;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95531a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f95531a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95531a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95531a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95531a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public c0(e eVar, j jVar, ChannelState channelState, Object obj) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        if (jVar == null) {
            throw new NullPointerException("future");
        }
        if (channelState == null) {
            throw new NullPointerException(NoticeTopAnimActivityDialog_.STATE_EXTRA);
        }
        this.f95527a = eVar;
        this.f95528b = jVar;
        this.f95529c = channelState;
        this.f95530d = obj;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return this.f95528b;
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f95527a;
    }

    @Override // org.jboss.netty.channel.q
    public ChannelState getState() {
        return this.f95529c;
    }

    @Override // org.jboss.netty.channel.q
    public Object getValue() {
        return this.f95530d;
    }

    public String toString() {
        String string = getChannel().toString();
        StringBuilder sb2 = new StringBuilder(string.length() + 64);
        sb2.append(string);
        int i10 = a.f95531a[getState().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        sb2.append(' ');
                        sb2.append(getState().name());
                        sb2.append(": ");
                        sb2.append(getValue());
                    } else {
                        sb2.append(" CHANGE_INTEREST: ");
                        sb2.append(getValue());
                    }
                } else if (getValue() != null) {
                    sb2.append(" CONNECT: ");
                    sb2.append(getValue());
                } else {
                    sb2.append(" DISCONNECT");
                }
            } else if (getValue() != null) {
                sb2.append(" BIND: ");
                sb2.append(getValue());
            } else {
                sb2.append(" UNBIND");
            }
        } else if (Boolean.TRUE.equals(getValue())) {
            sb2.append(" OPEN");
        } else {
            sb2.append(" CLOSE");
        }
        return sb2.toString();
    }
}
