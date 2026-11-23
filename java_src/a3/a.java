package a3;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f55a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f56b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f57c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f58d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f59e;

    public a(int i10, float f10, float f11, float f12) {
        this.f58d = i10;
        this.f55a = f10;
        this.f57c = f11;
        this.f56b = f12;
    }

    public float a() {
        return this.f56b;
    }

    public float b() {
        return this.f57c;
    }

    public float c() {
        return this.f55a;
    }

    public int d() {
        return this.f58d;
    }

    public a e() {
        this.f59e = true;
        return this;
    }

    public void f(float f10) {
        this.f56b = f10;
    }

    public void g(float f10) {
        this.f57c = f10;
    }

    public void h(float f10) {
        this.f55a = f10;
    }

    public void i(int i10) {
        this.f58d = i10;
    }
}
