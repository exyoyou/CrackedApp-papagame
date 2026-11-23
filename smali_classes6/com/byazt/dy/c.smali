.class public Lcom/byazt/dy/c;
.super Lcom/byazt/xj/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x537,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/dy/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/c<",
        "Lcom/byazt/dy/UGFrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public yo:Lcom/byazt/dy/UGFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Lcom/byazt/dy/UGFrameLayout;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/dy/UGFrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/dy/UGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/dy/c;->yo:Lcom/byazt/dy/UGFrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/byazt/dy/UGFrameLayout;->c(Lcom/byazt/sa/uj;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/dy/c;->yo:Lcom/byazt/dy/UGFrameLayout;

    .line 14
    .line 15
    return-object v0
.end method

.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/dy/c;->b()Lcom/byazt/dy/UGFrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dy/c;->yo:Lcom/byazt/dy/UGFrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->gx:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/dy/UGFrameLayout;->setEventMap(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/byazt/xj/c;->tt()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public x()Lcom/byazt/xj/c$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dy/c$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/dy/c$c;-><init>(Lcom/byazt/xj/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
