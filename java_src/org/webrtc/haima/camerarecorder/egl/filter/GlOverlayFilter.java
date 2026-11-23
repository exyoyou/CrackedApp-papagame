package org.webrtc.haima.camerarecorder.egl.filter;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Size;
import com.sigmob.sdk.archives.tar.d;
import com.uc.crashsdk.export.LogType;

/* JADX INFO: loaded from: classes10.dex */
@SuppressLint({"NewApi"})
public abstract class GlOverlayFilter extends GlFilter {
    private static final String FRAGMENT_SHADER = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform lowp sampler2D sTexture;\nuniform lowp sampler2D oTexture;\nvoid main() {\n   lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n   lowp vec4 textureColor2 = texture2D(oTexture, vTextureCoord);\n   \n   gl_FragColor = mix(textureColor, textureColor2, textureColor2.a);\n}\n";
    private Bitmap bitmap;
    protected Size inputResolution;
    private int[] textures;

    public GlOverlayFilter() {
        super("attribute highp vec4 aPosition;\nattribute highp vec4 aTextureCoord;\nvarying highp vec2 vTextureCoord;\nvoid main() {\ngl_Position = aPosition;\nvTextureCoord = aTextureCoord.xy;\n}\n", FRAGMENT_SHADER);
        this.textures = new int[1];
        this.inputResolution = new Size(LogType.UNEXP_ANR, 720);
    }

    private void createBitmap() {
        releaseBitmap(this.bitmap);
        this.bitmap = Bitmap.createBitmap(this.inputResolution.getWidth(), this.inputResolution.getHeight(), Bitmap.Config.ARGB_8888);
    }

    public static void releaseBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    protected abstract void drawCanvas(Canvas canvas);

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void onDraw() {
        if (this.bitmap == null) {
            createBitmap();
        }
        if (this.bitmap.getWidth() != this.inputResolution.getWidth() || this.bitmap.getHeight() != this.inputResolution.getHeight()) {
            createBitmap();
        }
        this.bitmap.eraseColor(Color.argb(0, 0, 0, 0));
        Canvas canvas = new Canvas(this.bitmap);
        canvas.scale(1.0f, -1.0f, canvas.getWidth() / 2, canvas.getHeight() / 2);
        drawCanvas(canvas);
        int handle = getHandle("oTexture");
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.textures[0]);
        Bitmap bitmap = this.bitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            GLUtils.texImage2D(3553, 0, 6408, this.bitmap, 0);
        }
        GLES20.glUniform1i(handle, 3);
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void setFrameSize(int i10, int i11) {
        super.setFrameSize(i10, i11);
        setResolution(new Size(i10, i11));
    }

    public void setResolution(Size size) {
        this.inputResolution = size;
    }

    @Override // org.webrtc.haima.camerarecorder.egl.filter.GlFilter
    public void setup() {
        super.setup();
        GLES20.glGenTextures(1, this.textures, 0);
        GLES20.glBindTexture(3553, this.textures[0]);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, d.f78732b, 9729);
        GLES20.glTexParameteri(3553, 10242, 33071);
        GLES20.glTexParameteri(3553, 10243, 33071);
        createBitmap();
    }
}
