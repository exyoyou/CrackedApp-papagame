package q3;

import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f96462b = "ForwardingImageOriginListener";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<c> f96463a;

    public a(Set<c> imageOriginListeners) {
        this.f96463a = new ArrayList(imageOriginListeners);
    }

    @Override // q3.c
    public synchronized void a(String controllerId, int imageOrigin, boolean successful, @Nullable String ultimateProducerName) {
        int size = this.f96463a.size();
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = this.f96463a.get(i10);
            if (cVar != null) {
                try {
                    cVar.a(controllerId, imageOrigin, successful, ultimateProducerName);
                } catch (Exception e10) {
                    i3.a.v(f96462b, "InternalListener exception in onImageLoaded", e10);
                }
            }
        }
    }

    public synchronized void b(c listener) {
        this.f96463a.add(listener);
    }

    public synchronized void c(c listener) {
        this.f96463a.remove(listener);
    }

    public a(c... imageOriginListeners) {
        ArrayList arrayList = new ArrayList(imageOriginListeners.length);
        this.f96463a = arrayList;
        Collections.addAll(arrayList, imageOriginListeners);
    }
}
