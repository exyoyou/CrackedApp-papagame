package org.hmwebrtc;

/* JADX INFO: loaded from: classes10.dex */
public class GlRectDrawer extends GlGenericDrawer {
    private static final String FRAGMENT_SHADER = "void main() {\n  gl_FragColor = sample(tc);\n}\n";

    private static class ShaderCallbacks implements GlGenericDrawer.ShaderCallbacks {
        private ShaderCallbacks() {
        }

        @Override // org.hmwebrtc.GlGenericDrawer.ShaderCallbacks
        public void onNewShader(GlShader glShader) {
        }

        @Override // org.hmwebrtc.GlGenericDrawer.ShaderCallbacks
        public void onPrepareShader(GlShader glShader, float[] fArr, int i10, int i11, int i12, int i13) {
        }
    }

    public GlRectDrawer() {
        super(FRAGMENT_SHADER, new ShaderCallbacks());
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void drawOes(int i10, float[] fArr, int i11, int i12, int i13, int i14, int i15, int i16) {
        super.drawOes(i10, fArr, i11, i12, i13, i14, i15, i16);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void drawRgb(int i10, float[] fArr, int i11, int i12, int i13, int i14, int i15, int i16) {
        super.drawRgb(i10, fArr, i11, i12, i13, i14, i15, i16);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void drawYuv(int[] iArr, float[] fArr, int i10, int i11, int i12, int i13, int i14, int i15) {
        super.drawYuv(iArr, fArr, i10, i11, i12, i13, i14, i15);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ boolean getImageAdjustable() {
        return super.getImageAdjustable();
    }

    @Override // org.hmwebrtc.GlGenericDrawer
    public /* bridge */ /* synthetic */ boolean getOptimizedUnsharpMask() {
        return super.getOptimizedUnsharpMask();
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ boolean getUnsharpMaskEnabled() {
        return super.getUnsharpMaskEnabled();
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setBlackWhiteDisplay(boolean z10) {
        super.setBlackWhiteDisplay(z10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setBrightnessRatio(float f10) {
        super.setBrightnessRatio(f10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setContrastRatio(float f10) {
        super.setContrastRatio(f10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setImageAdjustable(boolean z10) {
        super.setImageAdjustable(z10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer
    public /* bridge */ /* synthetic */ void setOptimizedUnsharpMask(boolean z10) {
        super.setOptimizedUnsharpMask(z10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setSaturationRatio(float f10) {
        super.setSaturationRatio(f10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setUnsharpMaskAmount(float f10) {
        super.setUnsharpMaskAmount(f10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setUnsharpMaskEnabled(boolean z10) {
        super.setUnsharpMaskEnabled(z10);
    }

    @Override // org.hmwebrtc.GlGenericDrawer, org.hmwebrtc.RendererCommon.GlDrawer
    public /* bridge */ /* synthetic */ void setUnsharpMaskThreshold(float f10) {
        super.setUnsharpMaskThreshold(f10);
    }
}
