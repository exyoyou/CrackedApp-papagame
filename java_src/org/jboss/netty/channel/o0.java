package org.jboss.netty.channel;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;

/* JADX INFO: loaded from: classes10.dex */
public class o0 implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f95542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ChannelState f95543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f95544c;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95545a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f95545a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95545a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95545a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95545a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public o0(e eVar, ChannelState channelState, Object obj) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        if (channelState == null) {
            throw new NullPointerException(NoticeTopAnimActivityDialog_.STATE_EXTRA);
        }
        this.f95542a = eVar;
        this.f95543b = channelState;
        this.f95544c = obj;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f95542a;
    }

    @Override // org.jboss.netty.channel.q
    public ChannelState getState() {
        return this.f95543b;
    }

    @Override // org.jboss.netty.channel.q
    public Object getValue() {
        return this.f95544c;
    }

    public String toString() {
        String string = getChannel().toString();
        StringBuilder sb2 = new StringBuilder(string.length() + 64);
        sb2.append(string);
        int i10 = a.f95545a[getState().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        sb2.append(getState().name());
                        sb2.append(": ");
                        sb2.append(getValue());
                    } else {
                        sb2.append(" INTEREST_CHANGED");
                    }
                } else if (getValue() != null) {
                    sb2.append(" CONNECTED: ");
                    sb2.append(getValue());
                } else {
                    sb2.append(" DISCONNECTED");
                }
            } else if (getValue() != null) {
                sb2.append(" BOUND: ");
                sb2.append(getValue());
            } else {
                sb2.append(" UNBOUND");
            }
        } else if (Boolean.TRUE.equals(getValue())) {
            sb2.append(" OPEN");
        } else {
            sb2.append(" CLOSED");
        }
        return sb2.toString();
    }
}
