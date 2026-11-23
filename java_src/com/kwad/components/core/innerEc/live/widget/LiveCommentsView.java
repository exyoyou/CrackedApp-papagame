package com.kwad.components.core.innerEc.live.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class LiveCommentsView extends e {
    private float MQ;
    private Paint ZF;
    private Matrix ZG;
    private Shader ZH;
    private int ZI;
    private int ZJ;
    private boolean ZK;
    private boolean ZL;
    private int mTouchSlop;

    public LiveCommentsView(Context context) {
        this(context, null);
    }

    static /* synthetic */ boolean a(LiveCommentsView liveCommentsView, boolean z10) {
        liveCommentsView.ZK = false;
        return false;
    }

    private boolean bj(int i10) {
        return super.canScrollVertically(i10);
    }

    private void c(Canvas canvas) {
        int i10 = this.ZI;
        int width = getWidth();
        int i11 = this.ZJ;
        this.ZG.setScale(1.0f, i11);
        this.ZG.postTranslate(0.0f, i10);
        this.ZH.setLocalMatrix(this.ZG);
        this.ZF.setShader(this.ZH);
        canvas.drawRect(0.0f, 0.0f, width, i10 + i11, this.ZF);
    }

    private void init() {
        this.ZF = new Paint();
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, -16777216, 0, Shader.TileMode.CLAMP);
        this.ZH = linearGradient;
        this.ZF.setShader(linearGradient);
        this.ZF.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.ZG = new Matrix();
        this.ZJ = com.kwad.sdk.c.a.a.a(getContext(), 30.0f);
        tc();
        this.ZL = true;
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        tb();
    }

    private void tb() {
        addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.kwad.components.core.innerEc.live.widget.LiveCommentsView.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void onScrolled(@NonNull RecyclerView recyclerView, int i10, int i11) {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                if ((layoutManager instanceof LinearLayoutManager) && LiveCommentsView.this.getAdapter() != null && ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition() == LiveCommentsView.this.getAdapter().getItemCount() - 1) {
                    LiveCommentsView.a(LiveCommentsView.this, false);
                }
            }
        });
    }

    private void tc() {
        if (td()) {
            setLayerType(2, null);
        }
    }

    private static boolean td() {
        return Build.VERSION.SDK_INT >= 23;
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        if (!this.ZL) {
            return bj(i10);
        }
        if (this.ZK) {
            return bj(i10);
        }
        if (i10 < 0) {
            return bj(i10);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.ZJ <= 0 || !td()) {
            return;
        }
        c(canvas);
    }

    public int getCustomFadingEdgeTop() {
        return this.ZI;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.ZL) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.MQ = motionEvent.getY();
        } else if (action == 2 && motionEvent.getY() - this.MQ >= this.mTouchSlop) {
            this.ZK = true;
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (!this.ZK) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return zOnTouchEvent;
    }

    public void setCustomFadingEdgeLength(int i10) {
        this.ZJ = i10;
    }

    public void setCustomFadingEdgeTop(int i10) {
        if (this.ZI == i10 || this.ZJ <= 0) {
            return;
        }
        this.ZI = i10;
        postInvalidate();
    }

    public LiveCommentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LiveCommentsView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.MQ = 0.0f;
        this.ZK = false;
        this.ZL = false;
        init();
    }
}
