.class public Lcom/byazt/wi/a$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wi/a;->tt(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/wi/a;


# direct methods
.method public constructor <init>(Lcom/byazt/wi/a;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wi/a$2;->ve:Lcom/byazt/wi/a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/wi/a$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/wi/a$2;->tt:J

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/wi/a$2;->ve:Lcom/byazt/wi/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wi/a;->c(Lcom/byazt/wi/a;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/wi/a$2;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/byazt/wi/a$tt;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-wide v1, p0, Lcom/byazt/wi/a$2;->tt:J

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-lez v5, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    :goto_0
    monitor-enter v0

    .line 32
    :try_start_0
    iget-wide v5, v0, Lcom/byazt/wi/a$tt;->c:J

    .line 33
    .line 34
    cmp-long v7, v5, v3

    .line 35
    .line 36
    if-gtz v7, :cond_2

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :cond_2
    iget-wide v7, v0, Lcom/byazt/wi/a$tt;->n:J

    .line 41
    .line 42
    cmp-long v9, v7, v3

    .line 43
    .line 44
    if-gtz v9, :cond_3

    .line 45
    .line 46
    sub-long/2addr v1, v5

    .line 47
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    iput-wide v1, v0, Lcom/byazt/wi/a$tt;->n:J

    .line 52
    .line 53
    :cond_3
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw v1
.end method
