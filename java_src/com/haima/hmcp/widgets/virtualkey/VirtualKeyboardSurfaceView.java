package com.haima.hmcp.widgets.virtualkey;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class VirtualKeyboardSurfaceView extends TextureView implements TextureView.SurfaceTextureListener, View.OnAttachStateChangeListener {
    private static final String TAG = "VirtualKeyboardSurfaceView";
    private List<PointCoord> buttonList;
    private boolean isDrawing;
    private PointCoord mFireCoord;
    private PointCoord mSightBeadCoord;
    private Paint paint;
    private float scaleX;
    private float scaleY;

    public VirtualKeyboardSurfaceView(Context context) {
        super(context);
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.isDrawing = false;
        init();
    }

    private void drawContent(Canvas canvas) {
        ArrayList<PointCoord> arrayList;
        BaseVirtualKeyView baseVirtualKeyViewCreateVirtualKeyView;
        BaseVirtualKeyView baseVirtualKeyViewCreateVirtualKeyView2;
        LogUtils.i(TAG, "VirtualKeyboardSurfaceView drawContent start");
        canvas.drawColor(0);
        synchronized (this.buttonList) {
            arrayList = new ArrayList(this.buttonList);
        }
        for (PointCoord pointCoord : arrayList) {
            BaseVirtualKeyView baseVirtualKeyViewCreateVirtualKeyView3 = VirtualKeyViewFactory.createVirtualKeyView(getContext(), pointCoord);
            if (baseVirtualKeyViewCreateVirtualKeyView3 != null) {
                baseVirtualKeyViewCreateVirtualKeyView3.setSurfaceSize(getLayoutParams().width, getLayoutParams().height);
                baseVirtualKeyViewCreateVirtualKeyView3.drawVirtualKey(canvas, pointCoord, this.scaleX, this.scaleY);
            }
        }
        if (this.mFireCoord != null && (baseVirtualKeyViewCreateVirtualKeyView2 = VirtualKeyViewFactory.createVirtualKeyView(getContext(), this.mFireCoord)) != null) {
            baseVirtualKeyViewCreateVirtualKeyView2.setSurfaceSize(getLayoutParams().width, getLayoutParams().height);
            baseVirtualKeyViewCreateVirtualKeyView2.drawVirtualKey(canvas, this.mFireCoord, this.scaleX, this.scaleY);
        }
        if (this.mSightBeadCoord == null || (baseVirtualKeyViewCreateVirtualKeyView = VirtualKeyViewFactory.createVirtualKeyView(getContext(), this.mSightBeadCoord)) == null) {
            return;
        }
        baseVirtualKeyViewCreateVirtualKeyView.setSurfaceSize(getLayoutParams().width, getLayoutParams().height);
        baseVirtualKeyViewCreateVirtualKeyView.drawVirtualKey(canvas, this.mSightBeadCoord, this.scaleX, this.scaleY);
    }

    private void drawToSurface() {
        Canvas canvasLockCanvas;
        if (!this.isDrawing || getSurfaceTexture() == null || (canvasLockCanvas = lockCanvas()) == null) {
            return;
        }
        try {
            drawContent(canvasLockCanvas);
        } finally {
            unlockCanvasAndPost(canvasLockCanvas);
        }
    }

    private void init() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.buttonList = new ArrayList();
        setOpaque(false);
        setSurfaceTextureListener(this);
        addOnAttachStateChangeListener(this);
    }

    private void startDrawing() {
        if (this.isDrawing) {
            return;
        }
        LogUtils.i(TAG, "VirtualKeyboardSurfaceView start");
        this.isDrawing = true;
        drawToSurface();
    }

    private void stopDrawing() {
        this.isDrawing = false;
    }

    @Override // android.view.View
    public void invalidate() {
        drawToSurface();
    }

    @Override // android.view.TextureView, android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        startDrawing();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        stopDrawing();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        if (getSurfaceTexture() != null) {
            startDrawing();
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        stopDrawing();
    }

    public void setFireCoord(PointCoord pointCoord) {
        this.mFireCoord = pointCoord;
        drawToSurface();
    }

    public void setSightBeadCoord(PointCoord pointCoord) {
        this.mSightBeadCoord = pointCoord;
        drawToSurface();
    }

    public void updateKeyboardMapping(List<PointCoord> list) {
        synchronized (this.buttonList) {
            this.buttonList.clear();
            if (list != null) {
                this.buttonList.addAll(list);
            }
        }
        drawToSurface();
    }

    public VirtualKeyboardSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.isDrawing = false;
        init();
    }
}
