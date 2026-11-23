.class public Lcom/byazt/kd/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jx/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6b2,
        0x42
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/kd/tt;

.field public final c:Lcom/byazt/kd/n;

.field public final i:Lcom/byazt/kd/tt;

.field public final n:Lcom/byazt/kd/uj;

.field public final sp:Lcom/byazt/kd/tt;

.field public final tt:Lcom/byazt/kd/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/kd/u<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Lcom/byazt/kd/tt;

.field public final ve:Lcom/byazt/kd/sp;

.field public final x:Lcom/byazt/kd/tt;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/byazt/kd/t;-><init>(Lcom/byazt/kd/n;Lcom/byazt/kd/u;Lcom/byazt/kd/sp;Lcom/byazt/kd/tt;Lcom/byazt/kd/uj;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;)V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/kd/n;Lcom/byazt/kd/u;Lcom/byazt/kd/sp;Lcom/byazt/kd/tt;Lcom/byazt/kd/uj;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/kd/n;",
            "Lcom/byazt/kd/u<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/byazt/kd/sp;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/uj;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/tt;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/kd/t;->c:Lcom/byazt/kd/n;

    .line 4
    iput-object p2, p0, Lcom/byazt/kd/t;->tt:Lcom/byazt/kd/u;

    .line 5
    iput-object p3, p0, Lcom/byazt/kd/t;->ve:Lcom/byazt/kd/sp;

    .line 6
    iput-object p4, p0, Lcom/byazt/kd/t;->uj:Lcom/byazt/kd/tt;

    .line 7
    iput-object p5, p0, Lcom/byazt/kd/t;->n:Lcom/byazt/kd/uj;

    .line 8
    iput-object p6, p0, Lcom/byazt/kd/t;->x:Lcom/byazt/kd/tt;

    .line 9
    iput-object p7, p0, Lcom/byazt/kd/t;->i:Lcom/byazt/kd/tt;

    .line 10
    iput-object p8, p0, Lcom/byazt/kd/t;->a:Lcom/byazt/kd/tt;

    .line 11
    iput-object p9, p0, Lcom/byazt/kd/t;->sp:Lcom/byazt/kd/tt;

    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->x:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/byazt/kd/n;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/kd/t;->c:Lcom/byazt/kd/n;

    return-object v0
.end method

.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public da()Lcom/byazt/dg/m;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/dg/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/dg/m;-><init>(Lcom/byazt/kd/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public i()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->sp:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/byazt/kd/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->n:Lcom/byazt/kd/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->i:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/kd/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/kd/u<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->tt:Lcom/byazt/kd/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->uj:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/kd/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->ve:Lcom/byazt/kd/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kd/t;->a:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method
