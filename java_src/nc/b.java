package nc;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f94528b = new int[256];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f94529a = new int[3];

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = i10;
            for (int i12 = 0; i12 < 8; i12++) {
                i11 = (i11 & 1) == 1 ? (i11 >>> 1) ^ (-306674912) : i11 >>> 1;
            }
            f94528b[i10] = i11;
        }
    }

    private int a(int i10, byte b10) {
        return f94528b[(i10 ^ b10) & 255] ^ (i10 >>> 8);
    }

    public byte b() {
        int i10 = this.f94529a[2] | 2;
        return (byte) ((i10 * (i10 ^ 1)) >>> 8);
    }

    public void c(char[] cArr) {
        int[] iArr = this.f94529a;
        iArr[0] = 305419896;
        iArr[1] = 591751049;
        iArr[2] = 878082192;
        for (char c10 : cArr) {
            d((byte) (c10 & 255));
        }
    }

    public void d(byte b10) {
        int[] iArr = this.f94529a;
        iArr[0] = a(iArr[0], b10);
        int[] iArr2 = this.f94529a;
        int i10 = iArr2[1] + (iArr2[0] & 255);
        iArr2[1] = i10;
        int i11 = (i10 * 134775813) + 1;
        iArr2[1] = i11;
        iArr2[2] = a(iArr2[2], (byte) (i11 >> 24));
    }
}
