.class public Lcom/byazt/pj/a$1;
.super Lcom/byazt/pj/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x69d,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pj/a;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pj/a;


# direct methods
.method public constructor <init>(Lcom/byazt/pj/a;Lcom/byazt/pj/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/pj/tt;-><init>(Lcom/byazt/pj/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/pj/a$tt;->c()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/pj/a$tt;->c(II)V

    :cond_0
    return-void
.end method

.method public c(ILandroid/view/View;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->tt(Lcom/byazt/pj/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->tt(Lcom/byazt/pj/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v0}, Lcom/byazt/pj/a;->tt(Lcom/byazt/pj/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pj/ve;

    .line 6
    iget-object v1, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    invoke-static {v1}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/byazt/pj/a$tt;->c(ILandroid/view/View;Lcom/byazt/pj/ve;)V

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/pj/a$1;->c:Lcom/byazt/pj/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/pj/a;->c(Lcom/byazt/pj/a;)Lcom/byazt/pj/a$tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/byazt/pj/a$tt;->c(Lcom/byazt/kt/RecyclerView;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
