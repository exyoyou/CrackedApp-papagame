.class public Lcom/haima/hmcp/model/LocalKeyboardModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;,
        Lcom/haima/hmcp/model/LocalKeyboardModel$HmKeyListener;,
        Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;,
        Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;
    }
.end annotation


# static fields
.field private static final DIGITS:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final GOOGLE_INPUT_METHOD_PACKAGE:Ljava/lang/String; = "com.google.android.inputmethod.latin"

.field private static final REACTIVE_KEYBOARD_DELAY_TIME_MS:I = 0x14

.field public static final STATE_HIDE:I = 0x0

.field public static final STATE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalKeyboardModel"


# instance fields
.field private final KEYBOARD_DOWN:Ljava/lang/String;

.field private final KEYBOARD_DOWN_FLAG:Ljava/lang/String;

.field private final KEYBOARD_UP:Ljava/lang/String;

.field private final KEYBOARD_UP_FLAG:Ljava/lang/String;

.field private digits:Ljava/lang/String;

.field private imeActionListener:Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;

.field private isDelListen:Z

.field private lastPayload:Ljava/lang/String;

.field private listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

.field private final mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

.field private reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

.field private textBeforeChange:Ljava/lang/String;

.field private final textWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "keyDown"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->KEYBOARD_DOWN:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "keyUp"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->KEYBOARD_UP:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "1"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->KEYBOARD_DOWN_FLAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "0"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->KEYBOARD_UP_FLAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->digits:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->isDelListen:Z

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->textBeforeChange:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v0, Lcom/haima/hmcp/model/LocalKeyboardModel$4;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/haima/hmcp/model/LocalKeyboardModel$4;-><init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->textWatcher:Landroid/text/TextWatcher;

    .line 48
    .line 49
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 54
    .line 55
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->sendTextContent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/model/LocalKeyboardModel;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->interceptKey(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/widgets/HmcpHideEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/utils/HmIMEManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/model/LocalKeyboardModel;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->startKeyboard(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lcom/haima/hmcp/model/LocalKeyboardModel;Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;)Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/model/LocalKeyboardModel;Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->checkImeTypeFinished(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/model/LocalKeyboardModel;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->isGoogleSpecialKeyCode(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/model/LocalKeyboardModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->isDelListen:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/haima/hmcp/model/LocalKeyboardModel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->isDelListen:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->sendKeyboardEvent(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/model/LocalKeyboardModel;->sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/haima/hmcp/model/LocalKeyboardModel;)Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->imeActionListener:Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/model/LocalKeyboardModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->textBeforeChange:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$802(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->textBeforeChange:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->sendTextContent(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->lambda$reactiveKeyboard$0(Ljava/lang/String;)V

    return-void
.end method

.method private checkImeTypeFinished(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onCheckImeTypeFinished(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private getInputMethodName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/haima/hmcp/utils/InputMethodHelper;->getCurrentInputMethodInfo(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    return-object v0
.end method

.method private getInputMethodPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/haima/hmcp/utils/InputMethodHelper;->getCurrentInputMethodInfo(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    return-object v0
.end method

.method private getInputMethodVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/haima/hmcp/utils/InputMethodHelper;->getCurrentInputMethodInfo(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/AppInfoHelper;->getAppPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 30
    .line 31
    :cond_2
    return-object v0
.end method

.method private interceptKey(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isGoogleSpecialKeyCode(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$reactiveKeyboard$0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/haima/hmcp/model/LocalKeyboardModel$3;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel$3;-><init>(Lcom/haima/hmcp/model/LocalKeyboardModel;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onCheckImeType(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private reactiveKeyboard(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "\u952e\u76d8: payload is null, stop reactive"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "\u952e\u76d8: try to reactive keyboard"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->removeReactiveRunnable(Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->setPayload(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 43
    .line 44
    new-instance v0, Lcom/haima/hmcp/model/b;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/haima/hmcp/model/b;-><init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->setListener(Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 55
    .line 56
    const-wide/16 v1, 0x14

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private removeReactiveRunnable(Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->setPayload(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;->setListener(Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnableListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "remove reactive keyboard runnable"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private reportInputMethodInfo(Landroid/content/Context;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "report input method info fail, context is null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->getInputMethodName(Landroid/content/Context;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->getInputMethodPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->getInputMethodVersion(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "name"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v3, "package"

    .line 34
    .line 35
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v3, "version"

    .line 39
    .line 40
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v3, "12708"

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    sget-object v2, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "input method: name: "

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", package: "

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ", version: "

    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private sendKeyboardEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onKeyboardEvent(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private sendKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendTextContent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onSendText(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setDefaultDigits(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/model/LocalKeyboardModel$HmKeyListener;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel$HmKeyListener;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setFocus(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setFocus "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private setImeOptions(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setInputType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setInternalDigits(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private startKeyboard(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->changeState(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->textWatcher:Landroid/text/TextWatcher;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->textWatcher:Landroid/text/TextWatcher;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->reportInputMethodInfo(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    const-string v1, ":"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    array-length v2, v1

    .line 42
    const/4 v3, 0x4

    .line 43
    if-le v2, v3, :cond_f

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    aget-object v4, v1, v2

    .line 47
    .line 48
    aget-object v3, v1, v3

    .line 49
    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    const-string v5, "0"

    .line 57
    .line 58
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    iget-object v5, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 65
    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    sget-object v6, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 69
    .line 70
    invoke-interface {v5, v6}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onScreenOrientationForKeyboard(Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string v5, "3"

    .line 75
    .line 76
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    iget-object v5, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 83
    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    sget-object v6, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 87
    .line 88
    invoke-interface {v5, v6}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onScreenOrientationForKeyboard(Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-nez v5, :cond_e

    .line 96
    .line 97
    sget-object v5, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v7, "\u539f \u952e\u76d8\u7c7b\u578b:"

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v7, "\u952e\u76d8\u65b9\u5411:"

    .line 125
    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v5, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    and-int/lit16 v4, v3, 0x80

    .line 144
    .line 145
    const/16 v6, 0x80

    .line 146
    .line 147
    if-ne v4, v6, :cond_2

    .line 148
    .line 149
    xor-int/lit16 v3, v3, 0x80

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    and-int/lit8 v4, v3, 0x10

    .line 153
    .line 154
    const/16 v6, 0x10

    .line 155
    .line 156
    if-ne v4, v6, :cond_3

    .line 157
    .line 158
    xor-int/lit8 v3, v3, 0x10

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    and-int/lit16 v4, v3, 0x90

    .line 162
    .line 163
    const/16 v6, 0x90

    .line 164
    .line 165
    if-ne v4, v6, :cond_4

    .line 166
    .line 167
    xor-int/lit16 v3, v3, 0x90

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    and-int/lit16 v4, v3, 0xe0

    .line 171
    .line 172
    const/16 v6, 0xe0

    .line 173
    .line 174
    if-ne v4, v6, :cond_5

    .line 175
    .line 176
    xor-int/lit16 v3, v3, 0xe0

    .line 177
    .line 178
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 179
    .line 180
    const/4 v3, 0x1

    .line 181
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v6, "\u53bb\u6389\u5b89\u5168\u5bc6\u7801\u952e\u76d8\u540e \u952e\u76d8\u7c7b\u578b:"

    .line 187
    .line 188
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-static {v5, v4}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v4, "12701"

    .line 202
    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string v6, "input type: "

    .line 209
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-static {v4, v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const/4 v4, 0x0

    .line 224
    iput-object v4, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->imeActionListener:Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;

    .line 225
    .line 226
    array-length v4, v1

    .line 227
    const/4 v5, 0x5

    .line 228
    if-le v4, v5, :cond_7

    .line 229
    .line 230
    aget-object v4, v1, v5

    .line 231
    .line 232
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 233
    .line 234
    .line 235
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    if-nez v4, :cond_7

    .line 237
    .line 238
    :try_start_1
    aget-object v1, v1, v5

    .line 239
    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    const/high16 v4, 0x10000000

    .line 245
    .line 246
    or-int/2addr v1, v4

    .line 247
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setImeOptions(I)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/haima/hmcp/model/a;

    .line 251
    .line 252
    invoke-direct {v1, p0}, Lcom/haima/hmcp/model/a;-><init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V

    .line 253
    .line 254
    .line 255
    iput-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->imeActionListener:Lcom/haima/hmcp/model/LocalKeyboardModel$ImeActionListener;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :catch_0
    :try_start_2
    sget-object v1, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 259
    .line 260
    const-string v4, "set ime options error"

    .line 261
    .line 262
    invoke-static {v1, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_7
    :goto_2
    invoke-direct {p0, v3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setInputType(I)V

    .line 266
    .line 267
    .line 268
    const/4 v1, 0x0

    .line 269
    const/4 v4, 0x2

    .line 270
    if-ne v3, v4, :cond_8

    .line 271
    .line 272
    :goto_3
    const/4 v4, 0x1

    .line 273
    goto :goto_4

    .line 274
    :cond_8
    and-int/lit8 v5, v3, 0x2

    .line 275
    .line 276
    if-ne v5, v4, :cond_9

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_9
    const/4 v4, 0x0

    .line 280
    :goto_4
    if-ne v3, v2, :cond_a

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :cond_a
    and-int/lit8 v5, v3, 0x3

    .line 284
    .line 285
    if-ne v5, v2, :cond_b

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_b
    const/4 v0, 0x0

    .line 289
    :goto_5
    if-nez v4, :cond_d

    .line 290
    .line 291
    if-eqz v0, :cond_c

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_c
    invoke-direct {p0, v3}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setDefaultDigits(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_d
    :goto_6
    sget-object v1, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 299
    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v3, "\u952e\u76d8 \u8bbe\u7f6edigits = "

    .line 306
    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v3, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->digits:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v3, ", hasNumberFlag = "

    .line 316
    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v3, ", hasPhoneFlag = "

    .line 324
    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->digits:Ljava/lang/String;

    .line 339
    .line 340
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setInternalDigits(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_e
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setDefaultDigits(I)V

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_f
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setDefaultDigits(I)V

    .line 349
    .line 350
    .line 351
    sget-object v0, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 352
    .line 353
    const-string v1, "\u952e\u76d8\u6307\u4ee4\u9519\u8bef StartIM command Error"

    .line 354
    .line 355
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_7
    invoke-virtual {p0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->isShowInput()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_10

    .line 363
    .line 364
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 365
    .line 366
    if-eqz v0, :cond_10

    .line 367
    .line 368
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onSendKeyboardHeightPercent()V

    .line 369
    .line 370
    .line 371
    :cond_10
    invoke-virtual {p0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->showInput()V

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 375
    .line 376
    if-eqz v0, :cond_11

    .line 377
    .line 378
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onCallbackLocalKeyboardShow()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 379
    .line 380
    .line 381
    goto :goto_8

    .line 382
    :catch_1
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 384
    .line 385
    .line 386
    sget-object v0, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 387
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v2, "\u5f00\u542f\u952e\u76d8\u547d\u4ee4\u5f02\u5e38:"

    .line 394
    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_11
    :goto_8
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public changeState(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x1L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p1, 0x8

    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public clearText()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->isDelListen:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->isDelListen:Z

    .line 15
    .line 16
    return-void
.end method

.method public handleImeOrder(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "\u952e\u76d8\u6307\u4ee4:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "IME:StartIM"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboardRunnable:Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->removeReactiveRunnable(Lcom/haima/hmcp/model/LocalKeyboardModel$ReactiveKeyboardRunnable;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->lastPayload:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->startKeyboard(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v0, "startIM"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->lastPayload:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->reactiveKeyboard(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string v0, "stopIM"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/HmIMEManager;->hideInput()Z

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 80
    .line 81
    const/4 v0, 0x4

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    sget-object p1, Lcom/haima/hmcp/utils/HmIMEManager;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "focused:"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;->onInputHide()V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    const/4 p1, 0x0

    .line 128
    :goto_2
    return p1
.end method

.method public hideInput()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmIMEManager;->hideInput()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/LocalKeyboardModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "init"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->listener:Lcom/haima/hmcp/listeners/LocalKeyboardModelListener;

    .line 9
    .line 10
    new-instance p2, Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/haima/hmcp/widgets/HmcpHideEditText;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 27
    .line 28
    const/high16 v0, -0x3c6a0000    # -300.0f

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setX(F)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    .line 35
    const/16 v0, 0xc8

    .line 36
    .line 37
    const/16 v1, 0x64

    .line 38
    .line 39
    invoke-direct {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setFocus(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 51
    .line 52
    const/high16 p2, 0x10000000

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 58
    .line 59
    new-instance p2, Lcom/haima/hmcp/model/LocalKeyboardModel$1;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/haima/hmcp/model/LocalKeyboardModel$1;-><init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/HmcpHideEditText;->setOnHmKeyListener(Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->textWatcher:Landroid/text/TextWatcher;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 75
    .line 76
    new-instance p2, Lcom/haima/hmcp/model/LocalKeyboardModel$2;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/haima/hmcp/model/LocalKeyboardModel$2;-><init>(Lcom/haima/hmcp/model/LocalKeyboardModel;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public isGoogleInputMethod(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "com.google.android.inputmethod.latin"

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/LocalKeyboardModel;->getInputMethodPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isShowInput()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmIMEManager;->isShowInput()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/HmcpHideEditText;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requestFocus()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->setFocus(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setAttachContext(Landroid/app/Activity;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/HmIMEManager;->setAttachContext(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDigits(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->digits:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public setHmKeyBoardListener(Lcom/haima/hmcp/beans/GamePlatformType;Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/haima/hmcp/utils/HmIMEManager;->setKeyBoardListener(Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/HmcpHideEditText;->setKeyBoardListener(Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public showInput()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHideView:Lcom/haima/hmcp/widgets/HmcpHideEditText;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/HmIMEManager;->showInput(Landroid/widget/EditText;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public toIMEListBean(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/IMEListMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/HmIMEManager;->toIMEListBean(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/IMEListMessage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toIMESwitchBean(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/IMESwitchMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/LocalKeyboardModel;->mHmIMEManager:Lcom/haima/hmcp/utils/HmIMEManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/HmIMEManager;->toIMESwitchBean(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/IMESwitchMessage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
