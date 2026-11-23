.class public Lcom/byazt/jx/a;
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
        0x22
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/kd/a;

.field public final c:Ljava/lang/String;

.field public final da:F

.field public final i:Lcom/byazt/jx/rh$tt;

.field public final n:Lcom/byazt/kd/a;

.field public final sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/kd/tt;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Lcom/byazt/kd/tt;

.field public final t:Lcom/byazt/kd/tt;

.field public final tt:Lcom/byazt/jx/sp;

.field public final u:Z

.field public final uj:Lcom/byazt/kd/uj;

.field public final ve:Lcom/byazt/kd/ve;

.field public final x:Lcom/byazt/jx/rh$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/jx/sp;Lcom/byazt/kd/ve;Lcom/byazt/kd/uj;Lcom/byazt/kd/a;Lcom/byazt/kd/a;Lcom/byazt/kd/tt;Lcom/byazt/jx/rh$c;Lcom/byazt/jx/rh$tt;FLjava/util/List;Lcom/byazt/kd/tt;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/jx/sp;",
            "Lcom/byazt/kd/ve;",
            "Lcom/byazt/kd/uj;",
            "Lcom/byazt/kd/a;",
            "Lcom/byazt/kd/a;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/jx/rh$c;",
            "Lcom/byazt/jx/rh$tt;",
            "F",
            "Ljava/util/List<",
            "Lcom/byazt/kd/tt;",
            ">;",
            "Lcom/byazt/kd/tt;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/a;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/jx/a;->tt:Lcom/byazt/jx/sp;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/jx/a;->ve:Lcom/byazt/kd/ve;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/jx/a;->uj:Lcom/byazt/kd/uj;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/jx/a;->n:Lcom/byazt/kd/a;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/jx/a;->a:Lcom/byazt/kd/a;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/byazt/jx/a;->sp:Lcom/byazt/kd/tt;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/byazt/jx/a;->x:Lcom/byazt/jx/rh$c;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/byazt/jx/a;->i:Lcom/byazt/jx/rh$tt;

    .line 21
    .line 22
    iput p10, p0, Lcom/byazt/jx/a;->da:F

    .line 23
    .line 24
    iput-object p11, p0, Lcom/byazt/jx/a;->sl:Ljava/util/List;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/byazt/jx/a;->t:Lcom/byazt/kd/tt;

    .line 27
    .line 28
    iput-boolean p13, p0, Lcom/byazt/jx/a;->u:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/kd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->a:Lcom/byazt/kd/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 2
    new-instance p2, Lcom/byazt/zy/i;

    invoke-direct {p2, p1, p3, p0}, Lcom/byazt/zy/i;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/a;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public da()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/kd/tt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->sl:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/byazt/jx/rh$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->i:Lcom/byazt/jx/rh$tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/byazt/kd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->n:Lcom/byazt/kd/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->t:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->sp:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jx/a;->da:F

    .line 2
    .line 3
    return v0
.end method

.method public tt()Lcom/byazt/jx/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->tt:Lcom/byazt/jx/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/a;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()Lcom/byazt/kd/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->uj:Lcom/byazt/kd/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/kd/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->ve:Lcom/byazt/kd/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lcom/byazt/jx/rh$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/a;->x:Lcom/byazt/jx/rh$c;

    .line 2
    .line 3
    return-object v0
.end method
