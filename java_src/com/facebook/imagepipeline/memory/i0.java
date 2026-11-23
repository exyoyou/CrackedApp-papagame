package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0 f28134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private a0 f28135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private j f28136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private a0 f28137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private v f28138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private a0 f28139f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private com.facebook.common.memory.g f28140g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private com.facebook.common.memory.j f28141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private l0 f28142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private com.facebook.common.memory.a f28143j;

    public i0(h0 config) {
        this.f28134a = (h0) com.facebook.common.internal.i.i(config);
    }

    @Nullable
    private a0 a() {
        if (this.f28135b == null) {
            try {
                this.f28135b = (a0) AshmemMemoryChunkPool.class.getConstructor(com.facebook.common.memory.c.class, j0.class, k0.class).newInstance(this.f28134a.i(), this.f28134a.g(), this.f28134a.h());
            } catch (ClassNotFoundException unused) {
                this.f28135b = null;
            } catch (IllegalAccessException unused2) {
                this.f28135b = null;
            } catch (InstantiationException unused3) {
                this.f28135b = null;
            } catch (NoSuchMethodException unused4) {
                this.f28135b = null;
            } catch (InvocationTargetException unused5) {
                this.f28135b = null;
            }
        }
        return this.f28135b;
    }

    @Nullable
    private a0 f(int memoryChunkType) {
        if (memoryChunkType == 0) {
            return g();
        }
        if (memoryChunkType == 1) {
            return c();
        }
        if (memoryChunkType == 2) {
            return a();
        }
        throw new IllegalArgumentException("Invalid MemoryChunkType");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x0047  */
    public j b() {
        byte b10;
        if (this.f28136c == null) {
            switch (this.f28134a.e()) {
                case "legacy_default_params":
                    b10 = 3;
                    break;
                case "legacy":
                    b10 = 4;
                    break;
                case "experimental":
                    b10 = 2;
                    break;
                case "dummy_with_tracking":
                    b10 = 1;
                    break;
                case "dummy":
                    b10 = 0;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                this.f28136c = new t();
            } else if (b10 == 1) {
                this.f28136c = new u();
            } else if (b10 == 2) {
                this.f28136c = new x(this.f28134a.b(), this.f28134a.a(), e0.h(), this.f28134a.m() ? this.f28134a.i() : null);
            } else if (b10 != 3) {
                this.f28136c = new n(this.f28134a.i(), this.f28134a.c(), this.f28134a.d(), this.f28134a.l());
            } else {
                this.f28136c = new n(this.f28134a.i(), p.a(), this.f28134a.d(), this.f28134a.l());
            }
        }
        return this.f28136c;
    }

    @Nullable
    public a0 c() {
        if (this.f28137d == null) {
            try {
                this.f28137d = (a0) BufferMemoryChunkPool.class.getConstructor(com.facebook.common.memory.c.class, j0.class, k0.class).newInstance(this.f28134a.i(), this.f28134a.g(), this.f28134a.h());
            } catch (ClassNotFoundException unused) {
                this.f28137d = null;
            } catch (IllegalAccessException unused2) {
                this.f28137d = null;
            } catch (InstantiationException unused3) {
                this.f28137d = null;
            } catch (NoSuchMethodException unused4) {
                this.f28137d = null;
            } catch (InvocationTargetException unused5) {
                this.f28137d = null;
            }
        }
        return this.f28137d;
    }

    public v d() {
        if (this.f28138e == null) {
            this.f28138e = new v(this.f28134a.i(), this.f28134a.f());
        }
        return this.f28138e;
    }

    public int e() {
        return this.f28134a.f().f28151g;
    }

    @Nullable
    public a0 g() {
        if (this.f28139f == null) {
            try {
                this.f28139f = (a0) NativeMemoryChunkPool.class.getConstructor(com.facebook.common.memory.c.class, j0.class, k0.class).newInstance(this.f28134a.i(), this.f28134a.g(), this.f28134a.h());
            } catch (ClassNotFoundException e10) {
                i3.a.v("PoolFactory", "", e10);
                this.f28139f = null;
            } catch (IllegalAccessException e11) {
                i3.a.v("PoolFactory", "", e11);
                this.f28139f = null;
            } catch (InstantiationException e12) {
                i3.a.v("PoolFactory", "", e12);
                this.f28139f = null;
            } catch (NoSuchMethodException e13) {
                i3.a.v("PoolFactory", "", e13);
                this.f28139f = null;
            } catch (InvocationTargetException e14) {
                i3.a.v("PoolFactory", "", e14);
                this.f28139f = null;
            }
        }
        return this.f28139f;
    }

    public com.facebook.common.memory.g h() {
        return i(!com.facebook.imagepipeline.core.l.a() ? 1 : 0);
    }

    public com.facebook.common.memory.g i(int memoryChunkType) {
        if (this.f28140g == null) {
            a0 a0VarF = f(memoryChunkType);
            com.facebook.common.internal.i.j(a0VarF, "failed to get pool for chunk type: " + memoryChunkType);
            this.f28140g = new d0(a0VarF, j());
        }
        return this.f28140g;
    }

    public com.facebook.common.memory.j j() {
        if (this.f28141h == null) {
            this.f28141h = new com.facebook.common.memory.j(l());
        }
        return this.f28141h;
    }

    public l0 k() {
        if (this.f28142i == null) {
            this.f28142i = new l0(this.f28134a.i(), this.f28134a.f());
        }
        return this.f28142i;
    }

    public com.facebook.common.memory.a l() {
        if (this.f28143j == null) {
            this.f28143j = new w(this.f28134a.i(), this.f28134a.j(), this.f28134a.k());
        }
        return this.f28143j;
    }
}
