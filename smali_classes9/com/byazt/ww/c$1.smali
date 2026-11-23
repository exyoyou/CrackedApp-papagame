.class public final Lcom/byazt/ww/c$1;
.super Lcom/byazt/he/c$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb9,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ww/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/he/c$c<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/he/c$c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs c([Ljava/lang/Object;)Ljava/util/concurrent/Executor;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_NotAllowInvokeExecutorsMethods"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/byazt/jtc/uj;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/ww/c;->tt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-double v0, v0

    .line 8
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 9
    .line 10
    mul-double v0, v0, v2

    .line 11
    .line 12
    double-to-int v1, v0

    .line 13
    const v2, 0x7fffffff

    .line 14
    .line 15
    .line 16
    const-wide/16 v3, 0xa

    .line 17
    .line 18
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 21
    .line 22
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v7, Lcom/byazt/bwm/x;

    .line 26
    .line 27
    const-string v0, "xecutorUtil$1"

    .line 28
    .line 29
    invoke-direct {v7, v0}, Lcom/byazt/bwm/x;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v0, p1

    .line 33
    invoke-direct/range {v0 .. v7}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public synthetic tt([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_NotAllowInvokeExecutorsMethods"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/ww/c$1;->c([Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
