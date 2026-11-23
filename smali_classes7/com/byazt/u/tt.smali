.class public Lcom/byazt/u/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x43,
        0xd
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "tt"


# instance fields
.field public a:Lcom/byazt/t/DownloadInfo;

.field public volatile da:Z

.field public i:Lcom/byazt/zz/da;

.field public final n:Lcom/byazt/t/DownloadTask;

.field public volatile sl:Z

.field public final sp:Lcom/byazt/u/a;

.field public t:Z

.field public tt:Lcom/byazt/t/tt;

.field public uj:Lcom/byazt/zz/n;

.field public ve:Lcom/byazt/t/tt;

.field public x:Lcom/byazt/hs/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/byazt/t/tt;Lcom/byazt/t/DownloadTask;Lcom/byazt/hs/i;Lcom/byazt/u/a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p4}, Lcom/byazt/u/tt;-><init>(Lcom/byazt/t/tt;Lcom/byazt/t/DownloadTask;Lcom/byazt/u/a;)V

    .line 10
    iput-object p3, p0, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/t/tt;Lcom/byazt/t/DownloadTask;Lcom/byazt/u/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/u/tt;->t:Z

    .line 3
    iput-object p1, p0, Lcom/byazt/u/tt;->ve:Lcom/byazt/t/tt;

    .line 4
    iput-object p2, p0, Lcom/byazt/u/tt;->n:Lcom/byazt/t/DownloadTask;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/byazt/t/DownloadTask;->getDownloadInfo()Lcom/byazt/t/DownloadInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    .line 6
    :cond_0
    iput-object p3, p0, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    .line 7
    invoke-static {}, Lcom/byazt/zz/ve;->zm()Lcom/byazt/zz/da;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/u/tt;->i:Lcom/byazt/zz/da;

    .line 8
    iget-object p1, p0, Lcom/byazt/u/tt;->ve:Lcom/byazt/t/tt;

    invoke-virtual {p1, p0}, Lcom/byazt/t/tt;->c(Lcom/byazt/u/tt;)V

    return-void
.end method

.method private c(Lcom/byazt/t/tt;J)V
    .locals 9

    .line 90
    invoke-virtual {p1}, Lcom/byazt/t/tt;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/byazt/t/tt;->n()Lcom/byazt/t/tt;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Lcom/byazt/t/tt;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/byazt/u/tt;->i:Lcom/byazt/zz/da;

    invoke-virtual {v0}, Lcom/byazt/t/tt;->sl()I

    move-result v1

    invoke-virtual {v0}, Lcom/byazt/t/tt;->tt()I

    move-result v2

    invoke-interface {p1, v1, v2, p2, p3}, Lcom/byazt/zz/da;->c(IIJ)V

    .line 94
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/byazt/t/tt;->tt(J)V

    .line 95
    iget-object v3, p0, Lcom/byazt/u/tt;->i:Lcom/byazt/zz/da;

    invoke-virtual {v0}, Lcom/byazt/t/tt;->sl()I

    move-result v4

    invoke-virtual {v0}, Lcom/byazt/t/tt;->my()I

    move-result v5

    invoke-virtual {v0}, Lcom/byazt/t/tt;->tt()I

    move-result v6

    move-wide v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/byazt/zz/da;->c(IIIJ)V

    return-void

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/t/tt;->uj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/byazt/u/tt;->i:Lcom/byazt/zz/da;

    invoke-virtual {p1}, Lcom/byazt/t/tt;->sl()I

    move-result v1

    invoke-virtual {p1}, Lcom/byazt/t/tt;->my()I

    move-result p1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/byazt/zz/da;->c(IIJ)V

    :cond_3
    return-void
.end method

