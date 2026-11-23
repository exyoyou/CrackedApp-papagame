.class final Lcom/join/mgps/zxing/decoding/b;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "b"


# instance fields
.field private final a:Lcom/join/mgps/zxing/CaptureActivity;

.field private final b:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/join/mgps/zxing/CaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "hints"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/zxing/CaptureActivity;",
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/b;->b:Lcom/google/zxing/MultiFormatReader;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/b;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 15
    .line 16
    return-void
.end method

.method private a([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, p1, p2, p3}, Lcom/join/mgps/zxing/camera/c;->a([BII)Lcom/join/mgps/zxing/camera/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    .line 14
    .line 15
    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    .line 16
    .line 17
    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/zxing/decoding/b;->b:Lcom/google/zxing/MultiFormatReader;

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 26
    .line 27
    .line 28
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p3, p0, Lcom/join/mgps/zxing/decoding/b;->b:Lcom/google/zxing/MultiFormatReader;

    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    iget-object p2, p0, Lcom/join/mgps/zxing/decoding/b;->b:Lcom/google/zxing/MultiFormatReader;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_0
    iget-object p2, p0, Lcom/join/mgps/zxing/decoding/b;->b:Lcom/google/zxing/MultiFormatReader;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    :goto_0
    if-eqz p2, :cond_0

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "Found barcode ("

    .line 60
    .line 61
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    sub-long/2addr v2, v0

    .line 65
    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " ms):\n"

    .line 69
    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object p3, p0, Lcom/join/mgps/zxing/decoding/b;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 81
    .line 82
    invoke-virtual {p3}, Lcom/join/mgps/zxing/CaptureActivity;->getHandler()Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    const v0, 0x7f0a047d

    .line 87
    .line 88
    .line 89
    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance p3, Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v0, "barcode_bitmap"

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/zxing/camera/f;->c()Landroid/graphics/Bitmap;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/b;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/zxing/CaptureActivity;->getHandler()Landroid/os/Handler;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const p2, 0x7f0a047c

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, 0x7f0a047b

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, [B

    .line 11
    .line 12
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 15
    .line 16
    invoke-direct {p0, v0, v1, p1}, Lcom/join/mgps/zxing/decoding/b;->a([BII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p1, 0x7f0a12ed

    .line 21
    .line 22
    .line 23
    if-ne v0, p1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
