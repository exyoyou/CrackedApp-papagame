.class public Lcom/byazt/tdq/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tdq/ve;->c(Lcom/byazt/im/sp;Ljava/lang/String;Lcom/byazt/tdq/c$c;Lcom/byazt/tdq/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/eti/sp$tt;

.field public final synthetic ve:Lcom/byazt/tdq/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/tdq/ve;Ljava/lang/String;Lcom/byazt/eti/sp$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tdq/ve$2;->ve:Lcom/byazt/tdq/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tdq/ve$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tdq/ve$2;->tt:Lcom/byazt/eti/sp$tt;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/byazt/tdq/ve$2;->ve:Lcom/byazt/tdq/ve;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/byazt/tdq/ve;->c(Lcom/byazt/tdq/ve;)Lcom/byazt/eti/sp;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/byazt/tdq/ve$2;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/byazt/tdq/ve$2;->tt:Lcom/byazt/eti/sp$tt;

    .line 14
    .line 15
    iget-object v4, v4, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/byazt/eti/sp;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "lqmt"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "readcache-deleteCacheMeta start >>  rit: "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/byazt/tdq/ve$2;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, "  reqId: "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v4, p0, Lcom/byazt/tdq/ve$2;->tt:Lcom/byazt/eti/sp$tt;

    .line 40
    .line 41
    iget-object v4, v4, Lcom/byazt/eti/sp$tt;->n:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, "  cost: "

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    sub-long/2addr v4, v0

    .line 56
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    return-void
.end method
