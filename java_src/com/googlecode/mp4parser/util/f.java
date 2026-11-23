package com.googlecode.mp4parser.util;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient a[] f33778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient int f33779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f33780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f33781d;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33782a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33783b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f33784c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        a f33785d;

        protected a(int i10, int i11, Object obj, a aVar) {
            this.f33782a = i10;
            this.f33783b = i11;
            this.f33784c = obj;
            this.f33785d = aVar;
        }
    }

    public f() {
        this(20, 0.75f);
    }

    public synchronized void a() {
        a[] aVarArr = this.f33778a;
        int length = aVarArr.length;
        while (true) {
            length--;
            if (length < 0) {
                this.f33779b = 0;
            } else {
                aVarArr[length] = null;
            }
        }
    }

    public boolean b(Object obj) {
        obj.getClass();
        a[] aVarArr = this.f33778a;
        int length = aVarArr.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                return false;
            }
            for (a aVar = aVarArr[i10]; aVar != null; aVar = aVar.f33785d) {
                if (aVar.f33784c.equals(obj)) {
                    return true;
                }
            }
            length = i10;
        }
    }

    public boolean c(int i10) {
        a[] aVarArr = this.f33778a;
        for (a aVar = aVarArr[(Integer.MAX_VALUE & i10) % aVarArr.length]; aVar != null; aVar = aVar.f33785d) {
            if (aVar.f33782a == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean d(Object obj) {
        return b(obj);
    }

    public Object e(int i10) {
        a[] aVarArr = this.f33778a;
        for (a aVar = aVarArr[(Integer.MAX_VALUE & i10) % aVarArr.length]; aVar != null; aVar = aVar.f33785d) {
            if (aVar.f33782a == i10) {
                return aVar.f33784c;
            }
        }
        return null;
    }

    public boolean f() {
        return this.f33779b == 0;
    }

    public Object g(int i10, Object obj) {
        a[] aVarArr = this.f33778a;
        int i11 = Integer.MAX_VALUE & i10;
        int length = i11 % aVarArr.length;
        for (a aVar = aVarArr[length]; aVar != null; aVar = aVar.f33785d) {
            if (aVar.f33782a == i10) {
                Object obj2 = aVar.f33784c;
                aVar.f33784c = obj;
                return obj2;
            }
        }
        if (this.f33779b >= this.f33780c) {
            h();
            aVarArr = this.f33778a;
            length = i11 % aVarArr.length;
        }
        aVarArr[length] = new a(i10, i10, obj, aVarArr[length]);
        this.f33779b++;
        return null;
    }

    protected void h() {
        a[] aVarArr = this.f33778a;
        int length = aVarArr.length;
        int i10 = (length * 2) + 1;
        a[] aVarArr2 = new a[i10];
        this.f33780c = (int) (i10 * this.f33781d);
        this.f33778a = aVarArr2;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return;
            }
            a aVar = aVarArr[i11];
            while (aVar != null) {
                a aVar2 = aVar.f33785d;
                int i12 = (aVar.f33782a & Integer.MAX_VALUE) % i10;
                aVar.f33785d = aVarArr2[i12];
                aVarArr2[i12] = aVar;
                aVar = aVar2;
            }
            length = i11;
        }
    }

    public Object i(int i10) {
        a[] aVarArr = this.f33778a;
        int length = (Integer.MAX_VALUE & i10) % aVarArr.length;
        a aVar = null;
        for (a aVar2 = aVarArr[length]; aVar2 != null; aVar2 = aVar2.f33785d) {
            if (aVar2.f33782a == i10) {
                if (aVar != null) {
                    aVar.f33785d = aVar2.f33785d;
                } else {
                    aVarArr[length] = aVar2.f33785d;
                }
                this.f33779b--;
                Object obj = aVar2.f33784c;
                aVar2.f33784c = null;
                return obj;
            }
            aVar = aVar2;
        }
        return null;
    }

    public int j() {
        return this.f33779b;
    }

    public f(int i10) {
        this(i10, 0.75f);
    }

    public f(int i10, float f10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i10);
        }
        if (f10 > 0.0f) {
            i10 = i10 == 0 ? 1 : i10;
            this.f33781d = f10;
            this.f33778a = new a[i10];
            this.f33780c = (int) (i10 * f10);
            return;
        }
        throw new IllegalArgumentException("Illegal Load: " + f10);
    }
}
