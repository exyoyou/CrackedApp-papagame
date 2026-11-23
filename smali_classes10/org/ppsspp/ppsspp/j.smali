.class public final synthetic Lorg/ppsspp/ppsspp/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/os/PowerManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/PowerManager;->isSustainedPerformanceModeSupported()Z

    move-result p0

    return p0
.end method
