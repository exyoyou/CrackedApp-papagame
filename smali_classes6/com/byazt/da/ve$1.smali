.class public Lcom/byazt/da/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fy/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x48,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/da/ve;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/da/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/da/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/da/ve$1;->c:Lcom/byazt/da/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/da/ve$1;->c:Lcom/byazt/da/ve;

    invoke-static {v0}, Lcom/byazt/da/ve;->c(Lcom/byazt/da/ve;)Lcom/byazt/nh/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/da/ve$1;->c:Lcom/byazt/da/ve;

    invoke-static {v0}, Lcom/byazt/da/ve;->c(Lcom/byazt/da/ve;)Lcom/byazt/nh/tt;

    move-result-object v0

    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/nh/tt;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/byazt/da/ve$1;->c:Lcom/byazt/da/ve;

    invoke-static {v0}, Lcom/byazt/da/ve;->c(Lcom/byazt/da/ve;)Lcom/byazt/nh/tt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    .line 4
    new-instance v2, Lcom/byazt/da/c;

    iget-object v3, p0, Lcom/byazt/da/ve$1;->c:Lcom/byazt/da/ve;

    invoke-static {v3}, Lcom/byazt/da/ve;->tt(Lcom/byazt/da/ve;)Lcom/byazt/hz/sp;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/da/ve$1;->c:Lcom/byazt/da/ve;

    invoke-static {v4}, Lcom/byazt/da/ve;->tt(Lcom/byazt/da/ve;)Lcom/byazt/hz/sp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/hz/tt;->my()Lcom/byazt/ll/tt;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/byazt/da/c;-><init>(Lcom/byazt/hz/sp;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/da/ve$1;->c:Lcom/byazt/da/ve;

    invoke-static {p1}, Lcom/byazt/da/ve;->c(Lcom/byazt/da/ve;)Lcom/byazt/nh/tt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/nh/tt;->c(Ljava/util/List;)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Lcom/byazt/pp/c;

    const v0, 0x13881

    const-string v1, "list is null"

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/byazt/da/ve$1;->c(Lcom/byazt/pp/c;)V

    :cond_2
    return-void
.end method
