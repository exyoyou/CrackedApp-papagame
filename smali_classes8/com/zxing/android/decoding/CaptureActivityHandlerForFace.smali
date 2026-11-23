.class public final Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "CaptureActivityHandlerForFace"


# instance fields
.field private final a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

.field private final b:Lcom/zxing/android/decoding/f;

.field private c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "decodeFormats",
            "characterSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;",
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 5
    .line 6
    new-instance v0, Lcom/zxing/android/decoding/f;

    .line 7
    .line 8
    new-instance v1, Lcom/zxing/android/view/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getViewfinderView()Lcom/zxing/android/view/ViewfinderView;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Lcom/zxing/android/view/a;-><init>(Lcom/zxing/android/view/ViewfinderView;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/zxing/android/decoding/f;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->b:Lcom/zxing/android/decoding/f;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    sget-object p2, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;->SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getCameraManager()Lcom/zxing/android/camera/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/zxing/android/camera/c;->k()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->b()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 2
    .line 3
    sget-object v1, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;->SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;->PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getCameraManager()Lcom/zxing/android/camera/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->b:Lcom/zxing/android/decoding/f;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/zxing/android/decoding/f;->a()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/zxing/android/camera/c;->i(Landroid/os/Handler;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getCameraManager()Lcom/zxing/android/camera/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, p0, v1}, Lcom/zxing/android/camera/c;->h(Landroid/os/Handler;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->drawViewfinder()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;->DONE:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getCameraManager()Lcom/zxing/android/camera/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->l()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->b:Lcom/zxing/android/decoding/f;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/zxing/android/decoding/f;->a()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->b:Lcom/zxing/android/decoding/f;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    const/4 v0, 0x4

    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

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
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_6

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_5

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x7

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 26
    .line 27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Landroid/content/Intent;

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->b()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    new-instance v0, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v1, "android.intent.action.VIEW"

    .line 52
    .line 53
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    const/high16 p1, 0x80000

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;->SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-string v1, "barcode_bitmap"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/graphics/Bitmap;

    .line 90
    .line 91
    :goto_0
    iget-object v1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 92
    .line 93
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lcom/google/zxing/Result;

    .line 96
    .line 97
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    sget-object p1, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;->PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getCameraManager()Lcom/zxing/android/camera/c;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->b:Lcom/zxing/android/decoding/f;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/zxing/android/decoding/f;->a()Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, 0x2

    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/zxing/android/camera/c;->i(Landroid/os/Handler;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->c:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 123
    .line 124
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;->PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace$State;

    .line 125
    .line 126
    if-ne p1, v0, :cond_7

    .line 127
    .line 128
    iget-object p1, p0, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getCameraManager()Lcom/zxing/android/camera/c;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, p0, v1}, Lcom/zxing/android/camera/c;->h(Landroid/os/Handler;I)V

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_1
    return-void
.end method
