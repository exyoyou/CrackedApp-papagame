.class final Lcom/zxing/android/decoding/d;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "d"


# instance fields
.field private final a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

.field private final b:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;Ljava/util/Hashtable;)V
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
            "Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;",
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
    iput-object v0, p0, Lcom/zxing/android/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/zxing/android/decoding/d;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 15
    .line 16
    return-void
.end method

.method private a([BII)V
    .locals 8
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
    array-length v2, p1

    .line 6
    new-array v2, v2, [B

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, p3, :cond_1

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_1
    if-ge v5, p2, :cond_0

    .line 14
    .line 15
    mul-int v6, v5, p3

    .line 16
    .line 17
    add-int/2addr v6, p3

    .line 18
    sub-int/2addr v6, v4

    .line 19
    add-int/lit8 v6, v6, -0x1

    .line 20
    .line 21
    mul-int v7, v4, p2

    .line 22
    .line 23
    add-int/2addr v7, v5

    .line 24
    aget-byte v7, p1, v7

    .line 25
    .line 26
    aput-byte v7, v2, v6

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/zxing/android/decoding/d;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getCameraManager()Lcom/zxing/android/camera/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v2, p3, p2}, Lcom/zxing/android/camera/c;->a([BII)Lcom/zxing/android/camera/e;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    .line 45
    .line 46
    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    .line 47
    .line 48
    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object p3, p0, Lcom/zxing/android/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    .line 55
    .line 56
    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    .line 57
    .line 58
    .line 59
    move-result-object p2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object p3, p0, Lcom/zxing/android/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    iget-object p2, p0, Lcom/zxing/android/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :catch_0
    iget-object p2, p0, Lcom/zxing/android/decoding/d;->b:Lcom/google/zxing/MultiFormatReader;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 76
    .line 77
    .line 78
    const/4 p2, 0x0

    .line 79
    :goto_2
    if-eqz p2, :cond_2

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "Found barcode ("

    .line 91
    .line 92
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    sub-long/2addr v2, v0

    .line 96
    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " ms):\n"

    .line 100
    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object p3, p0, Lcom/zxing/android/decoding/d;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 112
    .line 113
    invoke-virtual {p3}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getHandler()Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    const/4 v0, 0x4

    .line 118
    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    new-instance p3, Landroid/os/Bundle;

    .line 123
    .line 124
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v0, "barcode_bitmap"

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/zxing/android/camera/e;->a()Landroid/graphics/Bitmap;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/zxing/android/decoding/d;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getHandler()Landroid/os/Handler;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const/4 p2, 0x3

    .line 150
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 155
    .line 156
    .line 157
    :goto_3
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
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/16 p1, 0x8

    .line 7
    .line 8
    if-eq v0, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, [B

    .line 22
    .line 23
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 24
    .line 25
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 26
    .line 27
    invoke-direct {p0, v0, v1, p1}, Lcom/zxing/android/decoding/d;->a([BII)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
