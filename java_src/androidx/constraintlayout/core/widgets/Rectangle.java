package androidx.constraintlayout.core.widgets;

/* JADX INFO: loaded from: classes7.dex */
public class Rectangle {
    public int height;
    public int width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f166x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f167y;

    public boolean contains(int i10, int i11) {
        int i12;
        int i13 = this.f166x;
        return i10 >= i13 && i10 < i13 + this.width && i11 >= (i12 = this.f167y) && i11 < i12 + this.height;
    }

    public int getCenterX() {
        return (this.f166x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f167y + this.height) / 2;
    }

    void grow(int i10, int i11) {
        this.f166x -= i10;
        this.f167y -= i11;
        this.width += i10 * 2;
        this.height += i11 * 2;
    }

    boolean intersects(Rectangle rectangle) {
        int i10;
        int i11;
        int i12 = this.f166x;
        int i13 = rectangle.f166x;
        return i12 >= i13 && i12 < i13 + rectangle.width && (i10 = this.f167y) >= (i11 = rectangle.f167y) && i10 < i11 + rectangle.height;
    }

    public void setBounds(int i10, int i11, int i12, int i13) {
        this.f166x = i10;
        this.f167y = i11;
        this.width = i12;
        this.height = i13;
    }
}
