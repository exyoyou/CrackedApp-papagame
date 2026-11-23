.class public Lorg/hmwebrtc/log/JNILogCompress;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static LibzipCompress([BI[B)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/hmwebrtc/log/JNILogCompress;->nativeLZCompress([BI[B)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static native nativeLZCompress([BI[B)I
.end method
