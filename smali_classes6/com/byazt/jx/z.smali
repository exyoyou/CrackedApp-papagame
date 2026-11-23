.class public Lcom/byazt/jx/z;
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
        0x85
    }
.end annotation


# instance fields
.field public final a:Z

.field public final c:Z

.field public final n:Lcom/byazt/kd/uj;

.field public final tt:Landroid/graphics/Path$FillType;

.field public final uj:Lcom/byazt/kd/c;

.field public final ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/byazt/kd/c;Lcom/byazt/kd/uj;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/z;->ve:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/byazt/jx/z;->c:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/jx/z;->tt:Landroid/graphics/Path$FillType;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/jx/z;->uj:Lcom/byazt/kd/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/jx/z;->n:Lcom/byazt/kd/uj;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/byazt/jx/z;->a:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 2
    new-instance p2, Lcom/byazt/zy/sp;

    invoke-direct {p2, p1, p3, p0}, Lcom/byazt/zy/sp;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/z;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/z;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/z;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ShapeFill{color=, fillEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/jx/z;->c:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public tt()Lcom/byazt/kd/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/z;->uj:Lcom/byazt/kd/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/z;->tt:Landroid/graphics/Path$FillType;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/kd/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/z;->n:Lcom/byazt/kd/uj;

    .line 2
    .line 3
    return-object v0
.end method
