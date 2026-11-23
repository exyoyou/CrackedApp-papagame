.class public final synthetic Lorg/hmwebrtc/audio/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/media/AudioRecord;)Landroid/media/AudioFormat;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method
