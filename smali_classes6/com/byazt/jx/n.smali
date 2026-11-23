.class public Lcom/byazt/jx/n;
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
        0x2e
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/kd/a;

.field public final c:Lcom/byazt/jx/sp;

.field public final da:Z

.field public final i:Lcom/byazt/kd/tt;

.field public final n:Lcom/byazt/kd/a;

.field public final sp:Ljava/lang/String;

.field public final tt:Landroid/graphics/Path$FillType;

.field public final uj:Lcom/byazt/kd/uj;

.field public final ve:Lcom/byazt/kd/ve;

.field public final x:Lcom/byazt/kd/tt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/jx/sp;Landroid/graphics/Path$FillType;Lcom/byazt/kd/ve;Lcom/byazt/kd/uj;Lcom/byazt/kd/a;Lcom/byazt/kd/a;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/jx/n;->c:Lcom/byazt/jx/sp;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/jx/n;->tt:Landroid/graphics/Path$FillType;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/byazt/jx/n;->ve:Lcom/byazt/kd/ve;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/byazt/jx/n;->uj:Lcom/byazt/kd/uj;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/byazt/jx/n;->n:Lcom/byazt/kd/a;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/byazt/jx/n;->a:Lcom/byazt/kd/a;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/jx/n;->sp:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/byazt/jx/n;->x:Lcom/byazt/kd/tt;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/byazt/jx/n;->i:Lcom/byazt/kd/tt;

    .line 21
    .line 22
    iput-boolean p10, p0, Lcom/byazt/jx/n;->da:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/kd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/n;->n:Lcom/byazt/kd/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/zy/x;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/byazt/zy/x;-><init>(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;Lcom/byazt/jx/n;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/n;->sp:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/byazt/kd/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/n;->uj:Lcom/byazt/kd/uj;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/kd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/n;->a:Lcom/byazt/kd/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/jx/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/n;->c:Lcom/byazt/jx/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/kd/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/n;->ve:Lcom/byazt/kd/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/n;->tt:Landroid/graphics/Path$FillType;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/n;->da:Z

    .line 2
    .line 3
    return v0
.end method