.method private c(Lcom/byazt/t/tt;)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->uj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->n()Lcom/byazt/t/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/t/tt;->my()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->my()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 6
    invoke-virtual {v9}, Lcom/byazt/t/tt;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    return v10

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v2

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->m()J

    move-result-wide v4

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v6

    if-eqz v9, :cond_2

    .line 10
    invoke-virtual {v9}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v6

    .line 11
    invoke-virtual {v9}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v2

    .line 12
    invoke-virtual {v9}, Lcom/byazt/t/tt;->m()J

    move-result-wide v4

    :cond_2
    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    const-wide/16 v21, 0x0

    const/4 v5, 0x0

    .line 13
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->n()Z

    move-result v0
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v0, :cond_3

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v5

    .line 15
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->ve()Ljava/lang/String;

    move-result-object v4

    .line 16
    iget-object v0, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v1, Lcom/byazt/u/tt;->t:Z

    .line 17
    invoke-virtual {v8, v0}, Lcom/byazt/t/tt;->tt(Z)V
    :try_end_1
    .catch Lcom/byazt/m/BaseException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const/16 v2, 0x12c

    const/16 v3, 0xc8

    .line 18
    :try_start_2
    iget-boolean v0, v1, Lcom/byazt/u/tt;->t:Z

    if-nez v0, :cond_5

    .line 19
    iget-object v0, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getExtraHeaders()Ljava/util/List;

    move-result-object v11

    .line 20
    iget-object v0, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->geteTag()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v13, v17

    move-wide/from16 v15, v19

    invoke-static/range {v11 .. v16}, Lcom/byazt/w/a;->c(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 21
    new-instance v11, Lcom/byazt/t/ve;

    const-string v12, "Chunk-Index"

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/t/tt;->my()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/byazt/t/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v11, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-static {v0, v11}, Lcom/byazt/w/a;->c(Ljava/util/List;Lcom/byazt/t/DownloadInfo;)V

    .line 23
    iget-object v11, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-static {v0, v11}, Lcom/byazt/w/a;->tt(Ljava/util/List;Lcom/byazt/t/DownloadInfo;)V

    .line 24
    iget-object v11, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v11}, Lcom/byazt/t/DownloadInfo;->isNeedDefaultHttpServiceBackUp()Z

    move-result v11

    iget-object v12, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v12}, Lcom/byazt/t/DownloadInfo;->getMaxBytes()I

    move-result v12

    invoke-static {v11, v12, v4, v0}, Lcom/byazt/zz/ve;->c(ZILjava/lang/String;Ljava/util/List;)Lcom/byazt/hs/i;

    move-result-object v0

    iput-object v0, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;
    :try_end_2
    .catch Lcom/byazt/m/BaseException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    if-eqz v0, :cond_8

    iget-object v11, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;
    :try_end_3
    .catch Lcom/byazt/m/BaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-eqz v11, :cond_8

    .line 26
    :try_start_4
    invoke-interface {v0}, Lcom/byazt/hs/sp;->tt()I

    move-result v0

    if-lt v0, v3, :cond_6

    if-lt v0, v2, :cond_8

    .line 27
    :cond_6
    iget-object v0, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    iget-object v2, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    invoke-interface {v0, v2}, Lcom/byazt/u/a;->c(Lcom/byazt/hs/sp;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 28
    :goto_3
    :try_start_5
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcom/byazt/m/BaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto :goto_4

    :catch_0
    move-exception v0

    move-wide v14, v6

    const/4 v13, 0x0

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    :try_start_6
    const-string v11, "ChunkRunnableConnection"

    .line 29
    invoke-static {v0, v11}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 30
    :try_start_7
    iget-object v0, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;
    :try_end_7
    .catch Lcom/byazt/m/BaseException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz v0, :cond_8

    :try_start_8
    iget-object v11, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;
    :try_end_8
    .catch Lcom/byazt/m/BaseException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v11, :cond_8

    .line 31
    :try_start_9
    invoke-interface {v0}, Lcom/byazt/hs/sp;->tt()I

    move-result v0

    if-lt v0, v3, :cond_7

    if-lt v0, v2, :cond_8

    .line 32
    :cond_7
    iget-object v0, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    iget-object v2, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    invoke-interface {v0, v2}, Lcom/byazt/u/a;->c(Lcom/byazt/hs/sp;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 33
    :cond_8
    :goto_4
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->n()Z

    move-result v0
    :try_end_a
    .catch Lcom/byazt/m/BaseException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v0, :cond_9

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v5

    .line 35
    :cond_9
    :try_start_b
    iget-object v0, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    if-eqz v0, :cond_e

    .line 36
    iget-boolean v2, v1, Lcom/byazt/u/tt;->t:Z
    :try_end_b
    .catch Lcom/byazt/m/BaseException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-nez v2, :cond_b

    .line 37
    :try_start_c
    invoke-interface {v0}, Lcom/byazt/hs/sp;->tt()I

    move-result v0

    .line 38
    invoke-static {v0}, Lcom/byazt/w/a;->uj(I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    .line 39
    :cond_a
    new-instance v2, Lcom/byazt/m/BaseException;

    const-string v3, "Http response error , code is : %s "

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v5

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3ea

    invoke-direct {v2, v3, v0}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_c
    .catch Lcom/byazt/m/BaseException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_d
    const-string v2, "ChunkRunnableGetResponseCode"

    .line 40
    invoke-static {v0, v2}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 41
    throw v0
    :try_end_d
    .catch Lcom/byazt/m/BaseException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 42
    :cond_b
    :goto_5
    :try_start_e
    new-instance v0, Lcom/byazt/zz/n;

    iget-object v3, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    iget-object v11, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    iget-object v12, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;
    :try_end_e
    .catch Lcom/byazt/m/BaseException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object v2, v0

    const/4 v13, 0x0

    move-object v5, v11

    move-wide v14, v6

    move-object/from16 v6, p1

    move-object v7, v12

    :try_start_f
    invoke-direct/range {v2 .. v7}, Lcom/byazt/zz/n;-><init>(Lcom/byazt/t/DownloadInfo;Ljava/lang/String;Lcom/byazt/hs/i;Lcom/byazt/t/tt;Lcom/byazt/u/a;)V

    iput-object v0, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    if-eqz v9, :cond_d

    .line 43
    invoke-virtual {v9, v13}, Lcom/byazt/t/tt;->ve(Z)J

    move-result-wide v2

    cmp-long v0, v19, v21

    if-eqz v0, :cond_c

    cmp-long v0, v19, v17

    if-ltz v0, :cond_c

    sub-long v19, v19, v17

    const-wide/16 v2, 0x1

    add-long v2, v19, v2

    :cond_c
    move-wide/from16 v28, v2

    .line 44
    iget-object v0, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    invoke-virtual {v9}, Lcom/byazt/t/tt;->yp()J

    move-result-wide v24

    invoke-virtual {v9}, Lcom/byazt/t/tt;->m()J

    move-result-wide v26

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v29}, Lcom/byazt/zz/n;->c(JJJ)V
    :try_end_f
    .catch Lcom/byazt/m/BaseException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 45
    :cond_d
    :try_start_10
    iget-object v0, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    invoke-virtual {v0}, Lcom/byazt/zz/n;->uj()V
    :try_end_10
    .catch Lcom/byazt/m/BaseException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v10

    :catch_2
    move-exception v0

    const/4 v5, 0x1

    goto :goto_b

    :cond_e
    move-wide v14, v6

    const/4 v13, 0x0

    .line 47
    :try_start_11
    new-instance v0, Lcom/byazt/m/BaseException;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "download can\'t continue, chunk connection is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3fe

    invoke-direct {v0, v3, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_11
    .catch Lcom/byazt/m/BaseException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_4
    move-exception v0

    move-wide v14, v6

    const/4 v13, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    move-wide v14, v6

    const/4 v13, 0x0

    .line 48
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_5
    move-exception v0

    :goto_6
    move-object v4, v0

    .line 49
    :try_start_13
    iget-object v0, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    if-eqz v0, :cond_10

    iget-object v5, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;
    :try_end_13
    .catch Lcom/byazt/m/BaseException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v5, :cond_10

    .line 50
    :try_start_14
    invoke-interface {v0}, Lcom/byazt/hs/sp;->tt()I

    move-result v0

    if-lt v0, v3, :cond_f

    if-lt v0, v2, :cond_10

    .line 51
    :cond_f
    iget-object v0, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    iget-object v2, v1, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    invoke-interface {v0, v2}, Lcom/byazt/u/a;->c(Lcom/byazt/hs/sp;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    .line 52
    :try_start_15
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 53
    :cond_10
    :goto_7
    throw v4
    :try_end_15
    .catch Lcom/byazt/m/BaseException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    const/4 v13, 0x0

    .line 54
    :goto_8
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->n()Z

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    if-eqz v2, :cond_11

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v10

    :cond_11
    :try_start_17
    const-string v2, "downloadChunkInner"

    .line 56
    invoke-static {v0, v2}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_17
    .catch Lcom/byazt/m/BaseException; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto :goto_9

    :catch_5
    move-exception v0

    .line 57
    :try_start_18
    iget-object v2, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v2, v0}, Lcom/byazt/u/a;->tt(Lcom/byazt/m/BaseException;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 58
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v13

    :catch_6
    move-exception v0

    move-wide v14, v6

    const/4 v13, 0x0

    :goto_a
    const/4 v5, 0x0

    .line 59
    :goto_b
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->n()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v2, :cond_12

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v10

    .line 61
    :cond_12
    :try_start_1a
    invoke-static {v0}, Lcom/byazt/w/a;->tt(Lcom/byazt/m/BaseException;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 62
    iget-object v2, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v2, v0, v13}, Lcom/byazt/u/a;->c(Lcom/byazt/m/BaseException;Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v13

    .line 64
    :cond_13
    :try_start_1b
    iget-object v2, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v2, v0}, Lcom/byazt/u/a;->c(Lcom/byazt/m/BaseException;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 65
    invoke-static {v0}, Lcom/byazt/w/a;->c(Lcom/byazt/m/BaseException;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 66
    iget-object v2, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v2, v0, v10}, Lcom/byazt/u/a;->c(Lcom/byazt/m/BaseException;Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v13

    :cond_14
    if-eqz v5, :cond_18

    .line 68
    :try_start_1c
    iget-object v2, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    if-eqz v2, :cond_17

    const/16 v2, 0x20

    .line 69
    invoke-static {v2}, Lcom/byazt/w/c;->c(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 70
    iget-object v2, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    invoke-virtual {v2}, Lcom/byazt/zz/n;->c()J

    move-result-wide v2

    iget-object v4, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    invoke-virtual {v4}, Lcom/byazt/zz/n;->n()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v21

    if-lez v4, :cond_15

    .line 71
    iget-object v4, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    invoke-virtual {v4}, Lcom/byazt/zz/n;->n()J

    move-result-wide v4

    invoke-direct {v1, v8, v4, v5}, Lcom/byazt/u/tt;->c(Lcom/byazt/t/tt;J)V

    goto :goto_d

    :cond_15
    if-gez v4, :cond_19

    goto :goto_c

    .line 72
    :cond_16
    iget-object v2, v1, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    invoke-virtual {v2}, Lcom/byazt/zz/n;->c()J

    move-result-wide v2

    sub-long v21, v2, v14

    .line 73
    invoke-direct {v1, v8, v14, v15}, Lcom/byazt/u/tt;->c(Lcom/byazt/t/tt;J)V

    goto :goto_c

    .line 74
    :cond_17
    iget-object v2, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v2, v0}, Lcom/byazt/u/a;->tt(Lcom/byazt/m/BaseException;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v13

    :cond_18
    :goto_c
    move-wide/from16 v2, v21

    :cond_19
    :goto_d
    const/16 v4, 0x10

    .line 76
    :try_start_1d
    invoke-static {v4}, Lcom/byazt/w/c;->c(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 77
    iget-object v4, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v4, v8, v0, v2, v3}, Lcom/byazt/u/a;->c(Lcom/byazt/t/tt;Lcom/byazt/m/BaseException;J)Lcom/byazt/m/x;

    move-result-object v0

    goto :goto_e

    .line 78
    :cond_1a
    iget-object v4, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v4, v0, v2, v3}, Lcom/byazt/u/a;->c(Lcom/byazt/m/BaseException;J)Lcom/byazt/m/x;

    move-result-object v0

    .line 79
    :goto_e
    sget-object v2, Lcom/byazt/m/x;->c:Lcom/byazt/m/x;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-ne v0, v2, :cond_1b

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v13

    .line 81
    :cond_1b
    :try_start_1e
    invoke-virtual {v8, v13}, Lcom/byazt/t/tt;->tt(Z)V

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    goto/16 :goto_0

    .line 84
    :cond_1c
    :try_start_1f
    iget-object v2, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isNeedChunkDowngradeRetry()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->isChunkDowngradeRetryUsed()Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getChunkCount()I

    move-result v2

    if-le v2, v10, :cond_1d

    iget-object v2, v1, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    .line 85
    invoke-static {v0, v2}, Lcom/byazt/w/a;->c(Lcom/byazt/m/BaseException;Lcom/byazt/t/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 86
    iget-object v2, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v2, v0}, Lcom/byazt/u/a;->ve(Lcom/byazt/m/BaseException;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v13

    .line 88
    :cond_1d
    :try_start_20
    iget-object v2, v1, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    invoke-interface {v2, v0}, Lcom/byazt/u/a;->tt(Lcom/byazt/m/BaseException;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    return v13

    :catchall_9
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/byazt/u/tt;->uj()V

    throw v0
.end method

.method private n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/u/tt;->da:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/u/tt;->sl:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/hs/i;->uj()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/u/tt;->x:Lcom/byazt/hs/i;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/tt;->a:Lcom/byazt/t/DownloadInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getConnectionUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/byazt/u/tt;->da:Z

    .line 99
    iget-object v0, p0, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/byazt/zz/n;->tt()V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/zz/n;->c(JJ)V

    return-void
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/u/tt;->ve:Lcom/byazt/t/tt;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lcom/byazt/t/tt;->c(Lcom/byazt/u/tt;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/byazt/u/tt;->c(Lcom/byazt/t/tt;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/byazt/t/tt;->c(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/byazt/t/tt;->c(Z)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/byazt/u/tt;->n()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/byazt/t/tt;->my()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-interface {v1, v2}, Lcom/byazt/u/a;->c(I)Lcom/byazt/t/tt;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/byazt/u/tt;->n()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    const-wide/16 v1, 0x32

    .line 66
    .line 67
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    :try_start_2
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/byazt/t/tt;->c(Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/byazt/u/tt;->uj()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    .line 87
    .line 88
    invoke-interface {v0, p0}, Lcom/byazt/u/a;->c(Lcom/byazt/u/tt;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catchall_1
    move-exception v1

    .line 93
    iget-object v2, p0, Lcom/byazt/u/tt;->tt:Lcom/byazt/t/tt;

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Lcom/byazt/t/tt;->c(Z)V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-direct {p0}, Lcom/byazt/u/tt;->uj()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/u/tt;->sp:Lcom/byazt/u/a;

    .line 104
    .line 105
    invoke-interface {v0, p0}, Lcom/byazt/u/a;->c(Lcom/byazt/u/tt;)V

    .line 106
    .line 107
    .line 108
    throw v1
.end method

.method public tt()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/u/tt;->sl:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/u/tt;->uj:Lcom/byazt/zz/n;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/zz/n;->ve()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
