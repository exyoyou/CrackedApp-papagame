package j4;

import com.facebook.imagepipeline.producers.ProducerContext;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f92087b = "ForwardingRequestListener2";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<e> f92088a;

    public c(Set<e> requestListeners) {
        this.f92088a = new ArrayList(requestListeners.size());
        for (e eVar : requestListeners) {
            if (eVar != null) {
                this.f92088a.add(eVar);
            }
        }
    }

    private void m(String message, Throwable t10) {
        i3.a.v(f92087b, message, t10);
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void a(ProducerContext producerContext, String producerName, boolean successful) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).a(producerContext, producerName, successful);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void b(ProducerContext producerContext, String producerName) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).b(producerContext, producerName);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerStart", e10);
            }
        }
    }

    @Override // j4.e
    public void c(ProducerContext producerContext) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).c(producerContext);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestStart", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void d(ProducerContext producerContext, String producerName, @Nullable Map<String, String> extraMap) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).d(producerContext, producerName, extraMap);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithCancellation", e10);
            }
        }
    }

    @Override // j4.e
    public void e(ProducerContext producerContext) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).e(producerContext);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public boolean f(ProducerContext producerContext, String producerName) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f92088a.get(i10).f(producerContext, producerName)) {
                return true;
            }
        }
        return false;
    }

    @Override // j4.e
    public void g(ProducerContext producerContext) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).g(producerContext);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestCancellation", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void h(ProducerContext producerContext, String producerName, String producerEventName) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).h(producerContext, producerName, producerEventName);
            } catch (Exception e10) {
                m("InternalListener exception in onIntermediateChunkStart", e10);
            }
        }
    }

    @Override // j4.e
    public void i(ProducerContext producerContext, Throwable throwable) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).i(producerContext, throwable);
            } catch (Exception e10) {
                m("InternalListener exception in onRequestFailure", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void j(ProducerContext producerContext, String producerName, @Nullable Map<String, String> extraMap) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).j(producerContext, producerName, extraMap);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithSuccess", e10);
            }
        }
    }

    @Override // com.facebook.imagepipeline.producers.t0
    public void k(ProducerContext producerContext, String producerName, Throwable t10, @Nullable Map<String, String> extraMap) {
        int size = this.f92088a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                this.f92088a.get(i10).k(producerContext, producerName, t10, extraMap);
            } catch (Exception e10) {
                m("InternalListener exception in onProducerFinishWithFailure", e10);
            }
        }
    }

    public void l(e requestListener) {
        this.f92088a.add(requestListener);
    }

    public c(e... requestListeners) {
        this.f92088a = new ArrayList(requestListeners.length);
        for (e eVar : requestListeners) {
            if (eVar != null) {
                this.f92088a.add(eVar);
            }
        }
    }
}
