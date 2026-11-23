package h;

/* JADX INFO: loaded from: classes7.dex */
public class b implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f91382c = 9;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f91383d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f91384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f91385b;

    public b() {
        this(0, 9);
    }

    @Override // h.c
    public int a() {
        return (this.f91385b - this.f91384a) + 1;
    }

    @Override // h.c
    public Object getItem(int i10) {
        if (i10 < 0 || i10 >= a()) {
            return 0;
        }
        return Integer.valueOf(this.f91384a + i10);
    }

    @Override // h.c
    public int indexOf(Object obj) {
        return ((Integer) obj).intValue() - this.f91384a;
    }

    public b(int i10, int i11) {
        this.f91384a = i10;
        this.f91385b = i11;
    }
}
