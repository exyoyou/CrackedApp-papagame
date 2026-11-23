.class public Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;
.super Lcom/join/mgps/baseactivity/BaseLoadingActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;
    }
.end annotation


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field public static final REQUEST_CODE_ASK_CAMERA:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "FaceTransferScanQrCodeActivity"

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field PWD:Ljava/lang/String;

.field SSID:Ljava/lang/String;

.field apWifiManager:Lcom/join/mgps/helper/ApWifiManager;

.field private back_img:Landroid/widget/ImageView;

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field cameraManager:Lcom/zxing/android/camera/c;

.field private characterSet:Ljava/lang/String;

.field private connectSuccess:Z

.field connection:Landroid/content/ServiceConnection;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

.field hasConnectedWifi:Z

.field private hasSurface:Z

.field private inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

.field mApWifiUtil:Lcom/join/mgps/Util/k;

.field mBinder:Lcom/join/mgps/service/SocketClientService$a;

.field mContext:Landroid/content/Context;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field openWifi:Z

.field operate1:Ljava/lang/Runnable;

.field operate2:Ljava/lang/Runnable;

.field private playBeep:Z

.field receiver:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;

.field serviceBound:Z

.field surfaceView:Landroid/view/SurfaceView;

.field private title_txt:Landroid/widget/TextView;

.field private vibrate:Z

.field private viewfinderView:Lcom/zxing/android/view/ViewfinderView;

