.class public final Lcom/byazt/yx/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eg/gt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xfc,
        0x5b
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/eg/yv;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;"
        }
    .end annotation
.end field

.field public final da:I

.field public final i:I

.field public final n:I

.field public final sl:I

.field public final sp:Lcom/byazt/eg/n;

.field public t:I

.field public final tt:Lcom/byazt/iq/sp;

.field public final uj:Lcom/byazt/iq/ve;

.field public final ve:Lcom/byazt/yx/ve;

.field public final x:Lcom/byazt/eg/m;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/byazt/iq/sp;Lcom/byazt/yx/ve;Lcom/byazt/iq/ve;ILcom/byazt/eg/yv;Lcom/byazt/eg/n;Lcom/byazt/eg/m;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/eg/gt;",
            ">;",
            "Lcom/byazt/iq/sp;",
            "Lcom/byazt/yx/ve;",
            "Lcom/byazt/iq/ve;",
            "I",
            "Lcom/byazt/eg/yv;",
            "Lcom/byazt/eg/n;",
            "Lcom/byazt/eg/m;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yx/sp;->c:Ljava/util/List;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/byazt/yx/sp;->uj:Lcom/byazt/iq/ve;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/yx/sp;->tt:Lcom/byazt/iq/sp;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/byazt/yx/sp;->ve:Lcom/byazt/yx/ve;

    .line 11
    .line 12
    iput p5, p0, Lcom/byazt/yx/sp;->n:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/yx/sp;->a:Lcom/byazt/eg/yv;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/byazt/yx/sp;->sp:Lcom/byazt/eg/n;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/byazt/yx/sp;->x:Lcom/byazt/eg/m;

    .line 19
    .line 20
    iput p9, p0, Lcom/byazt/yx/sp;->i:I

    .line 21
    .line 22
    iput p10, p0, Lcom/byazt/yx/sp;->da:I

    .line 23
    .line 24
    iput p11, p0, Lcom/byazt/yx/sp;->sl:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/iq/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/sp;->tt:Lcom/byazt/iq/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/yx/sp;->tt:Lcom/byazt/iq/sp;

    iget-object v1, p0, Lcom/byazt/yx/sp;->ve:Lcom/byazt/yx/ve;

    iget-object v2, p0, Lcom/byazt/yx/sp;->uj:Lcom/byazt/iq/ve;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/byazt/yx/sp;->c(Lcom/byazt/eg/yv;Lcom/byazt/iq/sp;Lcom/byazt/yx/ve;Lcom/byazt/iq/ve;)Lcom/byazt/eg/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/eg/yv;Lcom/byazt/iq/sp;Lcom/byazt/yx/ve;Lcom/byazt/iq/ve;)Lcom/byazt/eg/h;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/byazt/yx/sp;->n:I

    iget-object v2, v0, Lcom/byazt/yx/sp;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 4
    iget v1, v0, Lcom/byazt/yx/sp;->t:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/byazt/yx/sp;->t:I

    .line 5
    iget-object v1, v0, Lcom/byazt/yx/sp;->ve:Lcom/byazt/yx/ve;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/byazt/yx/sp;->uj:Lcom/byazt/iq/ve;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/byazt/iq/ve;->c(Lcom/byazt/eg/my;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/byazt/yx/sp;->c:Ljava/util/List;

    iget v5, v0, Lcom/byazt/yx/sp;->n:I

    sub-int/2addr v5, v2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/byazt/yx/sp;->ve:Lcom/byazt/yx/ve;

    const-string v4, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/byazt/yx/sp;->t:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/byazt/yx/sp;->c:Ljava/util/List;

    iget v6, v0, Lcom/byazt/yx/sp;->n:I

    sub-int/2addr v6, v2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    :goto_1
    new-instance v1, Lcom/byazt/yx/sp;

    iget-object v6, v0, Lcom/byazt/yx/sp;->c:Ljava/util/List;

    iget v5, v0, Lcom/byazt/yx/sp;->n:I

    add-int/lit8 v10, v5, 0x1

    iget-object v12, v0, Lcom/byazt/yx/sp;->sp:Lcom/byazt/eg/n;

    iget-object v13, v0, Lcom/byazt/yx/sp;->x:Lcom/byazt/eg/m;

    iget v14, v0, Lcom/byazt/yx/sp;->i:I

    iget v15, v0, Lcom/byazt/yx/sp;->da:I

    iget v11, v0, Lcom/byazt/yx/sp;->sl:I

    move-object v5, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v16, v11

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v16}, Lcom/byazt/yx/sp;-><init>(Ljava/util/List;Lcom/byazt/iq/sp;Lcom/byazt/yx/ve;Lcom/byazt/iq/ve;ILcom/byazt/eg/yv;Lcom/byazt/eg/n;Lcom/byazt/eg/m;III)V

    .line 10
    iget-object v5, v0, Lcom/byazt/yx/sp;->c:Ljava/util/List;

    iget v6, v0, Lcom/byazt/yx/sp;->n:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/eg/gt;

    .line 11
    invoke-interface {v5, v1}, Lcom/byazt/eg/gt;->c(Lcom/byazt/eg/gt$c;)Lcom/byazt/eg/h;

    move-result-object v6

    if-eqz p3, :cond_5

    .line 12
    iget v7, v0, Lcom/byazt/yx/sp;->n:I

    add-int/2addr v7, v2

    iget-object v8, v0, Lcom/byazt/yx/sp;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v1, v1, Lcom/byazt/yx/sp;->t:I

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v6, :cond_7

    .line 14
    invoke-virtual {v6}, Lcom/byazt/eg/h;->x()Lcom/byazt/eg/d;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v6

    .line 15
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_7
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a null response"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public c()Lcom/byazt/eg/yv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/sp;->a:Lcom/byazt/eg/yv;

    return-object v0
.end method

.method public call()Lcom/byazt/eg/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/sp;->sp:Lcom/byazt/eg/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/byazt/eg/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/sp;->uj:Lcom/byazt/iq/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/yx/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/sp;->ve:Lcom/byazt/yx/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/yx/sp;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/yx/sp;->sl:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/yx/sp;->da:I

    .line 2
    .line 3
    return v0
.end method

.method public x()Lcom/byazt/eg/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yx/sp;->x:Lcom/byazt/eg/m;

    .line 2
    .line 3
    return-object v0
.end method
