package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes7.dex */
public class ResizeLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OnResizeListener f2607a;

    public interface OnResizeListener {
        void OnResize(int i10, int i11, int i12, int i13);
    }

    public ResizeLayout(Context context) {
        super(context);
    }

    public void a(OnResizeListener onResizeListener) {
        this.f2607a = onResizeListener;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        OnResizeListener onResizeListener = this.f2607a;
        if (onResizeListener != null) {
            onResizeListener.OnResize(i10, i11, i12, i13);
        }
    }

    public ResizeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
