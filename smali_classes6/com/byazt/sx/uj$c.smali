.class public Lcom/byazt/sx/uj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a0,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/sx/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final c:Landroid/os/Handler;

.field public da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public final n:I

.field public final sp:Lorg/json/JSONObject;

.field public volatile tt:Z

.field public final uj:J

.field public final ve:Ljava/lang/String;

.field public final x:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJIILorg/json/JSONObject;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJII",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/sx/uj$c;->tt:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/sx/uj$c;->i:I

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    cmp-long v2, p2, v0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    :goto_0
    iput-wide p2, p0, Lcom/byazt/sx/uj$c;->x:J

    .line 21
    .line 22
    iput-object p1, p0, Lcom/byazt/sx/uj$c;->ve:Ljava/lang/String;

    .line 23
    .line 24
    iput-wide p4, p0, Lcom/byazt/sx/uj$c;->uj:J

    .line 25
    .line 26
    iput p6, p0, Lcom/byazt/sx/uj$c;->n:I

    .line 27
    .line 28
    iput p7, p0, Lcom/byazt/sx/uj$c;->a:I

    .line 29
    .line 30
    iput-object p8, p0, Lcom/byazt/sx/uj$c;->sp:Lorg/json/JSONObject;

    .line 31
    .line 32
    iput-object p9, p0, Lcom/byazt/sx/uj$c;->da:Ljava/util/Map;

    .line 33
    .line 34
    new-instance p1, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/byazt/sx/uj$c;->c:Landroid/os/Handler;

    .line 44
    .line 45
    return-void
.end method

.method private c()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/byazt/sx/uj$c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/sx/uj$c$1;

    invoke-direct {v1, p0}, Lcom/byazt/sx/uj$c$1;-><init>(Lcom/byazt/sx/uj$c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private declared-synchronized c(I)V
    .locals 9

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/sx/uj$c;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/byazt/sx/uj$c;->tt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    :try_start_1
    iput-boolean v0, p0, Lcom/byazt/sx/uj$c;->tt:Z

    if-ne p1, v0, :cond_1

    const-string p1, "TMe"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==-- \u6700\u7ec8\u4e0a\u62a5\uff1aeventType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/sx/uj$c;->ve:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/byazt/sx/uj$c;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", did: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/byazt/sx/uj;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string p1, "TMe"

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--==-- \u6700\u7ec8\u4e0a\u62a5\uff1aeventType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/sx/uj$c;->ve:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u4eceapplog\u56de\u8c03\u4e2d\u4e0a\u62a5, did: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/byazt/sx/uj;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/byazt/sx/uj$c;->ve:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x31c0546f

    if-eq v1, v2, :cond_4

    const v2, 0x1018f5f5

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "sdk_init"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const-string v1, "sdk_init_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, -0x1

    :goto_2
    if-eqz p1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_3

    .line 11
    :cond_6
    iget-wide v1, p0, Lcom/byazt/sx/uj$c;->uj:J

    iget v3, p0, Lcom/byazt/sx/uj$c;->n:I

    iget v4, p0, Lcom/byazt/sx/uj$c;->a:I

    iget-wide v5, p0, Lcom/byazt/sx/uj$c;->x:J

    iget-object v7, p0, Lcom/byazt/sx/uj$c;->sp:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/byazt/sx/uj$c;->da:Ljava/util/Map;

    invoke-static/range {v1 .. v8}, Lcom/byazt/sx/uj;->c(JIIJLorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_3
    monitor-exit p0

    return-void

    .line 13
    :cond_7
    :try_start_2
    iget-wide v0, p0, Lcom/byazt/sx/uj$c;->x:J

    invoke-static {v0, v1}, Lcom/byazt/sx/uj;->tt(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic c(Lcom/byazt/sx/uj$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/sx/uj$c;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/sx/uj$c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/sx/uj$c;->c(I)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/sx/uj$c;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/sx/uj$c;->i:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/sx/uj$c;->i:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic uj(Lcom/byazt/sx/uj$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/sx/uj$c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/sx/uj$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/sx/uj$c;->i:I

    .line 2
    .line 3
    return p0
.end method
