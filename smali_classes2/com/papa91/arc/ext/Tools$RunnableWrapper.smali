.class public Lcom/papa91/arc/ext/Tools$RunnableWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/ext/Tools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnableWrapper"
.end annotation


# instance fields
.field final base:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;->base:Ljava/lang/Runnable;

    .line 5
    .line 6
    return-void
.end method

.method public static wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/papa91/arc/ext/Tools$RunnableWrapper;-><init>(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/ext/Tools$RunnableWrapper;->base:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method
