package o6;

import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f94952a;

    public b(View view) {
        this.f94952a = view;
    }

    @Override // o6.a
    public Point a() {
        int[] iArr = new int[2];
        this.f94952a.getLocationInWindow(iArr);
        return new Point(iArr[0] + (this.f94952a.getWidth() / 2), iArr[1] + (this.f94952a.getHeight() / 2));
    }

    @Override // o6.a
    public Rect b() {
        int[] iArr = new int[2];
        this.f94952a.getLocationInWindow(iArr);
        int i10 = iArr[0];
        return new Rect(i10, iArr[1], this.f94952a.getWidth() + i10, iArr[1]);
    }

    @Override // o6.a
    public int getHeight() {
        View view = this.f94952a;
        if (view == null) {
            return 0;
        }
        return view.getHeight();
    }

    @Override // o6.a
    public View getView() {
        return this.f94952a;
    }
}
