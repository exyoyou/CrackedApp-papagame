.class public Lcom/join/mgps/zxing/CaptureActivity;
.super Lcom/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private cancelScanButton:Landroid/widget/Button;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private viewfinderView:Lcom/join/mgps/zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/zxing/CaptureActivity$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/zxing/CaptureActivity$b;-><init>(Lcom/join/mgps/zxing/CaptureActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 10
    .line 11
    return-void
.end method

.method private initBeepSound()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->playBeep:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/media/MediaPlayer;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f110004

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    .line 63
    const v1, 0x3dcccccd    # 0.1f

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 77
    .line 78
    :cond_0
    :goto_0
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceHolder"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/zxing/camera/c;->h(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->handler:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p1, p0, v0, v1}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;-><init>(Lcom/join/mgps/zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->handler:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 22
    .line 23
    :catch_0
    :cond_0
    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->playBeep:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->vibrate:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "vibrator"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/os/Vibrator;

    .line 23
    .line 24
    const-wide/16 v1, 0xc8

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->viewfinderView:Lcom/join/mgps/zxing/view/ViewfinderView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/zxing/view/ViewfinderView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->handler:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewfinderView()Lcom/join/mgps/zxing/view/ViewfinderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->viewfinderView:Lcom/join/mgps/zxing/view/ViewfinderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "barcode"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/zxing/CaptureActivity;->inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/zxing/decoding/g;->b()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/zxing/CaptureActivity;->playBeepSoundAndVibrate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, ""

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const-string p1, "Scan failed!"

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "result"

    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const/4 p1, -0x1

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d08ce

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/BaseActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/join/mgps/zxing/camera/c;->g(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0a1b9d

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/join/mgps/zxing/view/ViewfinderView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->viewfinderView:Lcom/join/mgps/zxing/view/ViewfinderView;

    .line 27
    .line 28
    const p1, 0x7f0a0283

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/Button;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->cancelScanButton:Landroid/widget/Button;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->hasSurface:Z

    .line 41
    .line 42
    new-instance p1, Lcom/join/mgps/zxing/decoding/g;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/join/mgps/zxing/decoding/g;-><init>(Landroid/app/Activity;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

    .line 48
    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/g;->c()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->handler:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;->a()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->handler:Lcom/join/mgps/zxing/decoding/CaptureActivityHandler;

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->b()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a128d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/SurfaceView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->hasSurface:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/join/mgps/zxing/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->playBeep:Z

    .line 39
    .line 40
    const-string v1, "audio"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/media/AudioManager;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x2

    .line 53
    if-eq v1, v2, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/join/mgps/zxing/CaptureActivity;->playBeep:Z

    .line 57
    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/zxing/CaptureActivity;->initBeepSound()V

    .line 59
    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->vibrate:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->cancelScanButton:Landroid/widget/Button;

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/zxing/CaptureActivity$a;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/zxing/CaptureActivity$a;-><init>(Lcom/join/mgps/zxing/CaptureActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->hasSurface:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/zxing/CaptureActivity;->hasSurface:Z

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/zxing/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/zxing/CaptureActivity;->hasSurface:Z

    .line 3
    .line 4
    return-void
.end method
