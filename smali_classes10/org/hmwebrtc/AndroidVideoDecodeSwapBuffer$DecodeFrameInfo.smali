.class Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeFrameInfo"
.end annotation


# instance fields
.field createTimeMs:J

.field decodeTimeMs:Ljava/lang/Integer;

.field height:I

.field outputIndex:I

.field presentationTimeUs:J

.field rotation:I

.field widht:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;-><init>()V

    return-void
.end method