.field wifiUtil:Lcom/join/mgps/Util/WifiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->SSID:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->PWD:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->receiver:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->openWifi:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasConnectedWifi:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->serviceBound:Z

    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/activity/c1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/c1;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->operate2:Ljava/lang/Runnable;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/activity/d1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/d1;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->operate1:Ljava/lang/Runnable;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mBinder:Lcom/join/mgps/service/SocketClientService$a;

    .line 37
    .line 38
    new-instance v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$b;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connection:Landroid/content/ServiceConnection;

    .line 44
    .line 45
    new-instance v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$c;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$c;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 51
    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getPermission()V
    .locals 2

    .line 1
    const-string v0, "android.permission.CAMERA"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x7b

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->startCameral()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private initBeepSound()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->playBeep:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

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
    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 28
    .line 29
    .line 30
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
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

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
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

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
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

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
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->cameraManager:Lcom/zxing/android/camera/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/zxing/android/camera/c;->f(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->handler:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->decodeFormats:Ljava/util/Vector;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->characterSet:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p1, p0, v0, v1}, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;Ljava/util/Vector;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->handler:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    .line 20
    .line 21
    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->lambda$new$1()V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connectSuccess:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u8fde\u63a5\u7f51\u7edc:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->SSID:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connectSuccess:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/q3;->h(Landroid/content/Context;)Lcom/join/mgps/Util/q3;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->SSID:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->PWD:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/q3;->c(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/q3;->a(Landroid/net/wifi/WifiConfiguration;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->operate2:Ljava/lang/Runnable;

    .line 25
    .line 26
    const-wide/16 v2, 0x1b58

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->playBeep:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

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
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->vibrate:Z

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

.method private startCameral()V
    .locals 3

    .line 1
    const v0, 0x7f0a128d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/SurfaceView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasSurface:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->decodeFormats:Ljava/util/Vector;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->characterSet:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->playBeep:Z

    .line 38
    .line 39
    const-string v1, "audio"

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/media/AudioManager;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x2

    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->playBeep:Z

    .line 56
    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initBeepSound()V

    .line 58
    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->vibrate:Z

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method connectApWifi()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->showLoadingLayout()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->apWifiManager:Lcom/join/mgps/helper/ApWifiManager;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->SSID:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->PWD:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/helper/ApWifiManager;->connectApWifi(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->operate2:Ljava/lang/Runnable;

    .line 18
    .line 19
    const-wide/16 v2, 0x2ee0

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method connected2Service()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/service/SocketClientService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/Util/WifiUtils;->getLocalIPAddress()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "."

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ".1"

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "connected2Service: host"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, ":::\u672c\u5730\u5730\u5740:::"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "host"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connection:Landroid/content/ServiceConnection;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->serviceBound:Z

    .line 78
    .line 79
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->viewfinderView:Lcom/zxing/android/view/ViewfinderView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/zxing/android/view/ViewfinderView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCameraManager()Lcom/zxing/android/camera/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->cameraManager:Lcom/zxing/android/camera/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->handler:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadingLayoutResID()I
    .locals 1

    const v0, 0x7f0a147c

    return v0
.end method

.method public getLoadingMarginTop()I
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "HM 1SLTETD"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-double v0, v0

    .line 22
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 23
    .line 24
    mul-double v0, v0, v2

    .line 25
    .line 26
    double-to-int v0, v0

    .line 27
    return v0

    .line 28
    :cond_0
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->getLoadingMarginTop()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public getViewfinderView()Lcom/zxing/android/view/ViewfinderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->viewfinderView:Lcom/zxing/android/view/ViewfinderView;

    .line 2
    .line 3
    return-object v0
.end method

.method goGameTransfer()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/GameTransferActivity_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Flag"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 3
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
    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/zxing/decoding/g;->b()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->playBeepSoundAndVibrate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "handleDecode: \u626b\u63cf\u7ed3\u679c"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, ""

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    const-string p1, "Scan failed!"

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const-string p2, ":"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    array-length p2, p1

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "handleDecode: \u626b\u63cf\u7ed3\u679c::::"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ":::::size::::"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/4 v1, 0x4

    .line 78
    if-ne p2, v1, :cond_2

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    aget-object v0, p1, p2

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->SSID:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v0, 0x3

    .line 86
    aget-object p1, p1, v0

    .line 87
    .line 88
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->PWD:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_1

    .line 97
    .line 98
    iput-boolean p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->openWifi:Z

    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/Util/k;->f()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/WifiUtils;->openWifi(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connectApWifi()V

    .line 114
    .line 115
    .line 116
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 117
    .line 118
    const/16 p2, 0x8

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->viewfinderView:Lcom/zxing/android/view/ViewfinderView;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->registWifiConnected()V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    const p1, 0x7f12010d

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void
.end method

.method initView()V
    .locals 2

    .line 1
    const v0, 0x7f0a1b9d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/zxing/android/view/ViewfinderView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->viewfinderView:Lcom/zxing/android/view/ViewfinderView;

    .line 11
    .line 12
    const v0, 0x7f0a1790

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->title_txt:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a014e

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->back_img:Landroid/widget/ImageView;

    .line 33
    .line 34
    new-instance v1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$a;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$a;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->title_txt:Landroid/widget/TextView;

    .line 43
    .line 44
    const v1, 0x7f1204e7

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasSurface:Z

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/zxing/decoding/g;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/zxing/decoding/g;-><init>(Landroid/app/Activity;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

    .line 59
    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
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
    new-instance p1, Lcom/zxing/android/camera/c;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/zxing/android/camera/c;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->cameraManager:Lcom/zxing/android/camera/c;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const v0, 0x7f1204d2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setLoadingHintMsg(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0d025e

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->setContentView(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance p1, Lcom/join/mgps/helper/ApWifiManager;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/join/mgps/helper/ApWifiManager;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->apWifiManager:Lcom/join/mgps/helper/ApWifiManager;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->wifiUtil:Lcom/join/mgps/Util/WifiUtils;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/Util/k;->i(Landroid/content/Context;)Lcom/join/mgps/Util/k;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->mApWifiUtil:Lcom/join/mgps/Util/k;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->hideLoadingLayout()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initView()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->getPermission()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->inactivityTimer:Lcom/join/mgps/zxing/decoding/g;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/zxing/decoding/g;->c()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->unRegistWifiConnected()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->removeCallbacks()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->stopService()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->handler:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;->a()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->handler:Lcom/zxing/android/decoding/CaptureActivityHandlerForFace;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->cameraManager:Lcom/zxing/android/camera/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->b()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1
    const/16 v0, 0x7b

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    aget p2, p3, p1

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->startCameral()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p2, "android.permission.CAMERA"

    .line 19
    .line 20
    invoke-static {p0, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    const-string p2, "\u626b\u63cf\u4e8c\u7ef4\u7801\u9700\u8981\u76f8\u673a\u6743\u9650,\u8bf7\u6388\u6743\u76f8\u673a\u6743\u9650"

    .line 27
    .line 28
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    const-string p2, "\u6ca1\u6709\u83b7\u53d6\u5230\u6743\u9650,\u8bf7\u6388\u6743\u76f8\u673a\u6743\u9650"

    .line 37
    .line 38
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/zxing/android/camera/c;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v2}, Lcom/zxing/android/camera/c;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->cameraManager:Lcom/zxing/android/camera/c;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->viewfinderView:Lcom/zxing/android/view/ViewfinderView;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/zxing/android/view/ViewfinderView;->setCameraManager(Lcom/zxing/android/camera/c;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v2, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasSurface:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->decodeFormats:Ljava/util/Vector;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->characterSet:Ljava/lang/String;

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->playBeep:Z

    .line 57
    .line 58
    const-string v0, "audio"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/media/AudioManager;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, 0x2

    .line 71
    if-eq v0, v2, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->playBeep:Z

    .line 75
    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initBeepSound()V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->vibrate:Z

    .line 80
    .line 81
    return-void
.end method

.method public onSocketStatusEvent(Lcom/join/mgps/socket/entity/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onSocketStatusEvent: 0000"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget p1, p1, Lcom/join/mgps/socket/entity/f;->a:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->stopService()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string p1, "onSocketStatusEvent: \u6210\u529f"

    .line 32
    .line 33
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connectSuccess:Z

    .line 41
    .line 42
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/t;->l0(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->goGameTransfer()V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method registWifiConnected()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;-><init>(Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->receiver:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method removeCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->operate1:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/baseactivity/BaseLoadingActivity;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->operate2:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method stopService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->serviceBound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->connection:Landroid/content/ServiceConnection;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-class v1, Lcom/join/mgps/service/SocketClientService;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
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
    iget-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasSurface:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasSurface:Z

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->initCamera(Landroid/view/SurfaceHolder;)V

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
    iput-boolean p1, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->hasSurface:Z

    .line 3
    .line 4
    return-void
.end method

.method unRegistWifiConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity;->receiver:Lcom/join/mgps/activity/FaceTransferScanQrCodeActivity$NetWorkConnectedReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
