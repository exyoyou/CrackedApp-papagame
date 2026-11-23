.class public Lcom/haima/hmcp/model/MouseAnimateModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;,
        Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;
    }
.end annotation


# static fields
.field private static final BUSY:[I

.field private static final DURATION:I = 0x64

.field private static final MSG_FRAME:I = 0x1

.field private static final WORKING:[I


# instance fields
.field private frameIndex:I

.field private listener:Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;

.field private final mHandler:Landroid/os/Handler;

.field private mouseFrames:[I

.field private mouseStyle:Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/view/MouseView;->WORKING_FRAMES:[I

    .line 2
    .line 3
    sput-object v0, Lcom/haima/hmcp/model/MouseAnimateModel;->WORKING:[I

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/widgets/view/MouseView;->BUSY_FRAMES:[I

    .line 6
    .line 7
    sput-object v0, Lcom/haima/hmcp/model/MouseAnimateModel;->BUSY:[I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->frameIndex:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->stop:Z

    .line 8
    .line 9
    new-instance v0, Lcom/haima/hmcp/model/MouseAnimateModel$1;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/model/MouseAnimateModel$1;-><init>(Lcom/haima/hmcp/model/MouseAnimateModel;Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/model/MouseAnimateModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/MouseAnimateModel;->getFrame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getFrame()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->stop:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->frameIndex:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mouseFrames:[I

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-lt v0, v2, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->frameIndex:I

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->listener:Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v2, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->frameIndex:I

    .line 21
    .line 22
    aget v1, v1, v2

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;->onMouseFrame(I)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->frameIndex:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    add-int/2addr v0, v1

    .line 31
    iput v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->frameIndex:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    const-wide/16 v2, 0x64

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private initFrames(Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;->WORKING:Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/model/MouseAnimateModel;->WORKING:[I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mouseFrames:[I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/MouseAnimateModel;->BUSY:[I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mouseFrames:[I

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->frameIndex:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->stop:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getMouseStyle()Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mouseStyle:Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public setListener(Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->listener:Lcom/haima/hmcp/model/MouseAnimateModel$MouseAnimateListener;

    .line 2
    .line 3
    return-void
.end method

.method public start(Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mouseStyle:Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/haima/hmcp/model/MouseAnimateModel;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/MouseAnimateModel;->initFrames(Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/haima/hmcp/model/MouseAnimateModel;->getFrame()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->stop:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/haima/hmcp/model/MouseAnimateModel;->mouseStyle:Lcom/haima/hmcp/model/MouseAnimateModel$MouseStyle;

    .line 11
    .line 12
    return-void
.end method
