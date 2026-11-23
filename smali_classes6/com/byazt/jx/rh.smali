.class public Lcom/byazt/jx/rh;
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
        0x73
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jx/rh$tt;,
        Lcom/byazt/jx/rh$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/kd/tt;

.field public final c:Ljava/lang/String;

.field public final da:Z

.field public final i:F

.field public final n:Lcom/byazt/kd/uj;

.field public final sp:Lcom/byazt/jx/rh$c;

.field public final tt:Lcom/byazt/kd/tt;

.field public final uj:Lcom/byazt/kd/c;

.field public final ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/kd/tt;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/byazt/jx/rh$tt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/kd/tt;Ljava/util/List;Lcom/byazt/kd/c;Lcom/byazt/kd/uj;Lcom/byazt/kd/tt;Lcom/byazt/jx/rh$c;Lcom/byazt/jx/rh$tt;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/kd/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/kd/tt;",
            ">;",
            "Lcom/byazt/kd/c;",
            "Lcom/byazt/kd/uj;",
            "Lcom/byazt/kd/tt;",
            "Lcom/byazt/jx/rh$c;",
            "Lcom/byazt/jx/rh$tt;",
            "FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/rh;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/jx/rh;->tt:Lcom/byazt/kd/tt;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/jx/rh;->ve:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/jx/rh;->uj:Lcom/byazt/kd/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/jx/rh;->n:Lcom/byazt/kd/uj;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/byazt/jx/rh;->a:Lcom/byazt/kd/tt;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/byazt/jx/rh;->sp:Lcom/byazt/jx/rh$c;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/byazt/jx/rh;->x:Lcom/byazt/jx/rh$tt;

    .line 19
    .line 20
    iput p9, p0, Lcom/byazt/jx/rh;->i:F

    .line 21
    .line 22
    iput-boolean p10, p0, Lcom/byazt/jx/rh;->da:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/rh;->tt:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 1
    new-instance p2, Lcom/byazt/zy/gt;

    invoke-direct {p2, p1, p3, p0}, Lcom/byazt/zy/gt;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/rh;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/jx/rh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/rh;->da:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/jx/rh;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public n()Ljava/util/List;
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
    iget-object v0, p0, Lcom/byazt/jx/rh;->ve:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/jx/rh$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/rh;->sp:Lcom/byazt/jx/rh$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/kd/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/rh;->uj:Lcom/byazt/kd/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/rh;->a:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/kd/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/rh;->n:Lcom/byazt/kd/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lcom/byazt/jx/rh$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/rh;->x:Lcom/byazt/jx/rh$tt;

    .line 2
    .line 3
    return-object v0
.end method
