package e5;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f90869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f90870b;

    public b(int i10) {
        this.f90869a = new char[i10];
    }

    public void a(char c10) {
        int i10 = this.f90870b;
        char[] cArr = this.f90869a;
        if (i10 < cArr.length - 1) {
            cArr[i10] = c10;
            this.f90870b = i10 + 1;
        }
    }

    public void b(String str) {
        char[] charArray = str.toCharArray();
        char[] cArr = this.f90869a;
        int length = cArr.length;
        int i10 = this.f90870b;
        int length2 = length - i10;
        if (charArray.length < length2) {
            length2 = charArray.length;
        }
        System.arraycopy(charArray, 0, cArr, i10, length2);
        this.f90870b += length2;
    }

    public void c() {
        this.f90870b = 0;
    }

    public int d() {
        return this.f90870b;
    }

    public String toString() {
        return new String(this.f90869a, 0, this.f90870b);
    }
}
