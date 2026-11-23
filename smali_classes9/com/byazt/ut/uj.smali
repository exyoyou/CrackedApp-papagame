.class public final Lcom/byazt/ut/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x342,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AutoService"

.field public static tt:Lcom/byazt/ut/uj;


# instance fields
.field public final c:Lcom/byazt/ut/c;

.field public ve:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/byazt/omf/p;->tt:I

    .line 2
    .line 3
    iput v0, p0, Lcom/byazt/ut/uj;->ve:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/byazt/ut/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/byazt/ut/c;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 14
    .line 15
    return-void
.end method

.method public static getAppContext(Ljava/lang/String;)Lcom/byazt/dna/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/byazt/ut/c;->c(Ljava/lang/String;)Lcom/byazt/dna/c;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static getInstance()Lcom/byazt/ut/uj;
    .locals 7

    .line 1
    sget-object v0, Lcom/byazt/ut/uj;->tt:Lcom/byazt/ut/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-class v0, Lcom/byazt/ut/uj;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/byazt/ut/uj;->tt:Lcom/byazt/ut/uj;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    new-instance v3, Lcom/byazt/ut/uj;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/byazt/ut/uj;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v3, Lcom/byazt/ut/uj;->tt:Lcom/byazt/ut/uj;

    .line 23
    .line 24
    const-string v3, "AutoService"

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "getInstance cost: "

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    sub-long/2addr v5, v1

    .line 38
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v3, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lcom/byazt/ut/uj;->tt:Lcom/byazt/ut/uj;

    .line 50
    .line 51
    return-object v0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw v1
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not support"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getService(Ljava/lang/Class;Lcom/byazt/dna/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/byazt/dna/c;",
            ")TT;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not support"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/byazt/dna/c;",
            ")TT;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/byazt/ut/uj;->getInstance()Lcom/byazt/ut/uj;

    move-result-object v0

    iget-object v0, v0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p0, p1, v1}, Lcom/byazt/ut/c;->c(Ljava/lang/String;Lcom/byazt/dna/c;Z)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/byazt/ut/c;->c(Ljava/lang/String;Lcom/byazt/dna/c;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/byazt/ut/c;->c()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 27
    .line 28
    invoke-virtual {v3, p0, v2}, Lcom/byazt/ut/c;->c(Lcom/byazt/ut/uj;Ljava/util/function/Function;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3, v1, v0}, Lcom/byazt/ut/c;->c(Ljava/lang/String;Lcom/byazt/dna/c;Z)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2
    instance-of v2, p1, Ljava/lang/Integer;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget v2, p0, Lcom/byazt/ut/uj;->ve:I

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/byazt/ut/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object p1

    .line 65
    :catch_0
    move-exception v2

    .line 66
    const-string v3, "AutoService"

    .line 67
    .line 68
    const-string v4, "AutoService apply error"

    .line 69
    .line 70
    invoke-static {v3, v4, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/byazt/ut/c;->a()Lcom/byazt/ut/i;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    const-string p1, ""

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v5, " "

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :goto_1
    invoke-interface {v3, v0, p1, v2}, Lcom/byazt/ut/i;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    return-object v1
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ut/uj;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public setForbiddenReuseList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ut/c;->c(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lcom/byazt/ut/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ut/uj;->c:Lcom/byazt/ut/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/ut/c;->c(Lcom/byazt/ut/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
