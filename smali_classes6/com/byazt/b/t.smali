.class public Lcom/byazt/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x42
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/zz/u;

.field public static volatile tt:Lcom/byazt/zz/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Z)Lcom/byazt/zz/u;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/zz/ve;->lo()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    sget-object p0, Lcom/byazt/b/t;->tt:Lcom/byazt/zz/u;

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    const-class p0, Lcom/byazt/b/t;

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    sget-object v0, Lcom/byazt/b/t;->tt:Lcom/byazt/zz/u;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/byazt/zz/ve;->pu()Lcom/byazt/zz/ve$c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/byazt/zz/ve$c;->tt()Lcom/byazt/zz/u;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/byazt/b/t;->tt:Lcom/byazt/zz/u;

    .line 29
    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/b/t;->tt:Lcom/byazt/zz/u;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lcom/byazt/b/t;->c:Lcom/byazt/zz/u;

    .line 39
    .line 40
    if-nez p0, :cond_4

    .line 41
    .line 42
    const-class p0, Lcom/byazt/b/t;

    .line 43
    .line 44
    monitor-enter p0

    .line 45
    :try_start_1
    sget-object v0, Lcom/byazt/b/t;->c:Lcom/byazt/zz/u;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    new-instance v0, Lcom/byazt/b/m;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/byazt/b/m;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/byazt/b/t;->c:Lcom/byazt/zz/u;

    .line 55
    .line 56
    :cond_3
    monitor-exit p0

    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception v0

    .line 59
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    throw v0

    .line 61
    :cond_4
    :goto_1
    sget-object p0, Lcom/byazt/b/t;->c:Lcom/byazt/zz/u;

    .line 62
    .line 63
    return-object p0
.end method
