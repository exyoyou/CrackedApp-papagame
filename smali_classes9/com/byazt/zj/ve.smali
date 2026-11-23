.class public Lcom/byazt/zj/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28c,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zj/ve$tt;,
        Lcom/byazt/zj/ve$c;,
        Lcom/byazt/zj/ve$uj;,
        Lcom/byazt/zj/ve$ve;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;

.field public static i:J

.field public static final n:Lcom/byazt/zj/ve;

.field public static final sp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final tt:Ljava/lang/String;

.field public static final ve:Ljava/lang/String;

.field public static x:J


# instance fields
.field public a:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Ljava/io/FileOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "next"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/byazt/zj/ve;->c:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "tmp"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/byazt/zj/ve;->tt:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "conf"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/byazt/zj/ve;->ve:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v0, Lcom/byazt/zj/ve;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/byazt/zj/ve;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/byazt/zj/ve;->n:Lcom/byazt/zj/ve;

    .line 66
    .line 67
    new-instance v0, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/byazt/zj/ve;->sp:Ljava/util/HashMap;

    .line 73
    .line 74
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/byazt/zj/ve;->ve(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Lcom/byazt/zj/ve;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/zj/ve;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/byazt/zj/ve$ve;)I
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/zj/ve;->c(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/byazt/zj/ve$ve;)I

    move-result p0

    return p0
.end method

