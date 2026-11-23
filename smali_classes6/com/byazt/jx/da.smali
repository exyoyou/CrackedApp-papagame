.class public Lcom/byazt/jx/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jx/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd6,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jx/da$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/kd/tt;

.field public final c:Ljava/lang/String;

.field public final da:Z

.field public final i:Lcom/byazt/kd/tt;

.field public final n:Lcom/byazt/kd/tt;

.field public final sl:Z

.field public final sp:Lcom/byazt/kd/tt;

.field public final tt:Lcom/byazt/jx/da$c;

.field public final uj:Lcom/byazt/kd/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/kd/u<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Lcom/byazt/kd/tt;

.field public final x:Lcom/byazt/kd/tt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/jx/da$c;Lcom/byazt/kd/tt;Lcom/byazt/kd/u;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/jx/da$c;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/u<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/kd/tt;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/da;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/jx/da;->tt:Lcom/byazt/jx/da$c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/jx/da;->ve:Lcom/byazt/kd/tt;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/jx/da;->uj:Lcom/byazt/kd/u;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/jx/da;->n:Lcom/byazt/kd/tt;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/jx/da;->a:Lcom/byazt/kd/tt;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/byazt/jx/da;->sp:Lcom/byazt/kd/tt;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/byazt/jx/da;->x:Lcom/byazt/kd/tt;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/byazt/jx/da;->i:Lcom/byazt/kd/tt;

    .line 21
    .line 22
    iput-boolean p10, p0, Lcom/byazt/jx/da;->da:Z

    .line 23
    .line 24
    iput-boolean p11, p0, Lcom/byazt/jx/da;->sl:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->sp:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 2
    new-instance p2, Lcom/byazt/zy/yp;

    invoke-direct {p2, p1, p3, p0}, Lcom/byazt/zy/yp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/da;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->c:Ljava/lang/String;

    return-object v0
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/da;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/byazt/jx/da$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->tt:Lcom/byazt/jx/da$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/da;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->a:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->x:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->ve:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->n:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/kd/u;
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
    iget-object v0, p0, Lcom/byazt/jx/da;->uj:Lcom/byazt/kd/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/da;->i:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method
