.class public Lcom/byazt/ga/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ga/a$c;,
        Lcom/byazt/ga/a$tt;,
        Lcom/byazt/ga/a$ve;,
        Lcom/byazt/ga/a$uj;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/nb/sp;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/byazt/ga/rh;

.field public da:Landroid/graphics/Rect;

.field public gt:Lcom/byazt/ga/a$c;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zk/x;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/byazt/ga/a$uj;

.field public my:Lcom/byazt/ga/a$ve;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/nb/ve;",
            ">;"
        }
    .end annotation
.end field

.field public nu:Ljava/lang/String;

.field public rh:Lcom/byazt/ga/a$tt;

.field public sl:F

.field public sp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/nb/uj;",
            ">;"
        }
    .end annotation
.end field

.field public t:F

.field public final tt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:F

.field public uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/ga/i;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/zk/x;",
            ">;>;"
        }
    .end annotation
.end field

.field public x:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/byazt/zk/x;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/ga/rh;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/ga/rh;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ga/a;->c:Lcom/byazt/ga/rh;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/ga/a;->tt:Ljava/util/HashSet;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/byazt/ga/a;->z:I

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/ga/a;->nu:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ga/a;->sl:F

    .line 2
    .line 3
    return v0
.end method

.method public c(F)F
    .locals 2

    .line 23
    iget v0, p0, Lcom/byazt/ga/a;->sl:F

    iget v1, p0, Lcom/byazt/ga/a;->t:F

    invoke-static {v0, v1, p1}, Lcom/byazt/kk/i;->c(FFF)F

    move-result p1

    return p1
.end method

.method public c(J)Lcom/byazt/zk/x;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/ga/a;->x:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/zk/x;

    return-object p1
.end method

.method public c(I)V
    .locals 1

    .line 20
    iget v0, p0, Lcom/byazt/ga/a;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/byazt/ga/a;->z:I

    return-void
.end method

.method public c(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/util/Map;Ljava/util/List;Lcom/byazt/ga/a$uj;Ljava/lang/String;Lcom/byazt/ga/a$tt;Lcom/byazt/ga/a$ve;Lcom/byazt/ga/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/byazt/zk/x;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lcom/byazt/zk/x;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/zk/x;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/ga/i;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/nb/uj;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/nb/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/nb/sp;",
            ">;",
            "Lcom/byazt/ga/a$uj;",
            "Ljava/lang/String;",
            "Lcom/byazt/ga/a$tt;",
            "Lcom/byazt/ga/a$ve;",
            "Lcom/byazt/ga/a$c;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Lcom/byazt/ga/a;->da:Landroid/graphics/Rect;

    move v1, p2

    .line 2
    iput v1, v0, Lcom/byazt/ga/a;->sl:F

    move v1, p3

    .line 3
    iput v1, v0, Lcom/byazt/ga/a;->t:F

    move v1, p4

    .line 4
    iput v1, v0, Lcom/byazt/ga/a;->u:F

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/byazt/ga/a;->i:Ljava/util/List;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/byazt/ga/a;->x:Landroid/util/LongSparseArray;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/byazt/ga/a;->ve:Ljava/util/Map;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/byazt/ga/a;->uj:Ljava/util/Map;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/byazt/ga/a;->sp:Landroid/util/SparseArray;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/byazt/ga/a;->n:Ljava/util/Map;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/byazt/ga/a;->a:Ljava/util/List;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/byazt/ga/a;->m:Lcom/byazt/ga/a$uj;

    move-object v1, p13

    .line 13
    iput-object v1, v0, Lcom/byazt/ga/a;->nu:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/byazt/ga/a;->rh:Lcom/byazt/ga/a$tt;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/byazt/ga/a;->my:Lcom/byazt/ga/a$ve;

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/byazt/ga/a;->gt:Lcom/byazt/ga/a$c;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-static {p1}, Lcom/byazt/kk/a;->tt(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/byazt/ga/a;->tt:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/byazt/ga/a;->yp:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/byazt/ga/a;->yp:Z

    return v0
.end method

.method public da()Lcom/byazt/ga/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->gt:Lcom/byazt/ga/a$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/nb/ve;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ga/a;->rh()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/byazt/ga/a;->u:F

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 9
    .line 10
    mul-float v0, v0, v1

    .line 11
    .line 12
    float-to-long v0, v0

    .line 13
    long-to-float v0, v0

    .line 14
    return v0
.end method

.method public nu()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/ga/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->uj:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public rh()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ga/a;->t:F

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/ga/a;->sl:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    return v0
.end method

.method public sl()Lcom/byazt/ga/a$ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->my:Lcom/byazt/ga/a$ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ga/a;->t:F

    .line 2
    .line 3
    return v0
.end method

.method public t()Lcom/byazt/ga/a$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->rh:Lcom/byazt/ga/a$tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LottieComposition:\n"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/ga/a;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/byazt/zk/x;

    .line 25
    .line 26
    const-string v3, "\t"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/byazt/zk/x;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ga/a;->z:I

    return v0
.end method

.method public tt(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/zk/x;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/ga/a;->ve:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public tt(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/a;->c:Lcom/byazt/ga/rh;

    invoke-virtual {v0, p1}, Lcom/byazt/ga/rh;->c(Z)V

    return-void
.end method

.method public u()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ga/a;->u:F

    .line 2
    .line 3
    return v0
.end method

.method public uj()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->da:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/ga/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->c:Lcom/byazt/ga/rh;

    return-object v0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/nb/sp;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/ga/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/byazt/ga/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nb/sp;

    .line 4
    invoke-virtual {v2, p1}, Lcom/byazt/nb/sp;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public x()Lcom/byazt/ga/a$uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->m:Lcom/byazt/ga/a$uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public yp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/zk/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/nb/uj;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ga/a;->sp:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method
