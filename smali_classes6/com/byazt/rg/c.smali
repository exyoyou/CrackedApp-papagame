.class public Lcom/byazt/rg/c;
.super Lcom/byazt/fe/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x323,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/fe/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/rg/c;->sp()Lcom/byazt/fe/UGRatingBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public sp()Lcom/byazt/fe/UGRatingBar;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/rg/UGNewRatingBar;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/rg/UGNewRatingBar;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/fe/UGRatingBar;->c(Lcom/byazt/sa/uj;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
