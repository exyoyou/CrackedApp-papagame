.class public Lcom/zxing/android/CaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final n:Ljava/lang/String; = "RESULT"

.field private static final o:J = 0xc8L


# instance fields
.field private b:Lcom/zxing/android/decoding/CaptureActivityHandler;

.field private c:Lcom/zxing/android/view/ViewfinderView;

.field private d:Landroid/view/SurfaceView;

.field private e:Z

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/zxing/android/decoding/h;

.field private i:Landroid/media/MediaPlayer;

.field private j:Z

.field private k:Z

.field l:Lcom/zxing/android/camera/c;

.field private final m:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/zxing/android/CaptureActivity$c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/zxing/android/CaptureActivity$c;-><init>(Lcom/zxing/android/CaptureActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 10
    .line 11
    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

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
    iput-object v1, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/zxing/android/CaptureActivity;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "qrbeep.ogg"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

    .line 58
    .line 59
    const v1, 0x3dcccccd    # 0.1f

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

    .line 73
    .line 74
    :cond_0
    :goto_0
    return-void
.end method

.method private g(Landroid/view/SurfaceHolder;)V
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
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->l:Lcom/zxing/android/camera/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/zxing/android/camera/c;->f(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->f:Ljava/util/Vector;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/zxing/android/CaptureActivity;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p1, p0, v0, v1}, Lcom/zxing/android/decoding/CaptureActivityHandler;-><init>(Lcom/zxing/android/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 20
    .line 21
    :catch_0
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->i:Landroid/media/MediaPlayer;

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
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->k:Z

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

.method private j(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "rawResult",
            "barcode"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 12
    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "\u7c7b\u578b:"

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "\n \u7ed3\u679c\uff1a"

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    .line 50
    new-instance p2, Lcom/zxing/android/CaptureActivity$a;

    .line 51
    .line 52
    invoke-direct {p2, p0, p1}, Lcom/zxing/android/CaptureActivity$a;-><init>(Lcom/zxing/android/CaptureActivity;Lcom/google/zxing/Result;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "\u786e\u5b9a"

    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/zxing/android/CaptureActivity$b;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/zxing/android/CaptureActivity$b;-><init>(Lcom/zxing/android/CaptureActivity;)V

    .line 63
    .line 64
    .line 65
    const-string p2, "\u91cd\u65b0\u626b\u63cf"

    .line 66
    .line 67
    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->c:Lcom/zxing/android/view/ViewfinderView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/zxing/android/view/ViewfinderView;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Lcom/zxing/android/camera/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->l:Lcom/zxing/android/camera/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lcom/zxing/android/view/ViewfinderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->c:Lcom/zxing/android/view/ViewfinderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
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
    iget-object p2, p0, Lcom/zxing/android/CaptureActivity;->h:Lcom/zxing/android/decoding/h;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/zxing/android/decoding/h;->b()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/zxing/android/CaptureActivity;->h()V

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

.method public i(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMS"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    .line 9
    .line 10
    :cond_0
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
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0d002a

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x7f0a164f

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/SurfaceView;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->d:Landroid/view/SurfaceView;

    .line 24
    .line 25
    const p1, 0x7f0a1b9e

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/zxing/android/view/ViewfinderView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->c:Lcom/zxing/android/view/ViewfinderView;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/16 v0, 0x80

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/zxing/android/CaptureActivity;->e:Z

    .line 47
    .line 48
    new-instance p1, Lcom/zxing/android/decoding/h;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lcom/zxing/android/decoding/h;-><init>(Landroid/app/Activity;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/zxing/android/CaptureActivity;->h:Lcom/zxing/android/decoding/h;

    .line 54
    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->h:Lcom/zxing/android/decoding/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/zxing/android/decoding/h;->c()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
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
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/16 v0, 0x50

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x1b

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/zxing/android/decoding/CaptureActivityHandler;->a()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->b:Lcom/zxing/android/decoding/CaptureActivityHandler;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->l:Lcom/zxing/android/camera/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->b()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

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
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->l:Lcom/zxing/android/camera/c;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/zxing/android/CaptureActivity;->c:Lcom/zxing/android/view/ViewfinderView;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/zxing/android/view/ViewfinderView;->setCameraManager(Lcom/zxing/android/camera/c;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/zxing/android/CaptureActivity;->d:Landroid/view/SurfaceView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-boolean v2, p0, Lcom/zxing/android/CaptureActivity;->e:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/zxing/android/CaptureActivity;->g(Landroid/view/SurfaceHolder;)V

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
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->f:Ljava/util/Vector;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/zxing/android/CaptureActivity;->g:Ljava/lang/String;

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/zxing/android/CaptureActivity;->j:Z

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
    iput-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->j:Z

    .line 75
    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/zxing/android/CaptureActivity;->f()V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/zxing/android/CaptureActivity;->k:Z

    .line 80
    .line 81
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
    iget-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/zxing/android/CaptureActivity;->e:Z

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/zxing/android/CaptureActivity;->g(Landroid/view/SurfaceHolder;)V

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
    iput-boolean p1, p0, Lcom/zxing/android/CaptureActivity;->e:Z

    .line 3
    .line 4
    return-void
.end method
