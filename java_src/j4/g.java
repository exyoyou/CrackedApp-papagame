package j4;

import android.os.SystemClock;
import android.util.Pair;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class g implements f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f92091c = "RequestLoggingListener";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<Pair<String, String>, Long> f92092a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final Map<String, Long> f92093b = new HashMap();

    private static long l(@Nullable Long startTime, long endTime) {
        if (startTime != null) {
            return endTime - startTime.longValue();
        }
        return -1L;
    }

    private static long m() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public synchronized void a(String requestId, String producerName) {
        if (i3.a.R(2)) {
            Pair<String, String> pairCreate = Pair.create(requestId, producerName);
            long jM = m();
            this.f92092a.put(pairCreate, Long.valueOf(jM));
            i3.a.f0(f92091c, "time %d: onProducerStart: {requestId: %s, producer: %s}", Long.valueOf(jM), requestId, producerName);
        }
    }

    @Override // j4.f
    public synchronized void b(ImageRequest request, String requestId, boolean isPrefetch) {
        if (i3.a.R(2)) {
            Long lRemove = this.f92093b.remove(requestId);
            long jM = m();
            i3.a.f0(f92091c, "time %d: onRequestSuccess: {requestId: %s, elapsedTime: %d ms}", Long.valueOf(jM), requestId, Long.valueOf(l(lRemove, jM)));
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public synchronized void c(String requestId, String producerName, Throwable throwable, @Nullable Map<String, String> extraMap) {
        if (i3.a.R(5)) {
            Long lRemove = this.f92092a.remove(Pair.create(requestId, producerName));
            long jM = m();
            i3.a.r0(f92091c, throwable, "time %d: onProducerFinishWithFailure: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s, throwable: %s}", Long.valueOf(jM), requestId, producerName, Long.valueOf(l(lRemove, jM)), extraMap, throwable.toString());
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public synchronized void d(String requestId, String producerName, String producerEventName) {
        if (i3.a.R(2)) {
            i3.a.i0(f92091c, "time %d: onProducerEvent: {requestId: %s, stage: %s, eventName: %s; elapsedTime: %d ms}", Long.valueOf(m()), requestId, producerName, producerEventName, Long.valueOf(l(this.f92092a.get(Pair.create(requestId, producerName)), m())));
        }
    }

    @Override // j4.f
    public synchronized void e(ImageRequest request, Object callerContextObject, String requestId, boolean isPrefetch) {
        if (i3.a.R(2)) {
            i3.a.g0(f92091c, "time %d: onRequestSubmit: {requestId: %s, callerContext: %s, isPrefetch: %b}", Long.valueOf(m()), requestId, callerContextObject, Boolean.valueOf(isPrefetch));
            this.f92093b.put(requestId, Long.valueOf(m()));
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public boolean f(String id2) {
        return i3.a.R(2);
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public synchronized void g(String requestId, String producerName, @Nullable Map<String, String> extraMap) {
        if (i3.a.R(2)) {
            Long lRemove = this.f92092a.remove(Pair.create(requestId, producerName));
            long jM = m();
            i3.a.i0(f92091c, "time %d: onProducerFinishWithSuccess: {requestId: %s, producer: %s, elapsedTime: %d ms, extraMap: %s}", Long.valueOf(jM), requestId, producerName, Long.valueOf(l(lRemove, jM)), extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public synchronized void h(String requestId, String producerName, @Nullable Map<String, String> extraMap) {
        if (i3.a.R(2)) {
            Long lRemove = this.f92092a.remove(Pair.create(requestId, producerName));
            long jM = m();
            i3.a.i0(f92091c, "time %d: onProducerFinishWithCancellation: {requestId: %s, stage: %s, elapsedTime: %d ms, extraMap: %s}", Long.valueOf(jM), requestId, producerName, Long.valueOf(l(lRemove, jM)), extraMap);
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public synchronized void i(String requestId, String producerName, boolean successful) {
        if (i3.a.R(2)) {
            Long lRemove = this.f92092a.remove(Pair.create(requestId, producerName));
            long jM = m();
            i3.a.i0(f92091c, "time %d: onUltimateProducerReached: {requestId: %s, producer: %s, elapsedTime: %d ms, success: %b}", Long.valueOf(jM), requestId, producerName, Long.valueOf(l(lRemove, jM)), Boolean.valueOf(successful));
        }
    }

    @Override // j4.f
    public synchronized void j(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch) {
        if (i3.a.R(5)) {
            Long lRemove = this.f92093b.remove(requestId);
            long jM = m();
            i3.a.q0(f92091c, "time %d: onRequestFailure: {requestId: %s, elapsedTime: %d ms, throwable: %s}", Long.valueOf(jM), requestId, Long.valueOf(l(lRemove, jM)), throwable.toString());
        }
    }

    @Override // j4.f
    public synchronized void k(String requestId) {
        if (i3.a.R(2)) {
            Long lRemove = this.f92093b.remove(requestId);
            long jM = m();
            i3.a.f0(f92091c, "time %d: onRequestCancellation: {requestId: %s, elapsedTime: %d ms}", Long.valueOf(jM), requestId, Long.valueOf(l(lRemove, jM)));
        }
    }
}
