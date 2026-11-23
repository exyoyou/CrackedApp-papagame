.class public abstract Lcom/byazt/uf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x151,
        0x14
    }
.end annotation


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


# virtual methods
.method public c(ILcom/byazt/vb/tt;ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/vb/tt;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/byazt/ml/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p5}, Lcom/byazt/uf/c;->tt(ILcom/byazt/vb/tt;ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/byazt/uf/c;->c(Lcom/byazt/vb/tt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p5}, Lcom/byazt/uf/c;->tt(ILcom/byazt/vb/tt;ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(ILjava/lang/String;Lcom/byazt/vb/tt;)Z
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/byazt/ml/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lcom/byazt/uf/c;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p3}, Lcom/byazt/uf/c;->c(Lcom/byazt/vb/tt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/uf/c;->tt(ILjava/lang/String;Lcom/byazt/vb/tt;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(Lcom/byazt/vb/tt;)Z
.end method

.method public abstract c(Ljava/lang/String;)Z
.end method

.method public abstract tt(ILcom/byazt/vb/tt;ZLjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/vb/tt;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tt(ILjava/lang/String;Lcom/byazt/vb/tt;)Z
.end method
