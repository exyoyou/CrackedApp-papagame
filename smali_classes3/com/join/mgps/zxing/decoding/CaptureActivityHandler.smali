.class public final Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "CaptureActivityHandler"


# instance fields
.field private final a:Lcom/join/mgps/zxing/CaptureActivity;

.field private final b:Lcom/join/mgps/zxing/decoding/c;

.field private c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
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
            "Lcom/join/mgps/zxing/CaptureActivity;",
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
    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/zxing/decoding/c;

    .line 7
    .line 8
    new-instance v1, Lcom/join/mgps/zxing/view/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/zxing/CaptureActivity;->getViewfinderView()Lcom/join/mgps/zxing/view/ViewfinderView;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Lcom/join/mgps/zxing/view/b;-><init>(Lcom/join/mgps/zxing/view/ViewfinderView;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/join/mgps/zxing/decoding/c;-><init>(Lcom/join/mgps/zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/zxing/camera/c;->l()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/zxing/decoding/c;->a()Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f0a047b

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/zxing/camera/c;->k(Landroid/os/Handler;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0a0132

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/zxing/camera/c;->j(Landroid/os/Handler;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/zxing/CaptureActivity;->drawViewfinder()V

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
    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 4
    .line 5
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->m()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/c;->a()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f0a12ed

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    const v0, 0x7f0a047d

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a047c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
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
    const v1, 0x7f0a0132

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 9
    .line 10
    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 11
    .line 12
    if-ne p1, v0, :cond_6

    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0, v1}, Lcom/join/mgps/zxing/camera/c;->j(Landroid/os/Handler;I)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    const v1, 0x7f0a1381

    .line 24
    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b()V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    const v1, 0x7f0a047d

    .line 34
    .line 35
    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    sget-object v0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "barcode_bitmap"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/graphics/Bitmap;

    .line 57
    .line 58
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 59
    .line 60
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lcom/google/zxing/Result;

    .line 63
    .line 64
    invoke-virtual {v1, p1, v0}, Lcom/join/mgps/zxing/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const v1, 0x7f0a047c

    .line 69
    .line 70
    .line 71
    if-ne v0, v1, :cond_4

    .line 72
    .line 73
    sget-object p1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->c:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler$State;

    .line 76
    .line 77
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->b:Lcom/join/mgps/zxing/decoding/c;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/c;->a()Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const v1, 0x7f0a047b

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/zxing/camera/c;->k(Landroid/os/Handler;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const v1, 0x7f0a1385

    .line 95
    .line 96
    .line 97
    if-ne v0, v1, :cond_5

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 100
    .line 101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Landroid/content/Intent;

    .line 104
    .line 105
    const/4 v1, -0x1

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    const v1, 0x7f0a0deb

    .line 116
    .line 117
    .line 118
    if-ne v0, v1, :cond_6

    .line 119
    .line 120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Ljava/lang/String;

    .line 123
    .line 124
    new-instance v0, Landroid/content/Intent;

    .line 125
    .line 126
    const-string v1, "android.intent.action.VIEW"

    .line 127
    .line 128
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    const/high16 p1, 0x80000

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a:Lcom/join/mgps/zxing/CaptureActivity;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_1
    return-void
.end method
