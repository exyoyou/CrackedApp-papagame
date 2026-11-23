.class public Lcom/byazt/zj/ve$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zj/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28c,
        0x15b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zj/ve;->c(Landroid/content/Context;Ljava/io/File;Lcom/byazt/zj/ve$ve;)Lcom/byazt/zj/ve$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic c:Lcom/byazt/zj/ve$tt;

.field public final synthetic da:Ljava/lang/String;

.field public final synthetic i:Ljava/io/File;

.field public final synthetic n:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic sl:Lcom/byazt/zj/ve;

.field public final synthetic sp:Ljava/io/File;

.field public t:J

.field public final synthetic tt:Lcom/byazt/zj/ve$ve;

.field public final synthetic uj:Landroid/util/Pair;

.field public final synthetic ve:I

.field public final synthetic x:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/byazt/zj/ve;Lcom/byazt/zj/ve$tt;Lcom/byazt/zj/ve$ve;ILandroid/util/Pair;Ljava/util/concurrent/CountDownLatch;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zj/ve$3;->sl:Lcom/byazt/zj/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/zj/ve$3;->ve:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/zj/ve$3;->uj:Landroid/util/Pair;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/zj/ve$3;->n:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/zj/ve$3;->a:Ljava/io/File;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/byazt/zj/ve$3;->sp:Ljava/io/File;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/byazt/zj/ve$3;->x:Ljava/io/File;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/byazt/zj/ve$3;->i:Ljava/io/File;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/byazt/zj/ve$3;->da:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p0, Lcom/byazt/zj/ve$3;->t:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    invoke-static/range {p1 .. p1}, Lcom/byazt/w/a;->a(Lcom/byazt/t/DownloadInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/byazt/zj/ve$tt;->c(Z)V

    .line 2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v3

    iget-object v1, v0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    iget-object v4, v1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v5, v0, Lcom/byazt/zj/ve$3;->ve:I

    iget v6, v1, Lcom/byazt/zj/ve$ve;->tt:I

    iget-object v7, v1, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    const/4 v8, 0x7

    const-string v9, ""

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/byazt/zj/ve$3;->uj:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-object v1, v0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    .line 4
    invoke-virtual {v1}, Lcom/byazt/zj/ve$tt;->uj()Z

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    .line 5
    invoke-virtual/range {v3 .. v16}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V

    .line 6
    iget-object v1, v0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    iget-object v2, v1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v1, v1, Lcom/byazt/zj/ve$ve;->tt:I

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v2, v1}, Lcom/byazt/ukr/yp;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Lcom/byazt/zj/ve$3;->sl:Lcom/byazt/zj/ve;

    iget-object v2, v0, Lcom/byazt/zj/ve$3;->a:Ljava/io/File;

    iget-object v3, v0, Lcom/byazt/zj/ve$3;->sp:Ljava/io/File;

    iget-object v4, v0, Lcom/byazt/zj/ve$3;->x:Ljava/io/File;

    iget-object v5, v0, Lcom/byazt/zj/ve$3;->i:Ljava/io/File;

    iget-object v6, v0, Lcom/byazt/zj/ve$3;->da:Ljava/lang/String;

    iget-object v7, v0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    invoke-static/range {v1 .. v7}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/byazt/zj/ve$ve;)I

    move-result v1

    .line 15
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v2

    iget-object v3, v0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    iget-object v4, v3, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v5, v0, Lcom/byazt/zj/ve$3;->ve:I

    iget v6, v3, Lcom/byazt/zj/ve$ve;->tt:I

    iget-object v7, v3, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    const/4 v8, 0x6

    const-string v9, ""

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/byazt/zj/ve$3;->t:J

    sub-long/2addr v10, v12

    const/4 v12, 0x0

    iget-object v3, v0, Lcom/byazt/zj/ve$3;->uj:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-object v3, v0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    .line 18
    invoke-virtual {v3}, Lcom/byazt/zj/ve$tt;->uj()Z

    move-result v14

    const/4 v15, 0x1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-wide v9, v10

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, p2

    .line 19
    invoke-virtual/range {v2 .. v15}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V

    .line 20
    iget-object v2, v0, Lcom/byazt/zj/ve$3;->sl:Lcom/byazt/zj/ve;

    iget-object v3, v0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    invoke-static {v2, v3, v1}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve;Lcom/byazt/zj/ve$ve;I)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)V
    .locals 2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/byazt/zj/ve;->c(J)J

    .line 10
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/byazt/zj/ve$tt;->c(I)V

    .line 11
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/zj/ve$tt;->tt(I)V

    .line 12
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/zj/ve$tt;->c(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;I)V
    .locals 15

    move-object v0, p0

    .line 21
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    iget-object v3, v2, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v4, v0, Lcom/byazt/zj/ve$3;->ve:I

    iget v5, v2, Lcom/byazt/zj/ve$ve;->tt:I

    iget-object v6, v2, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    const/16 v7, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/m/BaseException;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/byazt/zj/ve$3;->t:J

    sub-long/2addr v9, v11

    const/4 v11, 0x0

    iget-object v2, v0, Lcom/byazt/zj/ve$3;->uj:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v2, v0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    .line 25
    invoke-virtual {v2}, Lcom/byazt/zj/ve$tt;->uj()Z

    move-result v13

    const/4 v14, 0x1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-wide v8, v9

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move/from16 v14, p3

    .line 26
    invoke-virtual/range {v1 .. v14}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    iget-object v0, p0, Lcom/byazt/zj/ve$3;->sl:Lcom/byazt/zj/ve;

    iget-object v1, p0, Lcom/byazt/zj/ve$3;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/byazt/zj/ve$3;->sp:Ljava/io/File;

    iget-object v3, p0, Lcom/byazt/zj/ve$3;->x:Ljava/io/File;

    iget-object v4, p0, Lcom/byazt/zj/ve$3;->i:Ljava/io/File;

    iget-object v5, p0, Lcom/byazt/zj/ve$3;->da:Ljava/lang/String;

    iget-object v6, p0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    invoke-static/range {v0 .. v6}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/byazt/zj/ve$ve;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/zj/ve$tt;->c(I)V

    .line 2
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/zj/ve$tt;->tt(I)V

    .line 3
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    invoke-virtual {p1}, Lcom/byazt/zj/ve$tt;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->sl:Lcom/byazt/zj/ve;

    iget-object v0, p0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    iget-object v1, p0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    invoke-virtual {v1}, Lcom/byazt/zj/ve$tt;->tt()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/byazt/zj/ve;->c(Lcom/byazt/zj/ve;Lcom/byazt/zj/ve$ve;I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/zj/ve$3;->n:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public tt(Lcom/byazt/t/DownloadInfo;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/zj/ve$3;->t:J

    .line 7
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v3

    iget-object v1, v0, Lcom/byazt/zj/ve$3;->tt:Lcom/byazt/zj/ve$ve;

    iget-object v4, v1, Lcom/byazt/zj/ve$ve;->c:Ljava/lang/String;

    iget v5, v0, Lcom/byazt/zj/ve$3;->ve:I

    iget v6, v1, Lcom/byazt/zj/ve$ve;->tt:I

    iget-object v7, v1, Lcom/byazt/zj/ve$ve;->uj:Ljava/lang/String;

    const/4 v8, 0x7

    const-string v9, ""

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/byazt/zj/ve$3;->uj:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    iget-object v1, v0, Lcom/byazt/zj/ve$3;->c:Lcom/byazt/zj/ve$tt;

    .line 9
    invoke-virtual {v1}, Lcom/byazt/zj/ve$tt;->uj()Z

    move-result v14

    const/4 v15, 0x1

    move/from16 v16, p2

    .line 10
    invoke-virtual/range {v3 .. v16}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;JZZZZI)V

    return-void
.end method
