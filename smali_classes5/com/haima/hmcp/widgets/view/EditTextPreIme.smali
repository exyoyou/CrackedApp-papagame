.class public Lcom/haima/hmcp/widgets/view/EditTextPreIme;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;,
        Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTextPreIme"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final hideKeyboardRunnable:Ljava/lang/Runnable;

.field private isFinish:Z

.field private mActivity:Landroid/app/Activity;

.field private mHmKeyBoardListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

.field private mKeyEventPreImeListener:Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;

.field private mKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->handler:Landroid/os/Handler;

    .line 3
    new-instance p1, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;-><init>(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->hideKeyboardRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->handler:Landroid/os/Handler;

    .line 6
    new-instance p1, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;-><init>(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->hideKeyboardRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->handler:Landroid/os/Handler;

    .line 9
    new-instance p1, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;

    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme$1;-><init>(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->hideKeyboardRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Landroid/view/View$OnKeyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->isFinish:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->isFinish:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mHmKeyBoardListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mHmKeyBoardListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->hideKeyboardRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Z
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
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->isNotCoverRootView()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private getRootViewVisibleHeight()F
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mActivity:Landroid/app/Activity;

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
    sget-object v2, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mActivity:Landroid/app/Activity;

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
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->getRootViewVisibleHeight()F

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
    sget-object v0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->TAG:Ljava/lang/String;

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


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mKeyEventPreImeListener:Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;->onEvent(Landroid/view/KeyEvent;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;-><init>(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Landroid/view/inputmethod/InputConnection;Z)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setHmKeyBoardListener(Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mHmKeyBoardListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyEventListener(Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mKeyEventPreImeListener:Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSoftKeyListener(Landroid/app/Activity;Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 4
    .line 5
    return-void
.end method
