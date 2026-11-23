package com.sigmob.sdk.videoplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;

/* JADX INFO: loaded from: classes3.dex */
public class l extends TextureView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final String f82102a = "ResizeTextureView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f82103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f82104c;

    public l(Context context) {
        super(context);
        this.f82103b = 0;
        this.f82104c = 0;
    }

    public void a(int currentVideoWidth, int currentVideoHeight) {
        if (this.f82103b == currentVideoWidth && this.f82104c == currentVideoHeight) {
            return;
        }
        this.f82103b = currentVideoWidth;
        this.f82104c = currentVideoHeight;
        requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:69:0x0125  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d4, code lost:
    
        if (r8 > r11) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d6, code lost:
    
        r8 = (r11 * r3) / r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e9, code lost:
    
        if (r8 > r11) goto L41;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.videoplayer.l.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void setRotation(float rotation) {
        if (rotation != getRotation()) {
            super.setRotation(rotation);
            requestLayout();
        }
    }

    public l(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f82103b = 0;
        this.f82104c = 0;
    }
}
