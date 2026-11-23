package fm.jiecao.jcvideoplayer_lib;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class JCResizeTextureView extends TextureView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final String f91195c = "JCResizeTextureView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Point f91196b;

    public JCResizeTextureView(Context context) {
        super(context);
        a();
    }

    private void a() {
        this.f91196b = new Point(0, 0);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onMeasure  [");
        sb2.append(hashCode());
        sb2.append("] ");
        int rotation = (int) getRotation();
        Point point = this.f91196b;
        int i14 = point.x;
        int i15 = point.y;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("videoWidth = ");
        sb3.append(i14);
        sb3.append(", videoHeight = ");
        sb3.append(i15);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("viewRotation = ");
        sb4.append(rotation);
        if (rotation == 90 || rotation == 270) {
            i11 = i10;
            i10 = i11;
        }
        int defaultSize = View.getDefaultSize(i14, i10);
        int defaultSize2 = View.getDefaultSize(i15, i11);
        if (i14 > 0 && i15 > 0) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            StringBuilder sb5 = new StringBuilder();
            sb5.append("widthMeasureSpec  [");
            sb5.append(View.MeasureSpec.toString(i10));
            sb5.append("]");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("heightMeasureSpec [");
            sb6.append(View.MeasureSpec.toString(i11));
            sb6.append("]");
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i16 = i14 * size2;
                int i17 = size * i15;
                if (i16 < i17) {
                    defaultSize = i16 / i15;
                } else if (i16 > i17) {
                    i13 = i17 / i14;
                    defaultSize = size;
                    defaultSize2 = i13;
                } else {
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                i13 = (size * i15) / i14;
                if (mode2 != Integer.MIN_VALUE || i13 <= size2) {
                    defaultSize = size;
                    defaultSize2 = i13;
                } else {
                    defaultSize = (i14 * size2) / i15;
                    defaultSize2 = size2;
                }
            } else if (mode2 == 1073741824) {
                i12 = (size2 * i14) / i15;
                if (mode == Integer.MIN_VALUE && i12 > size) {
                    i13 = (i15 * size) / i14;
                    defaultSize = size;
                    defaultSize2 = i13;
                }
                defaultSize = i12;
                defaultSize2 = size2;
            } else {
                if (mode2 != Integer.MIN_VALUE || i15 <= size2) {
                    size2 = i15;
                    i12 = i14;
                } else {
                    i12 = (size2 * i14) / i15;
                }
                if (mode == Integer.MIN_VALUE && i12 > size) {
                    i13 = (i15 * size) / i14;
                    defaultSize = size;
                    defaultSize2 = i13;
                }
                defaultSize = i12;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // android.view.View
    public void setRotation(float f10) {
        if (f10 != getRotation()) {
            super.setRotation(f10);
            requestLayout();
        }
    }

    public void setVideoSize(Point point) {
        if (point == null || this.f91196b.equals(point)) {
            return;
        }
        this.f91196b = point;
        requestLayout();
    }

    public JCResizeTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }
}
