.class public Lcom/byazt/dg/u;
.super Lcom/byazt/dg/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xba,
        0x43
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/dg/c<",
        "Lcom/byazt/jx/yp;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zy/my;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Landroid/graphics/Path;

.field public final uj:Lcom/byazt/jx/yp;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/vc/c<",
            "Lcom/byazt/jx/yp;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/dg/c;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/byazt/jx/yp;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/byazt/jx/yp;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/dg/u;->uj:Lcom/byazt/jx/yp;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/dg/u;->n:Landroid/graphics/Path;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/byazt/vc/c;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/dg/u;->tt(Lcom/byazt/vc/c;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/zy/my;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/dg/u;->a:Ljava/util/List;

    return-void
.end method

.method public tt(Lcom/byazt/vc/c;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/vc/c<",
            "Lcom/byazt/jx/yp;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/byazt/vc/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/byazt/jx/yp;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/byazt/vc/c;->tt:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/byazt/jx/yp;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/dg/u;->uj:Lcom/byazt/jx/yp;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p1, p2}, Lcom/byazt/jx/yp;->c(Lcom/byazt/jx/yp;Lcom/byazt/jx/yp;F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/dg/u;->uj:Lcom/byazt/jx/yp;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/byazt/dg/u;->a:Ljava/util/List;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz p2, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/dg/u;->a:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/byazt/zy/my;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/byazt/zy/my;->c(Lcom/byazt/jx/yp;)Lcom/byazt/jx/yp;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    add-int/lit8 p2, p2, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/byazt/dg/u;->n:Landroid/graphics/Path;

    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/byazt/kk/i;->c(Lcom/byazt/jx/yp;Landroid/graphics/Path;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/byazt/dg/u;->n:Landroid/graphics/Path;

    .line 49
    .line 50
    return-object p1
.end method
