package com.facebook.drawee.controller;

import android.graphics.drawable.Animatable;
import b4.h;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public class e<INFO> implements c<INFO>, h<INFO> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f27116c = "FdingControllerListener";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c<? super INFO>> f27117b = new ArrayList(2);

    public static <INFO> e<INFO> c() {
        return new e<>();
    }

    public static <INFO> e<INFO> d(c<? super INFO> listener) {
        e<INFO> eVarC = c();
        eVarC.a(listener);
        return eVarC;
    }

    public static <INFO> e<INFO> f(c<? super INFO> listener1, c<? super INFO> listener2) {
        e<INFO> eVarC = c();
        eVarC.a(listener1);
        eVarC.a(listener2);
        return eVarC;
    }

    private synchronized void g(String message, Throwable t10) {
    }

    public synchronized void a(c<? super INFO> listener) {
        this.f27117b.add(listener);
    }

    public synchronized void b() {
        this.f27117b.clear();
    }

    @Override // b4.h
    public void e(String id2, INFO imageInfo, b4.d dimensionsInfo) {
        int size = this.f27117b.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<? super INFO> cVar = this.f27117b.get(i10);
                if (cVar instanceof h) {
                    ((h) cVar).e(id2, imageInfo, dimensionsInfo);
                }
            } catch (Exception e10) {
                g("InternalListener exception in onImageDrawn", e10);
            }
        }
    }

    public synchronized void h(c<? super INFO> listener) {
        int iIndexOf = this.f27117b.indexOf(listener);
        if (iIndexOf != -1) {
            this.f27117b.set(iIndexOf, null);
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void onFailure(String id2, Throwable throwable) {
        int size = this.f27117b.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<? super INFO> cVar = this.f27117b.get(i10);
                if (cVar != null) {
                    cVar.onFailure(id2, throwable);
                }
            } catch (Exception e10) {
                g("InternalListener exception in onFailure", e10);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void onFinalImageSet(String id2, @Nullable INFO imageInfo, @Nullable Animatable animatable) {
        int size = this.f27117b.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<? super INFO> cVar = this.f27117b.get(i10);
                if (cVar != null) {
                    cVar.onFinalImageSet(id2, imageInfo, animatable);
                }
            } catch (Exception e10) {
                g("InternalListener exception in onFinalImageSet", e10);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public void onIntermediateImageFailed(String id2, Throwable throwable) {
        int size = this.f27117b.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<? super INFO> cVar = this.f27117b.get(i10);
                if (cVar != null) {
                    cVar.onIntermediateImageFailed(id2, throwable);
                }
            } catch (Exception e10) {
                g("InternalListener exception in onIntermediateImageFailed", e10);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public void onIntermediateImageSet(String id2, @Nullable INFO imageInfo) {
        int size = this.f27117b.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<? super INFO> cVar = this.f27117b.get(i10);
                if (cVar != null) {
                    cVar.onIntermediateImageSet(id2, imageInfo);
                }
            } catch (Exception e10) {
                g("InternalListener exception in onIntermediateImageSet", e10);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void onRelease(String id2) {
        int size = this.f27117b.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<? super INFO> cVar = this.f27117b.get(i10);
                if (cVar != null) {
                    cVar.onRelease(id2);
                }
            } catch (Exception e10) {
                g("InternalListener exception in onRelease", e10);
            }
        }
    }

    @Override // com.facebook.drawee.controller.c
    public synchronized void onSubmit(String id2, Object callerContext) {
        int size = this.f27117b.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                c<? super INFO> cVar = this.f27117b.get(i10);
                if (cVar != null) {
                    cVar.onSubmit(id2, callerContext);
                }
            } catch (Exception e10) {
                g("InternalListener exception in onSubmit", e10);
            }
        }
    }
}
