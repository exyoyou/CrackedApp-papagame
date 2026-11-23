.class public Lcom/haima/hmcp/utils/ClipboardUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUtils"

.field private static clipboardQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static delayMillis:I

.field private static handler:Landroid/os/Handler;

.field public static volatile isClipboardReceived:Z

.field private static volatile isRunnableScheduled:Z

.field private static sContext:Landroid/content/Context;

.field private static setClipboardRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/utils/ClipboardUtils;->clipboardQueue:Ljava/util/Queue;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/haima/hmcp/utils/ClipboardUtils;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lcom/haima/hmcp/utils/ClipboardUtils;->isRunnableScheduled:Z

    .line 21
    .line 22
    sput-boolean v0, Lcom/haima/hmcp/utils/ClipboardUtils;->isClipboardReceived:Z

    .line 23
    .line 24
    const/16 v0, 0xc8

    .line 25
    .line 26
    sput v0, Lcom/haima/hmcp/utils/ClipboardUtils;->delayMillis:I

    .line 27
    .line 28
    new-instance v0, Lcom/haima/hmcp/utils/ClipboardUtils$1;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ClipboardUtils$1;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/haima/hmcp/utils/ClipboardUtils;->setClipboardRunnable:Ljava/lang/Runnable;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ClipboardUtils;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Queue;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ClipboardUtils;->clipboardQueue:Ljava/util/Queue;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/ClipboardUtils;->setClipboard(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 1
    sget v0, Lcom/haima/hmcp/utils/ClipboardUtils;->delayMillis:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ClipboardUtils;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/haima/hmcp/utils/ClipboardUtils;->isRunnableScheduled:Z

    .line 2
    .line 3
    return p0
.end method

.method public static clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/haima/hmcp/utils/ClipboardUtils;->isClipboardReceived:Z

    .line 3
    .line 4
    sput-boolean v0, Lcom/haima/hmcp/utils/ClipboardUtils;->isRunnableScheduled:Z

    .line 5
    .line 6
    return-void
.end method

.method public static isClipboardReceived()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/utils/ClipboardUtils;->isClipboardReceived:Z

    .line 2
    .line 3
    return v0
.end method

.method private static setClipboard(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "label"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/haima/hmcp/utils/ClipboardUtils;->sContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v2, "clipboard"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/ClipboardManager;

    .line 16
    .line 17
    sget-object v2, Lcom/haima/hmcp/utils/ClipboardUtils;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "==setClipboardRunnable=>setPrimaryClip content="

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v2, p0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public static setClipboardContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/ClipboardUtils;->sContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput-object p0, Lcom/haima/hmcp/utils/ClipboardUtils;->sContext:Landroid/content/Context;

    .line 6
    .line 7
    :cond_0
    sget-object p0, Lcom/haima/hmcp/utils/ClipboardUtils;->clipboardQueue:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    sget-boolean p0, Lcom/haima/hmcp/utils/ClipboardUtils;->isRunnableScheduled:Z

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    sget-object p0, Lcom/haima/hmcp/utils/ClipboardUtils;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    sget-object p1, Lcom/haima/hmcp/utils/ClipboardUtils;->setClipboardRunnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    sput-boolean p0, Lcom/haima/hmcp/utils/ClipboardUtils;->isRunnableScheduled:Z

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public static setClipboardReceived(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/haima/hmcp/utils/ClipboardUtils;->isClipboardReceived:Z

    .line 2
    .line 3
    return-void
.end method
