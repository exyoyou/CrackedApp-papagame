.class public Lcom/byazt/ux/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pj/a$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0xfe
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/a;->tt(Lorg/json/JSONObject;Ljava/util/List;Lcom/byazt/ux/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ux/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v1}, Lcom/byazt/ux/a;->tt(Lcom/byazt/ux/a;)Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/ux/uj;->uj(Lcom/byazt/xj/ve;)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/ux/uj;->c(II)V

    :cond_0
    return-void
.end method

.method public c(ILandroid/view/View;Lcom/byazt/pj/ve;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v1}, Lcom/byazt/ux/a;->tt(Lcom/byazt/ux/a;)Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/byazt/ux/uj;->c(Lcom/byazt/xj/ve;ILandroid/view/View;Lcom/byazt/pj/ve;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView;I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/ux/a$2;->c:Lcom/byazt/ux/a;

    invoke-static {v0}, Lcom/byazt/ux/a;->c(Lcom/byazt/ux/a;)Lcom/byazt/ux/uj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/ux/uj;->c(Lcom/byazt/kt/RecyclerView;I)V

    :cond_0
    return-void
.end method
