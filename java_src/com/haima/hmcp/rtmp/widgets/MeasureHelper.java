package com.haima.hmcp.rtmp.widgets;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public final class MeasureHelper {
    private int mCurrentAspectRatio = 0;
    private int mMeasuredHeight;
    private int mMeasuredWidth;
    private int mVideoHeight;
    private int mVideoRotationDegree;
    private int mVideoSarDen;
    private int mVideoSarNum;
    private int mVideoWidth;
    private WeakReference<View> mWeakView;

    public MeasureHelper(View view) {
        this.mWeakView = new WeakReference<>(view);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ac  */
    public void doMeasure(int i10, int i11) {
        int i12;
        int i13;
        float f10;
        int i14;
        int i15 = this.mVideoRotationDegree;
        if (i15 == 90 || i15 == 270) {
            i11 = i10;
            i10 = i11;
        }
        int defaultSize = View.getDefaultSize(this.mVideoWidth, i10);
        int defaultSize2 = View.getDefaultSize(this.mVideoHeight, i11);
        if (this.mCurrentAspectRatio != 3) {
            if (this.mVideoWidth <= 0 || this.mVideoHeight <= 0) {
                i10 = defaultSize;
                i11 = defaultSize2;
            } else {
                int mode = View.MeasureSpec.getMode(i10);
                i10 = View.MeasureSpec.getSize(i10);
                int mode2 = View.MeasureSpec.getMode(i11);
                i11 = View.MeasureSpec.getSize(i11);
                if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    float f11 = i10;
                    float f12 = i11;
                    float f13 = f11 / f12;
                    int i16 = this.mCurrentAspectRatio;
                    if (i16 == 4) {
                        int i17 = this.mVideoRotationDegree;
                        f10 = (i17 == 90 || i17 == 270) ? 0.5625f : 1.7777778f;
                    } else if (i16 != 5) {
                        f10 = this.mVideoWidth / this.mVideoHeight;
                        int i18 = this.mVideoSarNum;
                        if (i18 > 0 && (i14 = this.mVideoSarDen) > 0) {
                            f10 = (f10 * i18) / i14;
                        }
                    } else {
                        int i19 = this.mVideoRotationDegree;
                        f10 = (i19 == 90 || i19 == 270) ? 0.75f : 1.3333334f;
                    }
                    boolean z10 = f10 > f13;
                    if (i16 == 0) {
                        if (z10) {
                            i11 = (int) (f11 / f10);
                        } else {
                            i10 = (int) (f12 * f10);
                        }
                    } else if (i16 != 1) {
                        if (i16 == 4 || i16 == 5) {
                            if (z10) {
                                i11 = (int) (f11 / f10);
                            } else {
                                i10 = (int) (f12 * f10);
                            }
                        } else if (z10) {
                            i10 = Math.min(this.mVideoWidth, i10);
                            i11 = (int) (i10 / f10);
                        } else {
                            i11 = Math.min(this.mVideoHeight, i11);
                            i10 = (int) (i11 * f10);
                        }
                    } else if (z10) {
                        i10 = (int) (f12 * f10);
                    } else {
                        i11 = (int) (f11 / f10);
                    }
                } else if (mode == 1073741824 && mode2 == 1073741824) {
                    int i20 = this.mVideoWidth;
                    int i21 = i20 * i11;
                    int i22 = this.mVideoHeight;
                    if (i21 < i10 * i22) {
                        i10 = (i20 * i11) / i22;
                    } else if (i20 * i11 > i10 * i22) {
                        i13 = (i22 * i10) / i20;
                        i11 = i13;
                    }
                } else if (mode == 1073741824) {
                    int i23 = (this.mVideoHeight * i10) / this.mVideoWidth;
                    if (mode2 != Integer.MIN_VALUE || i23 <= i11) {
                        i11 = i23;
                    }
                } else if (mode2 == 1073741824) {
                    int i24 = (this.mVideoWidth * i11) / this.mVideoHeight;
                    if (mode != Integer.MIN_VALUE || i24 <= i10) {
                        i10 = i24;
                    }
                } else {
                    int i25 = this.mVideoWidth;
                    int i26 = this.mVideoHeight;
                    if (mode2 != Integer.MIN_VALUE || i26 <= i11) {
                        i12 = i25;
                        i11 = i26;
                    } else {
                        i12 = (i11 * i25) / i26;
                    }
                    if (mode != Integer.MIN_VALUE || i12 <= i10) {
                        i10 = i12;
                    } else {
                        i13 = (i26 * i10) / i25;
                        i11 = i13;
                    }
                }
                int i27 = this.mVideoWidth;
                if (i10 > i27 || i11 > this.mVideoHeight) {
                    i11 = this.mVideoHeight;
                    i10 = i27;
                }
            }
        }
        this.mMeasuredWidth = i10;
        this.mMeasuredHeight = i11;
    }

    public int getMeasuredHeight() {
        return this.mMeasuredHeight;
    }

    public int getMeasuredWidth() {
        return this.mMeasuredWidth;
    }

    public int getVideoRotationDegree() {
        return this.mVideoRotationDegree;
    }

    public View getView() {
        WeakReference<View> weakReference = this.mWeakView;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void setAspectRatio(int i10) {
        this.mCurrentAspectRatio = i10;
    }

    public void setVideoRotation(int i10) {
        this.mVideoRotationDegree = i10;
    }

    public void setVideoSampleAspectRatio(int i10, int i11) {
        this.mVideoSarNum = i10;
        this.mVideoSarDen = i11;
    }

    public void setVideoSize(int i10, int i11) {
        this.mVideoWidth = i10;
        this.mVideoHeight = i11;
    }
}
