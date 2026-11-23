package q3;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Collection<g> f96464a;

    public b(Collection<g> listeners) {
        this.f96464a = listeners;
    }

    @Override // q3.g
    public void a(f imagePerfData, int visibilityState) {
        Iterator<g> it2 = this.f96464a.iterator();
        while (it2.hasNext()) {
            it2.next().a(imagePerfData, visibilityState);
        }
    }

    @Override // q3.g
    public void b(f imagePerfData, int imageLoadStatus) {
        Iterator<g> it2 = this.f96464a.iterator();
        while (it2.hasNext()) {
            it2.next().b(imagePerfData, imageLoadStatus);
        }
    }
}
