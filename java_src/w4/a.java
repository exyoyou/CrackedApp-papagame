package w4;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Dialog f97549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f97550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f97551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f97552e;

    public a(@NonNull Dialog dialog, @NonNull Rect rect) {
        this.f97549b = dialog;
        this.f97550c = rect.left;
        this.f97551d = rect.top;
        this.f97552e = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f97550c + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        int top = this.f97551d + viewFindViewById.getTop();
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i10 = this.f97552e;
            motionEventObtain.setLocation((-i10) - 1, (-i10) - 1);
        }
        view.performClick();
        return this.f97549b.onTouchEvent(motionEventObtain);
    }
}
