.class public Lcom/haima/hmcp/utils/HmIMEManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;
    }
.end annotation


# static fields
.field public static final CODE_FAIL:Ljava/lang/String; = "0"

.field public static final CODE_SUCCESS:Ljava/lang/String; = "1"

.field public static final ERROR_CODE_NOT_ENABLE:Ljava/lang/String; = "1001"

.field public static final ERROR_CODE_NOT_SUPPORT:Ljava/lang/String; = "1002"

.field public static final ERROR_CODE_OTHER:Ljava/lang/String; = "1003"

.field public static final IME_SWITCHING:I = 0x2

.field public static final IME_SWITCH_FAIL:I = 0x0

.field public static final IME_SWITCH_SUCCESS:I = 0x1

.field public static LOCAL_TYPE_IDLE:I = 0x0

.field public static LOCAL_TYPING:I = 0x1

.field private static final MIN_CALL_INTERVAL:I = 0x1f4

.field public static TAG:Ljava/lang/String; = "HmIMEManager"

.field private static lastCallTime:J

.field private static mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;


# instance fields
.field private etShowKeyboard:Landroid/widget/EditText;

.field private mAttachContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShwoInput:Z

.field private mShowInputOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mIsShwoInput:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mShowInputOffset:I

    .line 8
    .line 9
    return-void
.end method

.method static synthetic access$002(Lcom/haima/hmcp/utils/HmIMEManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mIsShwoInput:Z

    .line 2
    .line 3
    return p1
.end method

.method public static getInstance()Lcom/haima/hmcp/utils/HmIMEManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/utils/HmIMEManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/HmIMEManager;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/utils/HmIMEManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/haima/hmcp/utils/HmIMEManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/haima/hmcp/utils/HmIMEManager;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 25
    .line 26
    return-object v0
.end method

.method public static release()V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mAttachContext:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->getTopActOrNull()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mAttachContext:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "getGlobleActivity error:"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mAttachContext:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/app/Activity;

    .line 58
    .line 59
    return-object v0
.end method

.method public getInputMethodName()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/HmIMEManager;->getCurrentActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "default_input_method"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, "/"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "getInputMethodName error"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getInputOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mShowInputOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public hideInput()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\u952e\u76d8 \u6536\u8d77\u5f00\u59cb============>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmIMEManager;->etShowKeyboard:Landroid/widget/EditText;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "hideInput:et setFocusAbility false"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmIMEManager;->etShowKeyboard:Landroid/widget/EditText;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/utils/HmIMEManager;->etShowKeyboard:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/HmIMEManager;->getCurrentActivity()Landroid/app/Activity;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    sget-object v1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "\u5f39\u51fa\u6536\u8d77\u62a5\u9519:get top act null"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    const-string v2, "input_method"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mIsShwoInput:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_2
    return v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    sget-object v2, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "\u5f39\u51fa\u6536\u8d77\u62a5\u9519:"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return v0
.end method

.method public isFastCall()Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/haima/hmcp/utils/HmIMEManager;->lastCallTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x1f4

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-ltz v6, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    :goto_0
    sput-wide v0, Lcom/haima/hmcp/utils/HmIMEManager;->lastCallTime:J

    .line 19
    .line 20
    return v2
.end method

.method public isShowInput()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "\u952e\u76d8\u5f39\u51fa\u72b6\u6001:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mIsShwoInput:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mIsShwoInput:Z

    .line 26
    .line 27
    return v0
.end method

.method public setAttachContext(Landroid/app/Activity;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mAttachContext:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setInputOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/utils/HmIMEManager;->mShowInputOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public setKeyBoardListener(Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/HmIMEManager;->getCurrentActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "get top act null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v1, Lcom/haima/hmcp/utils/HmIMEManager$2;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/utils/HmIMEManager$2;-><init>(Lcom/haima/hmcp/utils/HmIMEManager;Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;->onError()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public showInput(Landroid/widget/EditText;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\u952e\u76d8 \u5f39\u51fa\u5f00\u59cb============>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/HmIMEManager;->getCurrentActivity()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "get top activity null"

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    const-string v2, "input_method"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmIMEManager;->etShowKeyboard:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 44
    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lcom/haima/hmcp/utils/HmIMEManager$1;

    .line 60
    .line 61
    invoke-direct {v2, p0, v1, p1}, Lcom/haima/hmcp/utils/HmIMEManager$1;-><init>(Lcom/haima/hmcp/utils/HmIMEManager;Landroid/view/View;Landroid/widget/EditText;)V

    .line 62
    .line 63
    .line 64
    const-wide/16 v5, 0x1f4

    .line 65
    .line 66
    invoke-virtual {v1, v2, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    .line 68
    .line 69
    return v4

    .line 70
    :cond_1
    return v0

    .line 71
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 86
    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 91
    .line 92
    .line 93
    return v4

    .line 94
    :cond_3
    sget-object p1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    const-string v1, "\u5f39\u51fa\u952e\u76d8\u5931\u8d25\uff1aInputMethodManager=null"

    .line 97
    .line 98
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    return v0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v3, "\u5f39\u51fa\u952e\u76d8\u62a5\u9519:"

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v0
.end method

.method public showInputNoFocus()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/HmIMEManager;->hideInput()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/HmIMEManager;->toggleInput()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public toIMEListBean(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/IMEListMessage;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/haima/hmcp/beans/IMEListMessage;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/haima/hmcp/beans/IMEListMessage;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "type"

    .line 11
    .line 12
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, v1, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->type:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "event"

    .line 19
    .line 20
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v1, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->event:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "payload"

    .line 27
    .line 28
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, v1, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->payload:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "code"

    .line 35
    .line 36
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v1, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->code:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "message"

    .line 43
    .line 44
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, v1, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->message:Ljava/lang/String;

    .line 49
    .line 50
    return-object v1
.end method

.method public toIMESwitchBean(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/IMESwitchMessage;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/haima/hmcp/beans/IMESwitchMessage;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/haima/hmcp/beans/IMESwitchMessage;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "type"

    .line 11
    .line 12
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, v1, Lcom/haima/hmcp/beans/BaseSwitchIMEMessageProtocol;->type:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "event"

    .line 19
    .line 20
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/beans/IMESwitchMessage;->setEvent(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "code"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/beans/IMESwitchMessage;->setCode(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "message"

    .line 37
    .line 38
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/beans/IMESwitchMessage;->setMessage(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public toggleInput()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/HmIMEManager;->getCurrentActivity()Landroid/app/Activity;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\u952e\u76d8\u72b6\u6001\u51fa\u9519:getTopAct null"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const-string v2, "input_method"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    return v0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    sget-object v2, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "\u952e\u76d8\u72b6\u6001\u51fa\u9519:"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return v0
.end method
