.class public Lcom/haima/hmcp/business/display/HmScreenMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/display/HmScreenOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HmScreenMonitor"

.field private static final UNKNOW_OS_ROTATION:I = -0x1

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

.field private mConfig:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

.field private mContext:Landroid/content/Context;

.field private mHmScreenOrientationListener:Lcom/haima/hmcp/business/display/HmScreenOrientationListener;

.field private mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

.field private mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 7
    .line 8
    new-instance p2, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object p2, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string p2, "window"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/WindowManager;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    .line 31
    :cond_0
    new-instance p1, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mConfig:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 37
    .line 38
    new-instance p1, Lcom/haima/hmcp/business/display/DataProcessor;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/haima/hmcp/business/display/DataProcessor;-><init>(Lcom/haima/hmcp/business/IWebSocket;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 46
    .line 47
    return-void
.end method

.method private getOSVersion()I
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    return v0
.end method

.method private getScreenRotation(Landroid/content/Context;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const-string v0, "window"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/WindowManager;

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private internalRegister()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "not register, cause Context is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "not register, cause IWebSocket is null"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "config: "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mConfig:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-string v2, "display"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    new-instance v2, Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mWindowManager:Landroid/view/WindowManager;

    .line 66
    .line 67
    invoke-direct {v2, v3, p0}, Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;-><init>(Landroid/view/WindowManager;Lcom/haima/hmcp/business/display/HmScreenOrientationListener;)V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object v2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 77
    .line 78
    sget-object v3, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "register..."

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "12720"

    .line 89
    .line 90
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private internalUnregister()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/DataProcessor;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "display"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;->release()V

    .line 32
    .line 33
    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mSysDisplayListener:Lcom/haima/hmcp/business/display/HmScreenMonitor$HmDisplayListenerImp;

    .line 36
    .line 37
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "unregister..."

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "12721"

    .line 45
    .line 46
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mConfig:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->isEnable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onScreenOrientationChanged(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "android os screen orientation changed, orientation = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mHmScreenOrientationListener:Lcom/haima/hmcp/business/display/HmScreenOrientationListener;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lcom/haima/hmcp/business/display/HmScreenOrientationListener;->onScreenOrientationChanged(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string p1, "send data fail when screen orientation changed"

    .line 35
    .line 36
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "data processor is null, send data fail"

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "OS rotation: "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "12722"

    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->sendData(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public parseMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "data processor is null, parse message fail"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->receivePayload(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public register()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->getOSVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "not register, cause android version is too low, version: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->getOSVersion()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->internalRegister()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "release..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/DataProcessor;->release()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 26
    .line 27
    :cond_1
    iput-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mWebSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mWindowManager:Landroid/view/WindowManager;

    .line 32
    .line 33
    return-void
.end method

.method public sendScreenOrientation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "not send screen orientation, cause Context is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->getScreenRotation(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Android OS rotation = "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 40
    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const-string v0, "data processor is null, send data fail"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-virtual {v2, v0}, Lcom/haima/hmcp/business/display/DataProcessor;->sendData(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mConfig:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mConfig:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->dataProcessor:Lcom/haima/hmcp/business/display/DataProcessor;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "data processor is null, set config fail"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mConfig:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/business/display/DataProcessor;->setConfig(Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setHmScreenOrientationListener(Lcom/haima/hmcp/business/display/HmScreenOrientationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->mHmScreenOrientationListener:Lcom/haima/hmcp/business/display/HmScreenOrientationListener;

    .line 2
    .line 3
    return-void
.end method

.method public unregister()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->getOSVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "not unregister, cause android version is too low, version: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->getOSVersion()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/HmScreenMonitor;->internalUnregister()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