.method private c(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/byazt/zj/ve$ve;)I
    .locals 2

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/zj/ve;->i:J

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0xd

    return p1

    .line 266
    :cond_0
    invoke-static {p4, p5}, Lcom/byazt/zj/ve;->c(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-static {p2, p5}, Lcom/byazt/zj/ve;->c(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 269
    new-instance p4, Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".conf"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    invoke-static {p3}, Lcom/byazt/nr/a;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p6, Lcom/byazt/zj/ve$ve;->a:Ljava/lang/String;

    .line 271
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p6, Lcom/byazt/zj/ve$ve;->sl:Ljava/lang/String;

    .line 272
    iget p1, p6, Lcom/byazt/zj/ve$ve;->tt:I

    invoke-static {p6}, Lcom/byazt/zj/ve;->n(Lcom/byazt/zj/ve$ve;)I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p6, Lcom/byazt/zj/ve$ve;->sp:Z

    .line 273
    invoke-static {p4, p6}, Lcom/byazt/zj/ve;->c(Ljava/io/File;Lcom/byazt/zj/ve$ve;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    return p1

    :cond_2
    const/16 p1, 0xf

    return p1

    :cond_3
    const/4 p1, 0x5

    return p1
.end method

.method public static synthetic c(J)J
    .locals 0

    .line 2
    sput-wide p0, Lcom/byazt/zj/ve;->i:J

    return-wide p0
.end method

.method private static c(Lcom/byazt/va/tt;Ljava/lang/String;)Lcom/byazt/hm/tt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/zj/ve$uj;
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/byazt/zj/ve$4;

    invoke-direct {v0, p1, p0}, Lcom/byazt/zj/ve$4;-><init>(Ljava/lang/String;Lcom/byazt/va/tt;)V

    .line 275
    new-instance p0, Lcom/byazt/zj/ve$5;

    invoke-direct {p0}, Lcom/byazt/zj/ve$5;-><init>()V

    .line 276
    new-instance v1, Lcom/byazt/qya/n$c;

    invoke-direct {v1, v0, p0}, Lcom/byazt/qya/n$c;-><init>(Ljava/util/concurrent/Callable;Lcom/byazt/qya/n$tt;)V

    .line 277
    invoke-static {p1}, Lcom/byazt/ogz/da;->tt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/byazt/qya/n$c;->c(I)Lcom/byazt/qya/n$c;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Lcom/byazt/qya/n$c;->c()Lcom/byazt/qya/n;

    move-result-object p0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/qya/n;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/hm/tt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 281
    :try_start_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 282
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 283
    :goto_0
    new-instance p0, Lcom/byazt/zj/ve$uj;

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/byazt/zj/ve$uj;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private c(Landroid/content/Context;Ljava/io/File;Lcom/byazt/zj/ve$ve;)Lcom/byazt/zj/ve$c;
    .locals 22

    move-object/from16 v0, p3

    if-eqz v0, :cond_12

    .line 105
    :try_start_0
    iget-object v1, v0, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 106
    :cond_0
    iget-object v1, v0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 108
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 110
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->uj(Lcom/byazt/zj/ve$ve;)Landroid/util/Pair;

    move-result-object v6

    .line 111
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 113
    :cond_3
    iget v1, v0, Lcom/byazt/zj/ve$ve;->tt:I

    invoke-static {v1}, Lcom/byazt/zj/ve;->tt(I)Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_4

    .line 114
    new-instance v0, Lcom/byazt/zj/ve$c;

    invoke-direct {v0, v2}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 115
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->ve(Lcom/byazt/zj/ve$ve;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 116
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 117
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/byazt/zj/ve;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    .line 118
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 119
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 120
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "-"

    const/4 v14, 0x1

    if-eqz v1, :cond_7

    :try_start_1
    sget v1, Lcom/byazt/omf/p;->uj:I

    iget v4, v0, Lcom/byazt/zj/ve$ve;->tt:I

    if-lt v1, v4, :cond_7

    .line 121
    iget-object v1, v0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/byazt/omf/p;->uj:I

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/byazt/omf/p;->uj:I

    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    sget v2, Lcom/byazt/omf/p;->uj:I

    iput v2, v0, Lcom/byazt/zj/ve$ve;->i:I

    .line 129
    iput v2, v0, Lcom/byazt/zj/ve$ve;->x:I

    .line 130
    iput-boolean v14, v0, Lcom/byazt/zj/ve$ve;->sp:Z

    .line 131
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".conf"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-static {v2, v0}, Lcom/byazt/zj/ve;->c(Ljava/io/File;Lcom/byazt/zj/ve$ve;)Z

    .line 133
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 134
    :cond_7
    iget-object v1, v0, Lcom/byazt/zj/ve$ve;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/zj/ve$ve;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 135
    new-instance v0, Lcom/byazt/zj/ve$c;

    invoke-direct {v0, v14}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 136
    :cond_8
    iget-object v1, v0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    iget-object v4, v0, Lcom/byazt/zj/ve$ve;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 140
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_9
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/byazt/zj/ve$ve;->x:I

    .line 144
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/byazt/zj/ve$ve;->i:I

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/byazt/zj/ve;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    .line 149
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 150
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/zj/ve$ve;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ".dex.zip"

    goto :goto_0

    :cond_b
    const-string v1, ".apk"

    .line 152
    :goto_0
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 154
    invoke-static {v10}, Lcom/byazt/nr/a;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/zj/ve$ve;->a:Ljava/lang/String;

    .line 155
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/zj/ve$ve;->sl:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 157
    :cond_c
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/byazt/zj/ve;->sp:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 158
    new-instance v0, Lcom/byazt/zj/ve$c;

    invoke-direct {v0, v2}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 159
    :cond_d
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x1dbb

    const/16 v5, 0x1dbb

    goto :goto_1

    :cond_e
    const/4 v5, 0x0

    .line 160
    :goto_1
    new-instance v8, Ljava/io/File;

    move-object/from16 v1, p2

    invoke-direct {v8, v1, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/byazt/zj/ve;->x:J

    .line 162
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 163
    new-instance v4, Lcom/byazt/zj/ve$tt;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/byazt/zj/ve$tt;-><init>(Lcom/byazt/zj/ve$1;)V

    .line 164
    new-instance v3, Lcom/byazt/zj/c;

    iget-object v2, v0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget-object v13, v0, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    .line 165
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    iget v1, v0, Lcom/byazt/zj/ve$ve;->da:I

    if-ne v1, v14, :cond_f

    const/16 v20, 0x1

    goto :goto_2

    :cond_f
    const/16 v20, 0x0

    :goto_2
    new-instance v21, Lcom/byazt/zj/ve$3;

    move-object/from16 v1, v21

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    move-object/from16 p2, v3

    move-object v3, v4

    move-object v14, v4

    move-object/from16 v4, p3

    move-object v0, v7

    invoke-direct/range {v1 .. v12}, Lcom/byazt/zj/ve$3;-><init>(Lcom/byazt/zj/ve;Lcom/byazt/zj/ve$tt;Lcom/byazt/zj/ve$ve;ILandroid/util/Pair;Ljava/util/concurrent/CountDownLatch;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v15

    move-object/from16 v15, p2

    move-object/from16 v17, v13

    move-object/from16 v19, v1

    invoke-direct/range {v15 .. v21}, Lcom/byazt/zj/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/zj/c$c;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 166
    invoke-virtual {v2, v1}, Lcom/byazt/zj/c;->c(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v1, 0x9

    .line 167
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v14, v0}, Lcom/byazt/zj/ve$tt;->tt(Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 168
    :try_start_3
    invoke-virtual {v14, v1}, Lcom/byazt/zj/ve$tt;->c(I)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "countDownLatch interrupted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/byazt/zj/ve$tt;->c(Ljava/lang/String;)V

    .line 170
    :goto_4
    invoke-virtual {v14}, Lcom/byazt/zj/ve$tt;->n()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 171
    invoke-virtual {v14, v1}, Lcom/byazt/zj/ve$tt;->c(I)V

    const-string v0, "countDownLatch timeout"

    .line 172
    invoke-virtual {v14, v0}, Lcom/byazt/zj/ve$tt;->c(Ljava/lang/String;)V

    .line 173
    :cond_11
    new-instance v0, Lcom/byazt/zj/ve$c;

    invoke-virtual {v14}, Lcom/byazt/zj/ve$tt;->tt()I

    move-result v1

    invoke-virtual {v14}, Lcom/byazt/zj/ve$tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/byazt/zj/ve$tt;->uj()Z

    move-result v3

    invoke-virtual {v14}, Lcom/byazt/zj/ve$tt;->c()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/zj/ve$c;-><init>(ILjava/lang/String;ZI)V

    return-object v0

    .line 174
    :cond_12
    :goto_5
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download file error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginUpdater"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 177
    :try_start_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 178
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 179
    :goto_6
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/byazt/zj/ve$c;-><init>(ILjava/lang/String;ZI)V

    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/io/File;Lcom/byazt/zj/ve$ve;ZZ)Lcom/byazt/zj/ve$c;
    .locals 25

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    if-eqz v9, :cond_12

    .line 180
    :try_start_0
    iget-object v0, v9, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 181
    :cond_0
    iget-object v0, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 183
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 185
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->uj(Lcom/byazt/zj/ve$ve;)Landroid/util/Pair;

    move-result-object v0

    .line 186
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 188
    :cond_3
    iget v1, v9, Lcom/byazt/zj/ve$ve;->tt:I

    invoke-static {v1}, Lcom/byazt/zj/ve;->tt(I)Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_4

    .line 189
    new-instance v0, Lcom/byazt/zj/ve$c;

    invoke-direct {v0, v2}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 190
    :cond_4
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->ve(Lcom/byazt/zj/ve$ve;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 191
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 192
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/byazt/zj/ve;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 195
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const-string v5, "-"

    if-eqz v1, :cond_7

    :try_start_1
    sget v1, Lcom/byazt/omf/p;->uj:I

    iget v6, v9, Lcom/byazt/zj/ve$ve;->tt:I

    if-lt v1, v6, :cond_7

    .line 196
    iget-object v0, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/byazt/omf/p;->uj:I

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/byazt/omf/p;->uj:I

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    sget v1, Lcom/byazt/omf/p;->uj:I

    iput v1, v9, Lcom/byazt/zj/ve$ve;->i:I

    .line 204
    iput v1, v9, Lcom/byazt/zj/ve$ve;->x:I

    .line 205
    iput-boolean v4, v9, Lcom/byazt/zj/ve$ve;->sp:Z

    .line 206
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".conf"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-static {v1, v9}, Lcom/byazt/zj/ve;->c(Ljava/io/File;Lcom/byazt/zj/ve$ve;)Z

    .line 208
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 209
    :cond_7
    iget-object v1, v9, Lcom/byazt/zj/ve$ve;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/zj/ve$ve;->c()Z

    move-result v1

    if-nez v1, :cond_8

    .line 210
    new-instance v0, Lcom/byazt/zj/ve$c;

    invoke-direct {v0, v4}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 211
    :cond_8
    iget-object v1, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    iget-object v4, v9, Lcom/byazt/zj/ve$ve;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/byazt/nr/a;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/byazt/zj/ve$ve;->x:I

    .line 219
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/byazt/zj/ve$ve;->i:I

    .line 221
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static/range {p1 .. p1}, Lcom/byazt/zj/ve;->n(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    .line 225
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 226
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/zj/ve$ve;->c()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, ".dex.zip"

    goto :goto_0

    :cond_b
    const-string v4, ".apk"

    .line 227
    :goto_0
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 229
    invoke-static {v7}, Lcom/byazt/nr/a;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/byazt/zj/ve$ve;->a:Ljava/lang/String;

    .line 230
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/byazt/zj/ve$ve;->sl:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 232
    :cond_c
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/byazt/zj/ve;->sp:Ljava/util/HashMap;

    iget-object v12, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 233
    new-instance v0, Lcom/byazt/zj/ve$c;

    invoke-direct {v0, v2}, Lcom/byazt/zj/ve$c;-><init>(I)V

    return-object v0

    .line 234
    :cond_d
    invoke-static/range {p3 .. p3}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x1dbb

    const/16 v13, 0x1dbb

    goto :goto_1

    :cond_e
    const/4 v13, 0x0

    .line 235
    :goto_1
    new-instance v2, Ljava/io/File;

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sput-wide v11, Lcom/byazt/zj/ve;->x:J

    .line 237
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-direct {v8, v4, v1}, Lcom/byazt/zj/ve;->tt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 239
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v11

    iget-object v12, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v14, v9, Lcom/byazt/zj/ve$ve;->tt:I

    iget-object v10, v9, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    const/16 v16, 0x7

    const-string v17, ""

    const-wide/16 v18, 0x0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 240
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    move v0, v15

    move-object v15, v10

    move/from16 v20, p4

    move/from16 v22, v0

    .line 241
    invoke-virtual/range {v11 .. v24}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V

    .line 242
    iget-object v10, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v11, v9, Lcom/byazt/zj/ve$ve;->tt:I

    .line 243
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 244
    invoke-static {v10, v11}, Lcom/byazt/ukr/yp;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v10, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/byazt/ogz/da;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 246
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v10

    invoke-virtual {v10}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v10

    iget-object v11, v9, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    invoke-virtual {v10, v11, v4, v1}, Lcom/byazt/hm/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/va/tt;

    move-result-object v1

    .line 247
    iget-object v4, v9, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/byazt/zj/ve;->c(Lcom/byazt/va/tt;Ljava/lang/String;)Lcom/byazt/hm/tt;

    move-result-object v1

    goto :goto_2

    .line 248
    :cond_f
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v10

    invoke-virtual {v10}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v10

    invoke-virtual {v10}, Lcom/byazt/hm/c;->uj()Lcom/byazt/va/tt;

    move-result-object v10

    .line 249
    iget-object v11, v9, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v10, v4, v1}, Lcom/byazt/va/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v10}, Lcom/byazt/va/tt;->c()Lcom/byazt/hm/tt;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_10

    .line 252
    invoke-virtual {v1}, Lcom/byazt/hm/tt;->i()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v1, p0

    move-object v4, v7

    move-object/from16 v7, p3

    .line 253
    invoke-direct/range {v1 .. v7}, Lcom/byazt/zj/ve;->c(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/byazt/zj/ve$ve;)I

    move-result v1

    .line 254
    new-instance v2, Lcom/byazt/zj/ve$c;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/byazt/zj/ve$c;-><init>(ILjava/lang/String;ZI)V

    return-object v2

    .line 255
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/byazt/zj/ve;->i:J

    .line 256
    new-instance v2, Lcom/byazt/zj/ve$c;

    if-eqz v1, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/byazt/hm/tt;->tt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/hm/tt;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_11
    const-string v1, "no response"

    :goto_3
    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/byazt/zj/ve$c;-><init>(ILjava/lang/String;ZI)V

    return-object v2

    .line 257
    :cond_12
    :goto_4
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/byazt/zj/ve$c;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download file error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginUpdater"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_13

    move-object/from16 v1, p1

    .line 259
    invoke-direct {v8, v1, v9}, Lcom/byazt/zj/ve;->c(Landroid/content/Context;Lcom/byazt/zj/ve$ve;)V

    .line 260
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 261
    :try_start_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 262
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 263
    :goto_5
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/byazt/zj/ve$c;-><init>(ILjava/lang/String;ZI)V

    return-object v0
.end method

.method public static c()Lcom/byazt/zj/ve;
    .locals 1

    .line 6
    sget-object v0, Lcom/byazt/zj/ve;->n:Lcom/byazt/zj/ve;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.byted.live.lite@64"

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.byted.live.lite@32"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.byted.live.lite@armeabi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "com.byted.live.lite"

    return-object p0
.end method

.method private c(Landroid/content/Context;Lcom/byazt/zj/ve$ve;)V
    .locals 3

    .line 284
    iget-object v0, p2, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/ogz/da;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "device_info_new"

    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/byazt/dna/u;->getRealNetworkType(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lcom/byazt/qya/ve;->c()Lcom/byazt/qya/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/zj/ve$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/zj/ve$6;-><init>(Lcom/byazt/zj/ve;Landroid/content/Context;Lcom/byazt/zj/ve$ve;)V

    invoke-virtual {v0, v1}, Lcom/byazt/qya/ve;->c(Lcom/byazt/qya/ve$tt;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/zj/ve$ve;ZZ)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    .line 59
    new-instance v0, Lcom/byazt/zj/ve$c;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/byazt/zj/ve$c;-><init>(I)V

    .line 60
    iget v2, v7, Lcom/byazt/zj/ve$ve;->da:I

    iget-object v3, v7, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-direct {v6, v1, v2, v3}, Lcom/byazt/zj/ve;->c(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->zm()Lcom/byazt/eli/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/byazt/zj/ve$ve;->da:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    move-object v15, v1

    const/16 v14, 0x14

    goto :goto_1

    .line 62
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/byazt/zj/ve;->uj(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-eqz p4, :cond_1

    .line 63
    invoke-direct {v6, v1, v2, v7}, Lcom/byazt/zj/ve;->c(Landroid/content/Context;Ljava/io/File;Lcom/byazt/zj/ve$ve;)Lcom/byazt/zj/ve$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/byazt/zj/ve;->c(Landroid/content/Context;Ljava/io/File;Lcom/byazt/zj/ve$ve;ZZ)Lcom/byazt/zj/ve$c;

    move-result-object v0

    .line 65
    :goto_0
    invoke-static {v0}, Lcom/byazt/zj/ve$c;->c(Lcom/byazt/zj/ve$c;)I

    move-result v2

    const-string v1, ""

    move-object v15, v1

    move v14, v2

    :goto_1
    const/16 v1, 0x9

    if-eq v14, v1, :cond_3

    const/16 v1, 0xe

    if-ne v14, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    goto :goto_3

    .line 66
    :cond_3
    :goto_2
    iget-object v1, v7, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    const/16 v2, 0x3ec

    invoke-virtual {v6, v1, v2}, Lcom/byazt/zj/ve;->c(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 67
    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v8, 0x1dbb

    const/16 v11, 0x1dbb

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 68
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/byazt/zj/ve;->uj(Lcom/byazt/zj/ve$ve;)Landroid/util/Pair;

    move-result-object v2

    .line 69
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v9

    iget-object v10, v7, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v12, v7, Lcom/byazt/zj/ve$ve;->tt:I

    iget-object v13, v7, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    sget-wide v3, Lcom/byazt/zj/ve;->i:J

    sget-wide v16, Lcom/byazt/zj/ve;->x:J

    sub-long v16, v3, v16

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 71
    invoke-static {v0}, Lcom/byazt/zj/ve$c;->tt(Lcom/byazt/zj/ve$c;)Z

    move-result v20

    .line 72
    invoke-static {v0}, Lcom/byazt/zj/ve$c;->ve(Lcom/byazt/zj/ve$c;)I

    move-result v22

    move/from16 v18, p3

    move/from16 v21, p4

    .line 73
    invoke-virtual/range {v9 .. v22}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V

    if-eqz v1, :cond_5

    .line 74
    invoke-static {v0}, Lcom/byazt/zj/ve$c;->c(Lcom/byazt/zj/ve$c;)I

    move-result v0

    invoke-direct {v6, v7, v0}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve$ve;I)V

    :cond_5
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/byazt/zj/ve$ve;",
            ">;)V"
        }
    .end annotation

    const-string v1, "__tt_pl_up_lock__"

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/byazt/zj/ve;->c(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 19
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/byazt/zj/ve;->tt(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    goto/16 :goto_5

    .line 20
    :cond_0
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zj/ve;->ve()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    .line 22
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/byazt/zj/ve;->tt(Landroid/content/Context;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 23
    :cond_1
    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 24
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 25
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/byazt/zj/ve$ve;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v11, p0

    .line 26
    :try_start_5
    invoke-direct {v11, v6}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve$ve;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 28
    :cond_2
    new-instance v12, Lcom/byazt/zj/ve$2;

    const-string v4, "pl download"

    move-object v2, v12

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move v7, v0

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/byazt/zj/ve$2;-><init>(Lcom/byazt/zj/ve;Ljava/lang/String;Landroid/content/Context;Lcom/byazt/zj/ve$ve;ZLjava/util/concurrent/CountDownLatch;)V

    invoke-static {v12}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    goto :goto_0

    :cond_3
    move-object/from16 v11, p0

    .line 29
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v0, "m_s"

    .line 30
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/zm;

    if-eqz v0, :cond_4

    const/16 v2, 0x40

    const/4 v3, 0x0

    .line 31
    invoke-interface {v0, v3, v2, v3}, Lcom/byazt/dna/zm;->setState(IIZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 32
    :cond_4
    :goto_1
    :try_start_6
    invoke-direct/range {p0 .. p1}, Lcom/byazt/zj/ve;->tt(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    .line 33
    :goto_2
    :try_start_7
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v12

    const-string v13, ""

    const/16 v14, 0x1dbb

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0xe

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v12 .. v25}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V

    const-string v2, "PluginUpdater"

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handle file error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 35
    :goto_3
    :try_start_8
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    .line 36
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/byazt/zj/ve;->tt(Landroid/content/Context;)V

    .line 37
    throw v0

    :catchall_3
    move-exception v0

    .line 38
    :goto_5
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method private c(Lcom/byazt/zj/ve$ve;I)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/byazt/zj/ve;->a:Ljava/util/function/Function;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    invoke-virtual {p1}, Lcom/byazt/zj/ve$ve;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x2

    .line 78
    invoke-virtual {v1, v2, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_1

    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 81
    :goto_1
    invoke-static {}, Lcom/byazt/yxi/n;->c()Lcom/byazt/yxi/n;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/byazt/yxi/n;->c(Z)Lcom/byazt/yxi/n;

    move-result-object v1

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x3ec

    :goto_2
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/n;->c(I)Lcom/byazt/yxi/n;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/byazt/yxi/n;->c(Landroid/util/SparseArray;)Lcom/byazt/yxi/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/yxi/n;->tt()Landroid/util/SparseArray;

    move-result-object p2

    .line 82
    :try_start_0
    sget v0, Lcom/byazt/omf/p;->uj:I

    invoke-static {v0}, Lcom/byazt/lq/uj;->c(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v1, Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 83
    :try_start_1
    invoke-static {p2}, Lcom/byazt/yxi/uj;->c(Landroid/util/SparseArray;)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 84
    invoke-virtual {p2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 85
    invoke-virtual {p2, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 86
    invoke-virtual {p2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p2

    goto :goto_3

    .line 87
    :cond_3
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v0

    const v1, -0x5f5e0eb

    .line 90
    invoke-virtual {v0, v1, p2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p2

    .line 92
    :goto_3
    iget-object v0, p0, Lcom/byazt/zj/ve;->a:Ljava/util/function/Function;

    invoke-static {v0, p2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 93
    instance-of v0, p2, Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 94
    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p2}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p2

    goto :goto_4

    .line 95
    :cond_4
    sget v0, Lcom/byazt/omf/p;->uj:I

    invoke-static {v0}, Lcom/byazt/lq/uj;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    if-eqz v0, :cond_5

    .line 96
    check-cast p2, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    goto :goto_4

    :cond_5
    move-object p2, v1

    :goto_4
    if-eqz p2, :cond_6

    const/4 v0, 0x4

    .line 97
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/byazt/zj/ve$ve;->sl:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 98
    sget-object p2, Lcom/byazt/zj/ve;->sp:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/byazt/zj/ve$ve;->sl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/byazt/zj/ve$ve;->ve:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/byazt/zj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 101
    :cond_6
    iget-object p1, p1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    const-string p2, "com.byted.csj.ext"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 102
    invoke-static {v1}, Lcom/byazt/whk/da;->c(Ljava/util/function/Function;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Download pl done, but install error:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginUpdater"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zj/ve;Landroid/content/Context;Lcom/byazt/zj/ve$ve;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/zj/ve;->c(Landroid/content/Context;Lcom/byazt/zj/ve$ve;ZZ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zj/ve;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/zj/ve;->c(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zj/ve;Lcom/byazt/zj/ve$ve;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve$ve;I)V

    return-void
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 290
    new-instance v0, Lcom/byazt/zj/ve$7;

    invoke-direct {v0, p1}, Lcom/byazt/zj/ve$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/byazt/omf/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 15
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "PluginUpdater"

    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/byazt/zj/ve;->uj(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "update.lock"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 45
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "create lock file failed"

    .line 46
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 47
    :cond_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/byazt/zj/ve;->uj:Ljava/io/FileOutputStream;

    .line 48
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 49
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const-string p1, "Acquire file lock failed"

    .line 50
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/byazt/zj/ve;->uj:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 52
    iget-object v2, p0, Lcom/byazt/zj/ve;->uj:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_5

    .line 53
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :catch_0
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Try get file lock failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private c(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    .line 10
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/x;->zm()Lcom/byazt/eli/c;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Lcom/byazt/eli/c;->c(Ljava/lang/String;)I

    move-result p1

    .line 12
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/omf/x;->bm()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 13
    invoke-direct {p0, p1}, Lcom/byazt/zj/ve;->c(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    if-ne p1, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    move p2, p1

    .line 14
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/byazt/zj/ve;->c(I)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/byazt/zj/ve$ve;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    .line 56
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "com.byted.pangle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    invoke-static {}, Lcom/byazt/by/ve;->c()Lcom/byazt/by/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/by/ve;->x()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    const-string p1, "PluginUpdater"

    const-string v0, "force use bst, dont update ad pl"

    .line 58
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method private static c(Ljava/io/File;Lcom/byazt/zj/ve$ve;)Z
    .locals 1

    .line 286
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 287
    invoke-virtual {p1}, Lcom/byazt/zj/ve$ve;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "PluginUpdater"

    const-string p1, "Write config failed;"

    .line 289
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static n(Lcom/byazt/zj/ve$ve;)I
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x1dbb

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "plugin_version"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/zj/ve;->tt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v1, p0

    :cond_2
    return v1
.end method

.method private static n(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/byazt/zj/ve;->ve(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/byazt/zj/ve;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static tt(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "."

    const-string v2, ""

    .line 22
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static tt()Ljava/lang/String;
    .locals 3

    .line 17
    invoke-static {}, Lcom/byazt/qya/tt;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm64-v8a"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "@64"

    goto :goto_0

    :cond_0
    const-string v1, "armeabi-v7a"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "@32"

    goto :goto_0

    :cond_1
    const-string v1, "armeabi"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "@armeabi"

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 21
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.byted.live.lite"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic tt(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/zj/ve;->ve(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private tt(Landroid/content/Context;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/zj/ve;->uj:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/byazt/zj/ve;->uj(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    :try_start_1
    const-string v3, "update.lock"

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static tt(I)Z
    .locals 2

    .line 14
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nys/tt;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/pangle_p/com.byted.pangle/version-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static tt(Lcom/byazt/zj/ve$ve;)Z
    .locals 1

    const-string v0, "com.byted.pangle"

    .line 10
    iget-object p0, p0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private tt(Lcom/byazt/zj/ve$ve;I)Z
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x12

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 12
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".temp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static uj(Lcom/byazt/zj/ve$ve;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/zj/ve$ve;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/util/Pair;

    const/16 v3, 0x1dbb

    iget p0, p0, Lcom/byazt/zj/ve$ve;->tt:I

    if-ne v3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "plugin_version"

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zj/ve;->tt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_1
    new-instance v3, Landroid/util/Pair;

    iget p0, p0, Lcom/byazt/zj/ve$ve;->tt:I

    if-ne v0, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static uj(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/byazt/zj/ve;->ve(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sget-object v1, Lcom/byazt/zj/ve;->tt:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ve(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "tt_pangle_bykv_file"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/byazt/nys/tt;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static ve(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/zj/ve$ve;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    new-instance v3, Lcom/byazt/zj/ve$ve;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/byazt/zj/ve$ve;-><init>(Lcom/byazt/zj/ve$1;)V

    const-string v4, "package_name"

    .line 12
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/zj/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    const-string v4, "version_code"

    .line 13
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/byazt/zj/ve$ve;->tt:I

    const-string v4, "version_name"

    .line 14
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/byazt/zj/ve$ve;->ve:Ljava/lang/String;

    const-string v4, "download_url"

    .line 15
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    const-string v4, "sign"

    .line 16
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/byazt/zj/ve$ve;->n:Ljava/lang/String;

    const-string v4, "min_version"

    .line 17
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/zj/ve;->tt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/byazt/zj/ve$ve;->x:I

    const-string v4, "max_version"

    .line 18
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/zj/ve;->tt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/byazt/zj/ve$ve;->i:I

    const-string v4, "plugin_update_network"

    const/4 v5, -0x2

    .line 19
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/byazt/zj/ve$ve;->da:I

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_2
    new-instance p0, Lcom/byazt/zj/ve$8;

    invoke-direct {p0}, Lcom/byazt/zj/ve$8;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private ve()Z
    .locals 3

    .line 22
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->po()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "use_downloader"

    .line 23
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static ve(Lcom/byazt/zj/ve$ve;)Z
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/byazt/zj/ve;->tt(Lcom/byazt/zj/ve$ve;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/byazt/omf/p;->uj:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "sdk_version"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zj/ve;->tt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v2, p0, Lcom/byazt/zj/ve$ve;->x:I

    if-lt v0, v2, :cond_2

    iget p0, p0, Lcom/byazt/zj/ve$ve;->i:I

    if-gt v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public c(Ljava/lang/String;I)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/byazt/zj/ve;->a:Ljava/util/function/Function;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcom/byazt/yxi/n;->c()Lcom/byazt/yxi/n;

    move-result-object v0

    const/4 v1, 0x0

    .line 294
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/n;->c(Z)Lcom/byazt/yxi/n;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p2}, Lcom/byazt/yxi/n;->c(I)Lcom/byazt/yxi/n;

    move-result-object p2

    .line 296
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/yxi/n;->c(Landroid/util/SparseArray;)Lcom/byazt/yxi/n;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lcom/byazt/yxi/n;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 298
    sget p2, Lcom/byazt/omf/p;->uj:I

    const/16 v0, 0x1b58

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x1

    if-ge p2, v0, :cond_2

    const/16 v0, 0x1a90

    if-ge p2, v0, :cond_1

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {p1}, Lcom/byazt/yxi/uj;->c(Landroid/util/SparseArray;)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 300
    invoke-virtual {p1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 301
    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_1

    .line 303
    :cond_2
    :goto_0
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 304
    invoke-virtual {p2, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 305
    invoke-virtual {p2, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p2

    const v0, -0x5f5e0eb

    .line 306
    invoke-virtual {p2, v0, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 308
    :goto_1
    iget-object p2, p0, Lcom/byazt/zj/ve;->a:Ljava/util/function/Function;

    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/byazt/zj/ve;->a:Ljava/util/function/Function;

    return-void
.end method

.method public c(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/byazt/zj/ve$1;

    const-string v2, "updatePlugin"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/byazt/zj/ve$1;-><init>(Lcom/byazt/zj/ve;Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v1}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    :cond_1
    :goto_0
    return-void
.end method
