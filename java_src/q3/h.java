package q3;

import android.graphics.Rect;
import com.facebook.common.internal.l;
import com.facebook.common.internal.m;
import com.facebook.common.references.CloseableReference;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class h implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.drawee.backends.pipeline.d f96493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l3.c f96494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j f96495c = new j();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final l<Boolean> f96496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private d f96497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private c f96498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.backends.pipeline.info.internal.d f96499g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private com.facebook.drawee.backends.pipeline.info.internal.a f96500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private j4.d f96501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private List<g> f96502j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f96503k;

    public h(l3.c monotonicClock, com.facebook.drawee.backends.pipeline.d pipelineDraweeController, l<Boolean> asyncLogging) {
        this.f96494b = monotonicClock;
        this.f96493a = pipelineDraweeController;
        this.f96496d = asyncLogging;
    }

    private void i() {
        if (this.f96500h == null) {
            this.f96500h = new com.facebook.drawee.backends.pipeline.info.internal.a(this.f96494b, this.f96495c, this, this.f96496d, m.f26885b);
        }
        if (this.f96499g == null) {
            this.f96499g = new com.facebook.drawee.backends.pipeline.info.internal.d(this.f96494b, this.f96495c);
        }
        if (this.f96498f == null) {
            this.f96498f = new com.facebook.drawee.backends.pipeline.info.internal.c(this.f96495c, this);
        }
        d dVar = this.f96497e;
        if (dVar == null) {
            this.f96497e = new d(this.f96493a.w(), this.f96498f);
        } else {
            dVar.l(this.f96493a.w());
        }
        if (this.f96501i == null) {
            this.f96501i = new j4.d(this.f96499g, this.f96497e);
        }
    }

    @Override // q3.i
    public void a(j state, int visibilityState) {
        List<g> list;
        if (!this.f96503k || (list = this.f96502j) == null || list.isEmpty()) {
            return;
        }
        f fVarH = state.H();
        Iterator<g> it2 = this.f96502j.iterator();
        while (it2.hasNext()) {
            it2.next().a(fVarH, visibilityState);
        }
    }

    @Override // q3.i
    public void b(j state, int imageLoadStatus) {
        List<g> list;
        state.u(imageLoadStatus);
        if (!this.f96503k || (list = this.f96502j) == null || list.isEmpty()) {
            return;
        }
        if (imageLoadStatus == 3) {
            d();
        }
        f fVarH = state.H();
        Iterator<g> it2 = this.f96502j.iterator();
        while (it2.hasNext()) {
            it2.next().b(fVarH, imageLoadStatus);
        }
    }

    public void c(@Nullable g imagePerfDataListener) {
        if (imagePerfDataListener == null) {
            return;
        }
        if (this.f96502j == null) {
            this.f96502j = new CopyOnWriteArrayList();
        }
        this.f96502j.add(imagePerfDataListener);
    }

    public void d() {
        s3.b bVarE = this.f96493a.e();
        if (bVarE == null || bVarE.b() == null) {
            return;
        }
        Rect bounds = bVarE.b().getBounds();
        this.f96495c.B(bounds.width());
        this.f96495c.A(bounds.height());
    }

    public void e() {
        List<g> list = this.f96502j;
        if (list != null) {
            list.clear();
        }
    }

    public void f(g imagePerfDataListener) {
        List<g> list = this.f96502j;
        if (list == null) {
            return;
        }
        list.remove(imagePerfDataListener);
    }

    public void g() {
        e();
        h(false);
        this.f96495c.e();
    }

    public void h(boolean enabled) {
        this.f96503k = enabled;
        if (!enabled) {
            c cVar = this.f96498f;
            if (cVar != null) {
                this.f96493a.B0(cVar);
            }
            com.facebook.drawee.backends.pipeline.info.internal.a aVar = this.f96500h;
            if (aVar != null) {
                this.f96493a.T(aVar);
            }
            j4.d dVar = this.f96501i;
            if (dVar != null) {
                this.f96493a.C0(dVar);
                return;
            }
            return;
        }
        i();
        c cVar2 = this.f96498f;
        if (cVar2 != null) {
            this.f96493a.j0(cVar2);
        }
        com.facebook.drawee.backends.pipeline.info.internal.a aVar2 = this.f96500h;
        if (aVar2 != null) {
            this.f96493a.m(aVar2);
        }
        j4.d dVar2 = this.f96501i;
        if (dVar2 != null) {
            this.f96493a.k0(dVar2);
        }
    }

    public void j(AbstractDraweeControllerBuilder<com.facebook.drawee.backends.pipeline.e, ImageRequest, CloseableReference<com.facebook.imagepipeline.image.c>, com.facebook.imagepipeline.image.g> pipelineDraweeControllerBuilder) {
        this.f96495c.m(pipelineDraweeControllerBuilder.r(), pipelineDraweeControllerBuilder.t(), pipelineDraweeControllerBuilder.q());
    }
}
