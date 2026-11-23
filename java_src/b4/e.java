package b4;

import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e<I> extends a<I> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f391d = "FwdControllerListener2";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<c<I>> f392c = new ArrayList(2);

    private synchronized void i(String message, Throwable t10) {
    }

    @Override // b4.a, b4.c
    public void b(String id2, @Nullable Object callerContext, @Nullable c.a extras) {
        int size = this.f392c.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<I> cVar = this.f392c.get(i10);
                if (cVar != null) {
                    cVar.b(id2, callerContext, extras);
                }
            } catch (Exception e10) {
                i("ForwardingControllerListener2 exception in onSubmit", e10);
            }
        }
    }

    @Override // b4.a, b4.c
    public void c(String id2, @Nullable I imageInfo, @Nullable c.a extraData) {
        int size = this.f392c.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<I> cVar = this.f392c.get(i10);
                if (cVar != null) {
                    cVar.c(id2, imageInfo, extraData);
                }
            } catch (Exception e10) {
                i("ForwardingControllerListener2 exception in onFinalImageSet", e10);
            }
        }
    }

    @Override // b4.a, b4.c
    public void d(String id2, @Nullable c.a extras) {
        int size = this.f392c.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<I> cVar = this.f392c.get(i10);
                if (cVar != null) {
                    cVar.d(id2, extras);
                }
            } catch (Exception e10) {
                i("ForwardingControllerListener2 exception in onRelease", e10);
            }
        }
    }

    @Override // b4.a, b4.c
    public void f(String id2, @Nullable Throwable throwable, @Nullable c.a extras) {
        int size = this.f392c.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<I> cVar = this.f392c.get(i10);
                if (cVar != null) {
                    cVar.f(id2, throwable, extras);
                }
            } catch (Exception e10) {
                i("ForwardingControllerListener2 exception in onFailure", e10);
            }
        }
    }

    public synchronized void h(c<I> listener) {
        this.f392c.add(listener);
    }

    public synchronized void j() {
        this.f392c.clear();
    }

    public synchronized void k(c<I> listener) {
        int iIndexOf = this.f392c.indexOf(listener);
        if (iIndexOf != -1) {
            this.f392c.remove(iIndexOf);
        }
    }
}
