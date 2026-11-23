package f5;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f91037b = new a(255);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f91038a;

    private a(int i10) {
        this.f91038a = i10;
    }

    public static a a(int i10) {
        a aVar = f91037b;
        return i10 == aVar.f91038a ? aVar : new a(i10);
    }

    public int b() {
        return this.f91038a;
    }

    public String toString() {
        return "AspectRatio{value=" + this.f91038a + '}';
    }
}
