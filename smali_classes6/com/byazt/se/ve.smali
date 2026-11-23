.class public Lcom/byazt/se/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29f,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/byazt/co/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/se/c;

.field public tt:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/byazt/se/c;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/se/ve;->c:Lcom/byazt/se/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/se/ve;->tt:Ljava/lang/Long;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/se/ve;)Lcom/byazt/se/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/se/ve;->c:Lcom/byazt/se/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public call()Lcom/byazt/co/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/se/ve$1;

    invoke-direct {v0, p0}, Lcom/byazt/se/ve$1;-><init>(Lcom/byazt/se/ve;)V

    invoke-static {v0}, Lcom/byazt/ww/c;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/se/ve;->tt:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/se/ve;->tt:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/co/c;

    return-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/co/c;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "__kiteFingerTask# collection timed out"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/tf/c;->tt(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/byazt/co/c;

    invoke-direct {v0}, Lcom/byazt/co/c;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/se/ve;->call()Lcom/byazt/co/c;

    move-result-object v0

    return-object v0
.end method
