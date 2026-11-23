.class public Lcom/byazt/pvs/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pvs/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c1,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pvs/ve$c;
    }
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final tt:Lcom/byazt/pvs/n;

.field public ve:Lcom/byazt/vb/n;


# direct methods
.method public constructor <init>(Lcom/byazt/pvs/n;Lcom/byazt/vb/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/pvs/ve;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/pvs/ve;->tt:Lcom/byazt/pvs/n;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pvs/ve;)Lcom/byazt/pvs/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pvs/ve;->tt:Lcom/byazt/pvs/n;

    return-object p0
.end method

.method public static synthetic c()Ljava/util/Random;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/pvs/ve;->tt()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/pvs/ve;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/pvs/ve;->c(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/pvs/uj;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/byazt/pvs/uj;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Lcom/byazt/pvs/ve$c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/byazt/pvs/ve$c;-><init>(Lcom/byazt/pvs/ve;Lcom/byazt/pvs/uj;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/pvs/ve$1;)V

    .line 27
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/pvs/ve;)Lcom/byazt/vb/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    return-object p0
.end method

.method private static tt()Ljava/util/Random;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lj1/a;->a()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 4
    :catchall_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v1, p0, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    invoke-interface {v1}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/uj;->uj()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 18
    :cond_1
    new-instance v1, Lcom/byazt/pvs/ve$1;

    const-string v2, "trackFailedUrls"

    invoke-direct {v1, p0, v2, p1}, Lcom/byazt/pvs/ve$1;-><init>(Lcom/byazt/pvs/ve;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {v1, p1}, Lcom/byazt/ke/tt;->c(I)V

    .line 20
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 21
    invoke-interface {v0}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 4
    iget-object v0, v6, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 5
    iget-object v0, v6, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    .line 6
    invoke-interface {v0}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v7}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v7}, Lcom/byazt/vb/uj;->uj()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 12
    new-instance v2, Lcom/byazt/pvs/uj;

    const/4 v13, 0x5

    const/4 v15, 0x1

    move-object v9, v2

    move/from16 v12, p3

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v15}, Lcom/byazt/pvs/uj;-><init>(Ljava/lang/String;Ljava/lang/String;ZILorg/json/JSONObject;I)V

    .line 13
    new-instance v9, Lcom/byazt/pvs/ve$c;

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/pvs/ve$c;-><init>(Lcom/byazt/pvs/ve;Lcom/byazt/pvs/uj;Ljava/lang/String;Ljava/util/Map;Lcom/byazt/pvs/ve$1;)V

    .line 14
    invoke-interface {v7}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pvs/ve;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/pvs/ve;->ve:Lcom/byazt/vb/n;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/vb/n;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method
