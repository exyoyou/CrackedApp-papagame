.class public Lcom/facebook/common/executors/i;
.super Lcom/facebook/common/executors/e;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static c:Lcom/facebook/common/executors/i;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/facebook/common/executors/e;-><init>(Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static f()Lcom/facebook/common/executors/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/common/executors/i;->c:Lcom/facebook/common/executors/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/common/executors/i;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/facebook/common/executors/i;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/common/executors/i;->c:Lcom/facebook/common/executors/i;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/facebook/common/executors/i;->c:Lcom/facebook/common/executors/i;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/common/executors/e;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/common/executors/e;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
