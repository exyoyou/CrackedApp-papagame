.class Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataMask101"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask101;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .locals 0

    .line 1
    mul-int p1, p1, p2

    .line 2
    .line 3
    and-int/lit8 p2, p1, 0x1

    .line 4
    .line 5
    rem-int/lit8 p1, p1, 0x3

    .line 6
    .line 7
    add-int/2addr p2, p1

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method
