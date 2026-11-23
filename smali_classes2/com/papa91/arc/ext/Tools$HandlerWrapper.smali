.class public Lcom/papa91/arc/ext/Tools$HandlerWrapper;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/ext/Tools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerWrapper"
.end annotation


# instance fields
.field final base:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;->base:Landroid/os/Handler;

    .line 9
    .line 10
    return-void
.end method

.method public static wrap(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/ext/Tools$HandlerWrapper;-><init>(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/ext/Tools$HandlerWrapper;->base:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method
