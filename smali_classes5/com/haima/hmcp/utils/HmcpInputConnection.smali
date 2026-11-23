.class public Lcom/haima/hmcp/utils/HmcpInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmcpInputConnection"


# instance fields
.field private currentRootViewVisibleHeight:F

.field private final handler:Landroid/os/Handler;

.field private final hideKeyboardRunnable:Ljava/lang/Runnable;

.field private final initRootViewVisibleHeight:F

.field private isFinish:Z

.field private listener:Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;

.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputConnection;ZLcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance p1, Lcom/haima/hmcp/utils/HmcpInputConnection$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/haima/hmcp/utils/HmcpInputConnection$1;-><init>(Lcom/haima/hmcp/utils/HmcpInputConnection;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->hideKeyboardRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mActivity:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->getRootViewVisibleHeight()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->initRootViewVisibleHeight:F

    .line 27
    .line 28
    sget-object p2, Lcom/haima/hmcp/utils/HmcpInputConnection;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string p4, "HmcpInputConnection\uff1a"

    .line 36
    .line 37
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/utils/HmcpInputConnection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->isNotCoverRootView()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/utils/HmcpInputConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->uploadLog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/utils/HmcpInputConnection;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/utils/HmcpInputConnection;Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$302(Lcom/haima/hmcp/utils/HmcpInputConnection;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->isFinish:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmcpInputConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getRootViewVisibleHeight()F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mActivity:Landroid/app/Activity;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    int-to-float v0, v0

    .line 27
    :cond_0
    return v0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    sget-object v2, Lcom/haima/hmcp/utils/HmcpInputConnection;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "getRootViewVisibleHeight\uff1a"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v0
.end method

.method private isNotCoverRootView()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-direct {p0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->getRootViewVisibleHeight()F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v0, v0

    .line 23
    sub-float v3, v2, v0

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    div-float/2addr v3, v0

    .line 30
    sget-object v0, Lcom/haima/hmcp/utils/HmcpInputConnection;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "\uff1aisCoverRootView\uff1a"

    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const v0, 0x3e4ccccd    # 0.2f

    .line 56
    .line 57
    .line 58
    cmpg-float v0, v3, v0

    .line 59
    .line 60
    if-gez v0, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 64
    :cond_1
    :goto_0
    return v1
.end method

.method private isRootViewVisibleHeightNotChange()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->getRootViewVisibleHeight()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->currentRootViewVisibleHeight:F

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/utils/HmcpInputConnection;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "initRootViewVisibleHeight\uff1a"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->initRootViewVisibleHeight:F

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "---currentRootViewVisibleHeight\uff1a"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->currentRootViewVisibleHeight:F

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->initRootViewVisibleHeight:F

    .line 42
    .line 43
    iget v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->currentRootViewVisibleHeight:F

    .line 44
    .line 45
    cmpl-float v0, v0, v1

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0
.end method

.method private uploadLog()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "initRootViewVisibleHeight\uff1a"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->initRootViewVisibleHeight:F

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "  currentRootViewVisibleHeight\uff1a"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->currentRootViewVisibleHeight:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "finishComposingText\uff1ahide  log=="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "12703"

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public clearHmKeyBoardListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->hideKeyboardRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mActivity:Landroid/app/Activity;

    .line 12
    .line 13
    return-void
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    :goto_0
    new-instance p1, Landroid/view/KeyEvent;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    const/16 v1, 0x43

    .line 18
    .line 19
    invoke-direct {p1, p2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/utils/HmcpInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/view/KeyEvent;

    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/utils/HmcpInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method public finishComposingText()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmcpInputConnection;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "finishComposingText"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->isFinish:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->isFinish:Z

    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->handler:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->hideKeyboardRunnable:Ljava/lang/Runnable;

    .line 26
    .line 27
    const-wide/16 v3, 0x12c

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->listener:Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;->onSendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    return v0

    .line 17
    :cond_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public setListener(Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection;->listener:Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;

    .line 2
    .line 3
    return-void
.end method
