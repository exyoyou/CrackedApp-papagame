.class public final Lcom/byazt/rx/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x98,
        0x36
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/rx/ve;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byazt/uy/ve;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "launch_"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    sget-object p1, Lcom/byazt/uy/ve;->c:Lcom/byazt/uy/ve;

    return-object p1

    :cond_1
    const-string v1, "anr_"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    sget-object p1, Lcom/byazt/uy/ve;->uj:Lcom/byazt/uy/ve;

    return-object p1

    :cond_2
    const-string v1, "java_"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "is_dart"

    .line 16
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 17
    sget-object p1, Lcom/byazt/uy/ve;->sp:Lcom/byazt/uy/ve;

    return-object p1

    :cond_3
    const-string p1, "isJava"

    .line 18
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 19
    sget-object p1, Lcom/byazt/uy/ve;->tt:Lcom/byazt/uy/ve;

    return-object p1

    :cond_4
    return-object v0
.end method

.method private c()V
    .locals 7

    const-string v0, "history_time"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/rx/ve;->c:Landroid/content/Context;

    const-string v2, "npth"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 4
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 7
    iget-object v2, p0, Lcom/byazt/rx/ve;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/byazt/mg/x;->tt(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/mg/uj;->c(Ljava/io/File;)Z

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Lcom/byazt/rx/ve$1;

    invoke-direct {p2, p0}, Lcom/byazt/rx/ve$1;-><init>(Lcom/byazt/rx/ve;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private tt()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/rx/ve;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/mg/x;->c(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".npth"

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/byazt/rx/ve;->c(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, v0

    .line 25
    if-ge v1, v2, :cond_3

    .line 26
    .line 27
    const/16 v2, 0x32

    .line 28
    .line 29
    if-ge v1, v2, :cond_3

    .line 30
    .line 31
    aget-object v2, v0, v1

    .line 32
    .line 33
    :try_start_0
    invoke-static {}, Lcom/byazt/kr/c;->c()Lcom/byazt/kr/c;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Lcom/byazt/kr/c;->c(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-static {v2}, Lcom/byazt/mg/uj;->c(Ljava/io/File;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Lcom/byazt/mg/uj;->ve(Ljava/lang/String;)Lcom/byazt/xz/ve;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/byazt/xz/ve;->tt()Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/byazt/xz/ve;->tt()Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-direct {p0, v5, v4}, Lcom/byazt/rx/ve;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byazt/uy/ve;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/byazt/xz/ve;->tt()Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v6, "upload_scene"

    .line 83
    .line 84
    const-string v7, "launch_scan"

    .line 85
    .line 86
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/byazt/xz/ve;->c()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3}, Lcom/byazt/xz/ve;->ve()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v5, v4, v3}, Lcom/byazt/jz/tt;->c(Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/jz/a;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/byazt/jz/a;->c()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    invoke-static {v2}, Lcom/byazt/mg/uj;->c(Ljava/io/File;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_2

    .line 116
    .line 117
    invoke-static {}, Lcom/byazt/kr/c;->c()Lcom/byazt/kr/c;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Lcom/byazt/bk/c;->c(Ljava/lang/String;)Lcom/byazt/bk/c;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v3, v2}, Lcom/byazt/kr/c;->c(Lcom/byazt/bk/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-exception v2

    .line 134
    invoke-static {v2}, Lcom/byazt/mg/da;->tt(Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/rx/ve;->c()V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/byazt/rx/ve;->tt()V

    :cond_0
    return-void
.end method
