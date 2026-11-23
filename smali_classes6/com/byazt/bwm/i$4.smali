.class public Lcom/byazt/bwm/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21,
        0xcf
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bwm/i;->t()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/bwm/i;


# direct methods
.method public constructor <init>(Lcom/byazt/bwm/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bwm/i$4;->c:Lcom/byazt/bwm/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/bwm/i$4;->c:Lcom/byazt/bwm/i;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/byazt/bwm/i;->c(Lcom/byazt/bwm/i;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "csj-p-wp"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "csj-wp"

    .line 15
    .line 16
    :goto_0
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
