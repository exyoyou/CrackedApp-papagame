package com.nineoldandroids.animation;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    float f76239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Class f76240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Interpolator f76241d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f76242e = false;

    static class c extends j {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Object f76245f;

        c(float f10, Object obj) {
            this.f76239b = f10;
            this.f76245f = obj;
            boolean z10 = obj != null;
            this.f76242e = z10;
            this.f76240c = z10 ? obj.getClass() : Object.class;
        }

        @Override // com.nineoldandroids.animation.j
        public Object e() {
            return this.f76245f;
        }

        @Override // com.nineoldandroids.animation.j
        public void o(Object obj) {
            this.f76245f = obj;
            this.f76242e = obj != null;
        }

        @Override // com.nineoldandroids.animation.j
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public c clone() {
            c cVar = new c(b(), this.f76245f);
            cVar.n(d());
            return cVar;
        }
    }

    public static j g(float f10) {
        return new a(f10);
    }

    public static j h(float f10, float f11) {
        return new a(f10, f11);
    }

    public static j i(float f10) {
        return new b(f10);
    }

    public static j j(float f10, int i10) {
        return new b(f10, i10);
    }

    public static j k(float f10) {
        return new c(f10, null);
    }

    public static j l(float f10, Object obj) {
        return new c(f10, obj);
    }

    @Override // 
    /* JADX INFO: renamed from: a */
    public abstract j clone();

    public float b() {
        return this.f76239b;
    }

    public Interpolator d() {
        return this.f76241d;
    }

    public abstract Object e();

    public boolean f() {
        return this.f76242e;
    }

    public Class getType() {
        return this.f76240c;
    }

    public void m(float f10) {
        this.f76239b = f10;
    }

    public void n(Interpolator interpolator) {
        this.f76241d = interpolator;
    }

    public abstract void o(Object obj);

    static class a extends j {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f76243f;

        a(float f10, float f11) {
            this.f76239b = f10;
            this.f76243f = f11;
            this.f76240c = Float.TYPE;
            this.f76242e = true;
        }

        @Override // com.nineoldandroids.animation.j
        public Object e() {
            return Float.valueOf(this.f76243f);
        }

        @Override // com.nineoldandroids.animation.j
        public void o(Object obj) {
            if (obj == null || obj.getClass() != Float.class) {
                return;
            }
            this.f76243f = ((Float) obj).floatValue();
            this.f76242e = true;
        }

        @Override // com.nineoldandroids.animation.j
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = new a(b(), this.f76243f);
            aVar.n(d());
            return aVar;
        }

        public float q() {
            return this.f76243f;
        }

        a(float f10) {
            this.f76239b = f10;
            this.f76240c = Float.TYPE;
        }
    }

    static class b extends j {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f76244f;

        b(float f10, int i10) {
            this.f76239b = f10;
            this.f76244f = i10;
            this.f76240c = Integer.TYPE;
            this.f76242e = true;
        }

        @Override // com.nineoldandroids.animation.j
        public Object e() {
            return Integer.valueOf(this.f76244f);
        }

        @Override // com.nineoldandroids.animation.j
        public void o(Object obj) {
            if (obj == null || obj.getClass() != Integer.class) {
                return;
            }
            this.f76244f = ((Integer) obj).intValue();
            this.f76242e = true;
        }

        @Override // com.nineoldandroids.animation.j
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public b clone() {
            b bVar = new b(b(), this.f76244f);
            bVar.n(d());
            return bVar;
        }

        public int q() {
            return this.f76244f;
        }

        b(float f10) {
            this.f76239b = f10;
            this.f76240c = Integer.TYPE;
        }
    }
}
