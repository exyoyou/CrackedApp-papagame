package j4;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f92089b = "ForwardingRequestListener";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<f> f92090a;

    public d(Set<f> requestListeners) {
        this.f92090a = new ArrayList(requestListeners.size());
        for (f fVar : requestListeners) {
            if (fVar != null) {
                this.f92090a.add(fVar);
            }
        }
    }

    private void m(String message, Throwable t10) {
        i3.a.v(f92089b, message, t10);
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void a(String requestId, String producerName) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).a(requestId, producerName);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerStart", e10);
            }
        }
    }

    @Override // j4.f
    public void b(ImageRequest request, String requestId, boolean isPrefetch) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).b(request, requestId, isPrefetch);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void c(String requestId, String producerName, Throwable t10, @Nullable Map<String, String> extraMap) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).c(requestId, producerName, t10, extraMap);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithFailure", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void d(String requestId, String producerName, String producerEventName) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).d(requestId, producerName, producerEventName);
            } catch (Exception e10) {
                m("InternalListener exception in onIntermediateChunkStart", e10);
            }
        }
    }

    @Override // j4.f
    public void e(ImageRequest request, Object callerContext, String requestId, boolean isPrefetch) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).e(request, callerContext, requestId, isPrefetch);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestStart", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public boolean f(String id2) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f92090a.get(i10).f(id2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void g(String requestId, String producerName, @Nullable Map<String, String> extraMap) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).g(requestId, producerName, extraMap);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void h(String requestId, String producerName, @Nullable Map<String, String> extraMap) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).h(requestId, producerName, extraMap);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithCancellation", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.u0
    public void i(String requestId, String producerName, boolean successful) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).i(requestId, producerName, successful);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // j4.f
    public void j(ImageRequest request, String requestId, Throwable throwable, boolean isPrefetch) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).j(request, requestId, throwable, isPrefetch);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestFailure", e10);
            }
        }
    }

    @Override // j4.f
    public void k(String requestId) {
        int size = this.f92090a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92090a.get(i10).k(requestId);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestCancellation", e10);
            }
        }
    }

    public void l(f requestListener) {
        this.f92090a.add(requestListener);
    }

    public d(f... requestListeners) {
        this.f92090a = new ArrayList(requestListeners.length);
        for (f fVar : requestListeners) {
            if (fVar != null) {
                this.f92090a.add(fVar);
            }
        }
    }
}
