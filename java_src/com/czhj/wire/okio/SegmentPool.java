package com.czhj.wire.okio;

/* JADX INFO: loaded from: classes9.dex */
final class SegmentPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final long f25999a = 65536;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static Segment f26000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static long f26001c;

    private SegmentPool() {
    }

    static Segment a() {
        synchronized (SegmentPool.class) {
            Segment segment = f26000b;
            if (segment == null) {
                return new Segment();
            }
            f26000b = segment.f25997h;
            segment.f25997h = null;
            f26001c -= 8192;
            return segment;
        }
    }

    static void a(Segment segment) {
        if (segment.f25997h != null || segment.f25998i != null) {
            throw new IllegalArgumentException();
        }
        if (segment.f25995f) {
            return;
        }
        synchronized (SegmentPool.class) {
            long j10 = f26001c;
            if (j10 + 8192 > 65536) {
                return;
            }
            f26001c = j10 + 8192;
            segment.f25997h = f26000b;
            segment.f25994e = 0;
            segment.f25993d = 0;
            f26000b = segment;
        }
    }
}
