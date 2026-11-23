package cn.sharesdk.sina.weibo.sdk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: classes7.dex */
public class LoadingBar extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f2778c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f2779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f2780e;

    public LoadingBar(Context context) {
        super(context);
        this.f2780e = new Runnable() { // from class: cn.sharesdk.sina.weibo.sdk.LoadingBar.1
            @Override // java.lang.Runnable
            public void run() {
                LoadingBar.this.f2776a++;
                LoadingBar loadingBar = LoadingBar.this;
                loadingBar.a(loadingBar.f2776a);
            }
        };
        a(context);
    }

    private Rect b() {
        int left = getLeft();
        int top = getTop();
        return new Rect(0, 0, (getLeft() + (((getRight() - getLeft()) * this.f2776a) / 100)) - left, getBottom() - top);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f2778c.setColor(this.f2777b);
        canvas.drawRect(b(), this.f2778c);
    }

    private void a(Context context) {
        this.f2779d = new Handler();
        this.f2778c = new Paint();
        a();
    }

    public LoadingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public LoadingBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a(context);
    }

    public void a() {
        this.f2777b = -11693826;
    }

    public void a(int i10) {
        if (i10 < 7) {
            this.f2779d.postDelayed(this.f2780e, 70L);
        } else {
            this.f2779d.removeCallbacks(this.f2780e);
            this.f2776a = i10;
        }
        invalidate();
    }
}
