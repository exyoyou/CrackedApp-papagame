.class public Lcom/byazt/six/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f6,
        0xf
    }
.end annotation


# direct methods
.method public static c(FFFF)Landroid/view/animation/Interpolator;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/oq/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/oq/c;-><init>(FFFF)V

    return-object v0
.end method

.method public static c()Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/mf/c;->c()Lcom/byazt/mf/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/mf/c;->ve()Lcom/byazt/mf/ve;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/mf/ve;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
