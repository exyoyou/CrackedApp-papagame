package q3;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class d extends j4.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f96465a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final c f96466b;

    public d(String controllerId, @Nullable c imageOriginLister) {
        this.f96466b = imageOriginLister;
        l(controllerId);
    }

    @Override // j4.b, com.facebook.imagepipeline.producers.u0
    public void i(String requestId, String ultimateProducerName, boolean successful) {
        c cVar = this.f96466b;
        if (cVar != null) {
            cVar.a(this.f96465a, e.a(ultimateProducerName), successful, ultimateProducerName);
        }
    }

    public void l(String controllerId) {
        this.f96465a = controllerId;
    }
}
