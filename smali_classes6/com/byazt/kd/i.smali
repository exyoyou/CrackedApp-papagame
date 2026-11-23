.class public Lcom/byazt/kd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kd/u;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6b2,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/kd/u<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/kd/tt;

.field public final tt:Lcom/byazt/kd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/kd/i;->c:Lcom/byazt/kd/tt;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/kd/i;->tt:Lcom/byazt/kd/tt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/dg/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/dg/c<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/dg/yp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/kd/i;->c:Lcom/byazt/kd/tt;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/byazt/kd/i;->tt:Lcom/byazt/kd/tt;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/byazt/kd/tt;->c()Lcom/byazt/dg/c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/byazt/dg/yp;-><init>(Lcom/byazt/dg/c;Lcom/byazt/dg/c;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/i;->c:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kd/tt;->tt()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kd/i;->tt:Lcom/byazt/kd/tt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/kd/tt;->tt()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public ve()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/vc/c<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
