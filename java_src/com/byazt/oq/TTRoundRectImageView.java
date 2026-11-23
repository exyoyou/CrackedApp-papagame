package com.byazt.oq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.proto.GSSDK;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, GSSDK.OneInputOPData.InputOP.OP_TOUCH_MOVE_VALUE})
public class TTRoundRectImageView extends ImageView {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f18331c;
    public int tt;
    public Matrix uj;
    public int ve;

    public TTRoundRectImageView(Context context) {
        this(context, null);
    }

    private Bitmap c(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth() <= 0 ? getWidth() : drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight() <= 0 ? getHeight() : drawable.getIntrinsicHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onDraw(canvas);
            return;
        }
        Bitmap bitmapC = c(drawable);
        if (bitmapC == null) {
            super.onDraw(canvas);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
        BitmapShader bitmapShader = new BitmapShader(bitmapC, tileMode, tileMode);
        float fMax = (bitmapC.getWidth() == getWidth() && bitmapC.getHeight() == getHeight()) ? 1.0f : Math.max((getWidth() * 1.0f) / bitmapC.getWidth(), (getHeight() * 1.0f) / bitmapC.getHeight());
        this.uj.setScale(fMax, fMax);
        bitmapShader.setLocalMatrix(this.uj);
        this.f18331c.setShader(bitmapShader);
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.tt, this.ve, this.f18331c);
    }

    public void setXRound(int i10) {
        this.tt = i10;
        postInvalidate();
    }

    public void setYRound(int i10) {
        this.ve = i10;
        postInvalidate();
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.tt = 25;
        this.ve = 25;
        Paint paint = new Paint();
        this.f18331c = paint;
        paint.setAntiAlias(true);
        this.f18331c.setFilterBitmap(true);
        this.uj = new Matrix();
    }
}
