package f5;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static c f91039d = new c(0, 0, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static c f91040e = new c(1, 2, 2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static c f91041f = new c(2, 2, 1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static c f91042g = new c(3, 1, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f91043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f91044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f91045c;

    public c(int i10, int i11, int i12) {
        this.f91043a = i10;
        this.f91044b = i11;
        this.f91045c = i12;
    }

    public static c a(int i10) {
        c cVar = f91039d;
        if (i10 == cVar.f91043a) {
            return cVar;
        }
        c cVar2 = f91040e;
        if (i10 == cVar2.f91043a) {
            return cVar2;
        }
        c cVar3 = f91041f;
        if (i10 == cVar3.f91043a) {
            return cVar3;
        }
        c cVar4 = f91042g;
        if (i10 == cVar4.f91043a) {
            return cVar4;
        }
        return null;
    }

    public int b() {
        return this.f91043a;
    }

    public int c() {
        return this.f91045c;
    }

    public int d() {
        return this.f91044b;
    }

    public String toString() {
        return "ChromaFormat{\nid=" + this.f91043a + ",\n subWidth=" + this.f91044b + ",\n subHeight=" + this.f91045c + '}';
    }
}
