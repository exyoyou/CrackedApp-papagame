.class public final Lcom/byazt/no/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x311,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/no/tt;->c(Ljava/lang/String;Lcom/byazt/hs/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/hs/da;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/hs/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/no/tt$2;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/no/tt$2;->tt:Lcom/byazt/hs/da;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/no/tt$2;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/no/tt$2;->tt:Lcom/byazt/hs/da;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/byazt/hs/da;->c(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    :try_start_0
    invoke-static {v2, v3, v1, v1}, Lcom/byazt/no/tt;->c(JLcom/byazt/t/DownloadInfo;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/byazt/no/c;->c()Lcom/byazt/no/c;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v5, p0, Lcom/byazt/no/tt$2;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Lcom/byazt/no/c;->c(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-static {}, Lcom/byazt/no/c;->c()Lcom/byazt/no/c;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/byazt/no/tt$2;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v4, v5, v0}, Lcom/byazt/no/c;->c(Ljava/lang/String;Ljava/util/List;)Lcom/byazt/no/ve;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_2
    if-nez v1, :cond_4

    .line 47
    .line 48
    new-instance v4, Lcom/byazt/no/ve;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/byazt/no/tt$2;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v4, v5, v0, v2, v3}, Lcom/byazt/no/ve;-><init>(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 53
    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v4}, Lcom/byazt/no/ve;->c()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/byazt/no/ve;->n()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/byazt/no/c;->c()Lcom/byazt/no/c;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/byazt/no/tt$2;->c:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v4}, Lcom/byazt/no/c;->c(Ljava/lang/String;Lcom/byazt/no/ve;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_3
    move-object v1, v4

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object v1, v4

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    move-object v1, v4

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/byazt/no/ve;->i()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/byazt/no/tt$2;->tt:Lcom/byazt/hs/da;

    .line 86
    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-interface {v2, v0}, Lcom/byazt/hs/da;->c(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    .line 91
    .line 92
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Lcom/byazt/no/ve;->ve()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    :catchall_1
    return-void

    .line 96
    :catchall_2
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    .line 99
    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 100
    .line 101
    .line 102
    :try_start_5
    invoke-virtual {v1}, Lcom/byazt/no/ve;->ve()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 103
    .line 104
    .line 105
    :catchall_3
    return-void

    .line 106
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Lcom/byazt/no/ve;->ve()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 107
    .line 108
    .line 109
    :catchall_4
    throw v0
.end method
