.class public Lcom/byazt/iu/uj;
.super Lcom/byazt/iu/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/iu/uj$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/byazt/iu/tt;"
    }
.end annotation


# instance fields
.field public final tt:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/iu/tt;-><init>(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/byazt/iu/uj;->tt:J

    .line 9
    .line 10
    return-void
.end method

.method private a(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    move-object/from16 v7, p2

    .line 3
    .line 4
    move-object/from16 v0, p3

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/byazt/ete/x$ve;->sl()Lcom/byazt/ete/x$uj;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, v5}, Lcom/byazt/vvt/a;->c(Ljava/lang/String;Lcom/byazt/ete/x$uj;)Lcom/byazt/vvt/a$c;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    new-instance v9, Lcom/byazt/iuu/uj;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget v2, v8, Lcom/byazt/iu/tt;->c:I

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v9, v7, v1, v2, v3}, Lcom/byazt/iuu/uj;-><init>(Lcom/byazt/iu/n;Lcom/byazt/ete/x$ve;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9}, Lcom/byazt/iuu/uj;->c()V

    .line 38
    .line 39
    .line 40
    move-object/from16 v10, p1

    .line 41
    .line 42
    invoke-direct {p0, v10, v7, v0, v9}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/byazt/ete/x$uj;->n()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v4, v1, v5}, Lcom/byazt/vvt/a$c;->c(ILcom/byazt/ete/x$uj;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v1, 0x0

    .line 57
    if-gez v6, :cond_0

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v1}, Lcom/byazt/iuu/uj;->c(Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    if-lez v6, :cond_1

    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    int-to-long v11, v6

    .line 73
    const-wide/16 v13, 0x3c

    .line 74
    .line 75
    mul-long v11, v11, v13

    .line 76
    .line 77
    const-wide/16 v13, 0x3e8

    .line 78
    .line 79
    mul-long v11, v11, v13

    .line 80
    .line 81
    sub-long/2addr v2, v11

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    :goto_0
    move-wide v11, v2

    .line 89
    iget v0, v0, Lcom/byazt/ete/bm;->sp:I

    .line 90
    .line 91
    const/4 v2, 0x2

    .line 92
    if-ne v0, v2, :cond_2

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    const/4 v13, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const/4 v13, 0x0

    .line 98
    :goto_1
    new-instance v14, Lcom/byazt/iu/uj$11;

    .line 99
    .line 100
    move-object v0, v14

    .line 101
    move-object v1, p0

    .line 102
    move-object/from16 v2, p1

    .line 103
    .line 104
    move-object v3, v9

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/byazt/iu/uj$11;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/iuu/uj;Lcom/byazt/vvt/a$c;Lcom/byazt/ete/x$uj;I)V

    .line 106
    .line 107
    .line 108
    move-object v0, p0

    .line 109
    move-object/from16 v1, p1

    .line 110
    .line 111
    move-object/from16 v2, p2

    .line 112
    .line 113
    move v3, v13

    .line 114
    move-object v4, v9

    .line 115
    move-wide v5, v11

    .line 116
    move-object v7, v14

    .line 117
    invoke-direct/range {v0 .. v7}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;ZLcom/byazt/iuu/tt;JLcom/byazt/iu/uj$c;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private c(Lcom/byazt/ete/c;)Lcom/byazt/ete/ic;
    .locals 1

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ete/ic;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/ete/c;Lcom/byazt/iuu/tt;)Lcom/byazt/ete/x$tt;
    .locals 1

    .line 70
    new-instance v0, Lcom/byazt/ete/x$tt$c;

    invoke-direct {v0}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 71
    invoke-virtual {v0, p1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p3}, Lcom/byazt/iuu/tt;->uj()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/byazt/ete/x$tt$c;->c(Z)Lcom/byazt/ete/x$tt$c;

    move-result-object p1

    .line 73
    invoke-direct {p0, p2}, Lcom/byazt/iu/uj;->c(Lcom/byazt/ete/c;)Lcom/byazt/ete/ic;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p1, p2}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/c;Lcom/byazt/iuu/tt;)Lcom/byazt/ete/x$tt;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/c;Lcom/byazt/iuu/tt;)Lcom/byazt/ete/x$tt;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            ")V"
        }
    .end annotation

    .line 8
    new-instance v7, Lcom/byazt/iu/uj$6;

    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/byazt/iu/uj$6;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/iu/n;Lcom/byazt/ete/x$ve;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    .line 9
    iget p3, p3, Lcom/byazt/ete/bm;->sp:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    new-instance p3, Lcom/byazt/iu/uj$7;

    invoke-direct {p3, p0, v7}, Lcom/byazt/iu/uj$7;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/iuu/c;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;ZLcom/byazt/iuu/tt;JLcom/byazt/iu/uj$c;)V

    return-void
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            "Lcom/byazt/iuu/tt;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v0

    iget v1, p0, Lcom/byazt/iu/tt;->c:I

    new-instance v8, Lcom/byazt/iu/uj$3;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/byazt/iu/uj$3;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;Lcom/byazt/iu/n;)V

    invoke-interface {v0, p1, p3, v1, v8}, Lcom/byazt/omf/gu;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V

    return-void
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;ZJLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            "ZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->sl()Lcom/byazt/ete/x$uj;

    move-result-object v6

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/byazt/vvt/a;->c(Ljava/lang/String;Lcom/byazt/ete/x$uj;)Lcom/byazt/vvt/a$c;

    move-result-object v5

    if-eqz p4, :cond_1

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/byazt/iu/uj$12;

    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v10

    move-object v7, v0

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/byazt/iu/uj$12;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/iu/n;Lcom/byazt/ete/x$ve;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    move-object/from16 v1, p3

    .line 14
    iget v1, v1, Lcom/byazt/ete/bm;->sp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    new-instance v14, Lcom/byazt/iu/uj$13;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/byazt/iu/uj$13;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/iuu/c;Lcom/byazt/vvt/a$c;Lcom/byazt/ete/x$uj;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v11, v0

    move-wide/from16 v12, p5

    invoke-direct/range {v7 .. v14}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;ZLcom/byazt/iuu/tt;JLcom/byazt/iu/uj$c;)V

    return-void

    :cond_1
    move-object/from16 v1, p3

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 16
    invoke-direct/range {p0 .. p3}, Lcom/byazt/iu/uj;->a(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;ZLcom/byazt/iuu/tt;JLcom/byazt/iu/uj$c;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;Z",
            "Lcom/byazt/iuu/tt;",
            "J",
            "Lcom/byazt/iu/uj$c;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move/from16 v3, p3

    move-object/from16 v6, p7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19
    invoke-interface {v6, v1}, Lcom/byazt/iu/uj$c;->c(Z)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, v3}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5e7f\u544a\u7c7b\u578b "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v7, Lcom/byazt/iu/tt;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ---\u7f13\u5b58\u8bf7\u6c42\u7ed3\u675f--- rit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u65e0\u914d\u7f6e"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cache_tag"

    invoke-static {v2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {v6, v1}, Lcom/byazt/iu/uj$c;->c(Z)V

    return-void

    .line 24
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 25
    iget v0, v7, Lcom/byazt/iu/tt;->c:I

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->t()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->t()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 26
    iget v0, v7, Lcom/byazt/iu/tt;->c:I

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->m()D

    move-result-wide v13

    .line 27
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/byazt/nhd/n;->tt(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v10, p5

    invoke-interface/range {v8 .. v14}, Lcom/byazt/nhd/n;->c(Ljava/lang/String;JID)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 30
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 31
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ete/ic;

    .line 33
    invoke-virtual {p0, v2}, Lcom/byazt/iu/tt;->c(Lcom/byazt/ete/ic;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 34
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    invoke-interface {v6, v1}, Lcom/byazt/iu/uj$c;->c(Z)V

    return-void

    .line 37
    :cond_6
    invoke-virtual {p0, v3}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v8}, Lcom/byazt/dx/c;->c(Lcom/byazt/dj/tt;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 38
    invoke-interface {v6, v1}, Lcom/byazt/iu/uj$c;->c(Z)V

    return-void

    .line 39
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 40
    new-instance v9, Lcom/byazt/dbo/c;

    iget v0, v7, Lcom/byazt/iu/tt;->c:I

    invoke-direct {v9, v0}, Lcom/byazt/dbo/c;-><init>(I)V

    .line 41
    invoke-virtual {v9, v4, v5}, Lcom/byazt/dbo/c;->c(J)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/byazt/dbo/c;->tt(J)V

    .line 43
    new-instance v10, Lcom/byazt/iu/uj$2;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/byazt/iu/uj$2;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;ZLcom/byazt/iuu/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/uj$c;)V

    invoke-virtual {v9, v8, v10}, Lcom/byazt/dbo/c;->c(Ljava/util/List;Lcom/byazt/dbo/a;)V

    return-void

    .line 44
    :cond_8
    :goto_2
    invoke-interface {v6, v1}, Lcom/byazt/iu/uj$c;->c(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/iu/uj;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/iu/uj;->a(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/iu/uj;Ljava/util/List;Lcom/byazt/dj/tt;ZLcom/byazt/iuu/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/uj$c;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p6}, Lcom/byazt/iu/uj;->c(Ljava/util/List;Lcom/byazt/dj/tt;ZLcom/byazt/iuu/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/uj$c;)V

    return-void
.end method

.method private c(Ljava/util/List;Lcom/byazt/dj/tt;ZLcom/byazt/iuu/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/uj$c;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/dj/tt;",
            "Z",
            "Lcom/byazt/iuu/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/iu/uj$c;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    .line 65
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v0, "is_playAgain"

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_cache"

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "start_time"

    .line 68
    iget-wide v1, v6, Lcom/byazt/iu/uj;->tt:J

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move/from16 v0, p3

    .line 69
    invoke-virtual {p0, v0}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object v7

    iget v8, v6, Lcom/byazt/iu/tt;->c:I

    new-instance v13, Lcom/byazt/iu/uj$5;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/byazt/iu/uj$5;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/iuu/tt;Ljava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/uj$c;)V

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    invoke-virtual/range {v7 .. v13}, Lcom/byazt/dx/c;->c(ILjava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Landroid/os/Bundle;Lcom/byazt/iu/sp;)V

    return-void
.end method

.method private c(Lcom/byazt/ete/x$tt;)Z
    .locals 2

    .line 78
    iget v0, p0, Lcom/byazt/iu/tt;->c:I

    invoke-static {v0}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v0

    const-string v1, "forbid_realtime"

    .line 79
    invoke-virtual {v0, v1, p1}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p1

    return p1
.end method

.method public static synthetic c(Lcom/byazt/iu/uj;Lcom/byazt/ete/x$tt;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/iu/uj;->c(Lcom/byazt/ete/x$tt;)Z

    move-result p0

    return p0
.end method

.method private n(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            ")V"
        }
    .end annotation

    .line 1
    iget p3, p3, Lcom/byazt/ete/bm;->sp:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p3, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    const/4 v4, 0x0

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    new-instance v7, Lcom/byazt/iu/uj$10;

    .line 15
    .line 16
    invoke-direct {v7, p0, p2}, Lcom/byazt/iu/uj$10;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/iu/n;)V

    .line 17
    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    invoke-direct/range {v0 .. v7}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;ZLcom/byazt/iuu/tt;JLcom/byazt/iu/uj$c;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private sp(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->sl()Lcom/byazt/ete/x$uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lcom/byazt/vvt/a;->c(Ljava/lang/String;Lcom/byazt/ete/x$uj;)Lcom/byazt/vvt/a$c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->tt()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    :try_start_0
    invoke-static {}, Lcom/byazt/whk/c;->c()Lcom/byazt/whk/c;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "DeviceRate"

    .line 33
    .line 34
    const-string v6, "bytebench_value"

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v4, v5, v6, v7}, Lcom/byazt/whk/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 45
    .line 46
    .line 47
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    nop

    .line 50
    move-wide v4, v2

    .line 51
    :goto_0
    cmpl-double v6, v4, v2

    .line 52
    .line 53
    if-lez v6, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->tt()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-double v2, v2

    .line 60
    cmpg-double v6, v4, v2

    .line 61
    .line 62
    if-gez v6, :cond_0

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    const/4 v11, 0x1

    .line 68
    const-wide/16 v12, 0x0

    .line 69
    .line 70
    const-string v14, "device_score"

    .line 71
    .line 72
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    move-object/from16 v7, p0

    .line 77
    .line 78
    move-object/from16 v8, p1

    .line 79
    .line 80
    move-object/from16 v9, p2

    .line 81
    .line 82
    move-object/from16 v10, p3

    .line 83
    .line 84
    invoke-direct/range {v7 .. v15}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->ve()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-lez v2, :cond_7

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    const/4 v3, 0x2

    .line 106
    const/4 v4, 0x1

    .line 107
    if-eq v2, v3, :cond_5

    .line 108
    .line 109
    const/4 v5, 0x3

    .line 110
    if-eq v2, v5, :cond_4

    .line 111
    .line 112
    const/4 v3, 0x4

    .line 113
    if-eq v2, v3, :cond_3

    .line 114
    .line 115
    const/4 v5, 0x5

    .line 116
    if-eq v2, v5, :cond_2

    .line 117
    .line 118
    const/4 v3, 0x6

    .line 119
    if-eq v2, v3, :cond_1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->ve()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    and-int/lit8 v3, v3, 0x8

    .line 127
    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->ve()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    and-int/2addr v3, v5

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->ve()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    and-int/lit8 v3, v3, 0x10

    .line 144
    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->ve()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    and-int/2addr v3, v5

    .line 153
    if-eqz v3, :cond_6

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->ve()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    and-int/2addr v3, v4

    .line 161
    if-eqz v3, :cond_6

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .line 165
    :goto_2
    if-eqz v4, :cond_7

    .line 166
    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    const/4 v9, 0x1

    .line 171
    const-wide/16 v10, 0x0

    .line 172
    .line 173
    const-string v12, "net_type"

    .line 174
    .line 175
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    move-object/from16 v5, p0

    .line 180
    .line 181
    move-object/from16 v6, p1

    .line 182
    .line 183
    move-object/from16 v7, p2

    .line 184
    .line 185
    move-object/from16 v8, p3

    .line 186
    .line 187
    invoke-direct/range {v5 .. v13}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_7
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->uj()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-lez v2, :cond_9

    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/byazt/ete/x$uj;->uj()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-virtual {v1, v2, v0}, Lcom/byazt/vvt/a$c;->c(ILcom/byazt/ete/x$uj;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-lez v0, :cond_8

    .line 209
    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 211
    .line 212
    .line 213
    move-result-wide v1

    .line 214
    int-to-long v3, v0

    .line 215
    const-wide/16 v5, 0x3c

    .line 216
    .line 217
    mul-long v3, v3, v5

    .line 218
    .line 219
    const-wide/16 v5, 0x3e8

    .line 220
    .line 221
    mul-long v3, v3, v5

    .line 222
    .line 223
    sub-long v10, v1, v3

    .line 224
    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    const/4 v9, 0x1

    .line 229
    const-string v12, "good_cache"

    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    move-object/from16 v5, p0

    .line 236
    .line 237
    move-object/from16 v6, p1

    .line 238
    .line 239
    move-object/from16 v7, p2

    .line 240
    .line 241
    move-object/from16 v8, p3

    .line 242
    .line 243
    invoke-direct/range {v5 .. v13}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_8
    if-nez v0, :cond_9

    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    const/4 v4, 0x1

    .line 253
    const-wide/16 v5, 0x0

    .line 254
    .line 255
    const-string v7, "behavior_score"

    .line 256
    .line 257
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    move-object/from16 v0, p0

    .line 262
    .line 263
    move-object/from16 v1, p1

    .line 264
    .line 265
    move-object/from16 v2, p2

    .line 266
    .line 267
    move-object/from16 v3, p3

    .line 268
    .line 269
    invoke-direct/range {v0 .. v8}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    const/4 v13, 0x0

    .line 277
    const-wide/16 v14, 0x0

    .line 278
    .line 279
    const-string v16, ""

    .line 280
    .line 281
    const-string v17, ""

    .line 282
    .line 283
    move-object/from16 v9, p0

    .line 284
    .line 285
    move-object/from16 v10, p1

    .line 286
    .line 287
    move-object/from16 v11, p2

    .line 288
    .line 289
    move-object/from16 v12, p3

    .line 290
    .line 291
    invoke-direct/range {v9 .. v17}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;ZJLjava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method private tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/ete/bm;",
            "Lcom/byazt/iu/n<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/byazt/iu/uj;->ve()I

    move-result v0

    .line 2
    iget-boolean v1, p2, Lcom/byazt/ete/bm;->gt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 3
    :cond_1
    new-instance v1, Lcom/byazt/ete/x$tt$c;

    invoke-direct {v1}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object v1

    .line 6
    iget v3, p0, Lcom/byazt/iu/tt;->c:I

    invoke-static {v3}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v3

    const-string v4, "load_only_online"

    invoke-virtual {v3, v4, v1}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    if-eq v2, v0, :cond_7

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_5

    const/4 v0, 0x4

    if-eq v2, v0, :cond_4

    const/4 v0, 0x5

    if-eq v2, v0, :cond_3

    const-string v0, "cache_tag"

    const-string v1, "\u4ec5\u5b9e\u65f6\uff1a\u8d70\u5230\u4e86\u515c\u5e95\u903b\u8f91\uff0c\u9884\u671f\u4e0d\u4f1a\u8d70\u5230\uff01\uff01\uff01"

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/iu/uj;->uj(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void

    .line 10
    :cond_3
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/iu/uj;->sp(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void

    .line 11
    :cond_4
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/iu/uj;->n(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void

    .line 12
    :cond_5
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/iu/uj;->ve(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void

    .line 13
    :cond_6
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/iu/uj;->tt(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void

    .line 14
    :cond_7
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void

    .line 15
    :cond_8
    invoke-direct {p0, p1, p3, p2}, Lcom/byazt/iu/uj;->uj(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V

    return-void
.end method

.method private tt(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            ")V"
        }
    .end annotation

    .line 16
    new-instance v4, Lcom/byazt/iuu/uj;

    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v0

    iget v1, p0, Lcom/byazt/iu/tt;->c:I

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v0, v1, v2}, Lcom/byazt/iuu/uj;-><init>(Lcom/byazt/iu/n;Lcom/byazt/ete/x$ve;ILjava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Lcom/byazt/iuu/uj;->c()V

    .line 18
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V

    .line 19
    iget p3, p3, Lcom/byazt/ete/bm;->sp:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    new-instance v7, Lcom/byazt/iu/uj$8;

    invoke-direct {v7, p0, v4}, Lcom/byazt/iu/uj$8;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/iuu/uj;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;ZLcom/byazt/iuu/tt;JLcom/byazt/iu/uj$c;)V

    return-void
.end method

.method private uj(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private ve()I
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/byazt/iu/tt;->c:I

    invoke-static {v0}, Lcom/byazt/iu/c;->c(I)I

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->i()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->i()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/x$ve;->i()I

    move-result v0

    return v0

    .line 8
    :cond_2
    :goto_0
    iget v0, p0, Lcom/byazt/iu/tt;->c:I

    invoke-static {v0}, Lcom/byazt/iu/c;->c(I)I

    move-result v0

    return v0
.end method

.method private ve(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Lcom/byazt/ete/bm;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v4, Lcom/byazt/iuu/ve;

    invoke-virtual {p0}, Lcom/byazt/iu/tt;->c()Lcom/byazt/ete/x$ve;

    move-result-object v0

    invoke-direct {v4, p2, v0}, Lcom/byazt/iuu/ve;-><init>(Lcom/byazt/iu/n;Lcom/byazt/ete/x$ve;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;Lcom/byazt/iuu/tt;)V

    .line 3
    iget p3, p3, Lcom/byazt/ete/bm;->sp:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    new-instance v7, Lcom/byazt/iu/uj$9;

    invoke-direct {v7, p0, v4}, Lcom/byazt/iu/uj$9;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/iuu/ve;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;ZLcom/byazt/iuu/tt;JLcom/byazt/iu/uj$c;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gt()I

    .line 48
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->qy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/wu/uj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gt()I

    return-void

    .line 50
    :cond_1
    new-instance v0, Lcom/byazt/ete/x$tt$c;

    invoke-direct {v0}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/byazt/iu/tt;->c:I

    invoke-static {v1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v1

    const-string v2, "forbid_preload"

    invoke-virtual {v1, v2, v0}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gt()I

    .line 55
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    return-void

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/byazt/iu/uj;->ve()I

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gt()I

    return-void

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/nhd/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gt()I

    return-void

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 61
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gt()I

    .line 62
    iget v0, p2, Lcom/byazt/ete/bm;->sp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 63
    iget p2, p2, Lcom/byazt/ete/bm;->sp:I

    if-ne p2, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/byazt/iu/tt;->c(Z)Lcom/byazt/dx/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/dx/c;->c(Lcom/byazt/dj/tt;)V

    :cond_7
    return-void

    .line 64
    :cond_8
    new-instance v0, Lcom/byazt/iu/uj$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/iu/uj$4;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/ete/bm;",
            "Lcom/byazt/iu/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/byazt/iu/uj$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/iu/uj$1;-><init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/iu/n;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->n(Ljava/lang/Runnable;)V

    return-void
.end method
