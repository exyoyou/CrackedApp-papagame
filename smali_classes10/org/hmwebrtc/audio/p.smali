.class public final synthetic Lorg/hmwebrtc/audio/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/media/AudioFormat;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result p0

    return p0
.end method
