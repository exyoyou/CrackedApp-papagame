.class public Lorg/hmwebrtc/GlRectDrawer;
.super Lorg/hmwebrtc/GlGenericDrawer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/GlRectDrawer$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "void main() {\n  gl_FragColor = sample(tc);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/hmwebrtc/GlRectDrawer$ShaderCallbacks;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/hmwebrtc/GlRectDrawer$ShaderCallbacks;-><init>(Lorg/hmwebrtc/GlRectDrawer$1;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "void main() {\n  gl_FragColor = sample(tc);\n}\n"

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Lorg/hmwebrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Lorg/hmwebrtc/GlGenericDrawer$ShaderCallbacks;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic drawOes(I[FIIIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p8}, Lorg/hmwebrtc/GlGenericDrawer;->drawOes(I[FIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic drawRgb(I[FIIIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p8}, Lorg/hmwebrtc/GlGenericDrawer;->drawRgb(I[FIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic drawYuv([I[FIIIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p8}, Lorg/hmwebrtc/GlGenericDrawer;->drawYuv([I[FIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic getImageAdjustable()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/GlGenericDrawer;->getImageAdjustable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getOptimizedUnsharpMask()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/GlGenericDrawer;->getOptimizedUnsharpMask()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic getUnsharpMaskEnabled()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/GlGenericDrawer;->getUnsharpMaskEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/hmwebrtc/GlGenericDrawer;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setBlackWhiteDisplay(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setBlackWhiteDisplay(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setBrightnessRatio(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setBrightnessRatio(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setContrastRatio(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setContrastRatio(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setImageAdjustable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setImageAdjustable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setOptimizedUnsharpMask(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setOptimizedUnsharpMask(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setSaturationRatio(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setSaturationRatio(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setUnsharpMaskAmount(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setUnsharpMaskAmount(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setUnsharpMaskEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setUnsharpMaskEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setUnsharpMaskThreshold(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/hmwebrtc/GlGenericDrawer;->setUnsharpMaskThreshold(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
