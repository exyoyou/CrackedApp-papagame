.class public abstract Lcom/byazt/lu/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x304,
        0xd
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/lu/uj;

.field public tt:I

.field public volatile uj:Z

.field public ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lu/uj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/lu/tt;->tt:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/lu/tt;->c:Lcom/byazt/lu/uj;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/lu/tt;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract c()J
.end method

.method public n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/lu/tt;->ve:Z

    .line 3
    .line 4
    return-void
.end method

.method public final sp()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/byazt/lu/tt;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-boolean v4, p0, Lcom/byazt/lu/tt;->uj:Z

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    iput-boolean v5, p0, Lcom/byazt/lu/tt;->uj:Z

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    :cond_0
    const-wide/16 v6, 0x3e8

    .line 19
    .line 20
    add-long/2addr v6, v2

    .line 21
    cmp-long v4, v0, v6

    .line 22
    .line 23
    if-gtz v4, :cond_2

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/lu/tt;->ve()Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iput v5, p0, Lcom/byazt/lu/tt;->tt:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/byazt/lu/tt;->c()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/lu/tt;->tt()[J

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget v1, p0, Lcom/byazt/lu/tt;->tt:I

    .line 53
    .line 54
    add-int/lit8 v2, v1, 0x1

    .line 55
    .line 56
    iput v2, p0, Lcom/byazt/lu/tt;->tt:I

    .line 57
    .line 58
    array-length v2, v0

    .line 59
    rem-int/2addr v1, v2

    .line 60
    aget-wide v1, v0, v1

    .line 61
    .line 62
    move-wide v0, v1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    sub-long/2addr v0, v2

    .line 65
    :goto_2
    return-wide v0
.end method

.method public abstract tt()[J
.end method

.method public abstract uj()Ljava/lang/String;
.end method

.method public abstract ve()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public x()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setImmediately, "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/lu/tt;->uj()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/byazt/yv/da;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/byazt/lu/tt;->uj:Z

    .line 24
    .line 25
    return-void
.end method
