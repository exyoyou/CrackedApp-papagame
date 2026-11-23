.class public Lcom/byazt/jx/nu;
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
        0x89
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final tt:I

.field public final uj:Z

.field public final ve:Lcom/byazt/kd/x;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/byazt/kd/x;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/nu;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/jx/nu;->tt:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/jx/nu;->ve:Lcom/byazt/kd/x;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/byazt/jx/nu;->uj:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 2
    new-instance p2, Lcom/byazt/zy/rh;

    invoke-direct {p2, p1, p3, p0}, Lcom/byazt/zy/rh;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/nu;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/nu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ShapePath{name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/jx/nu;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", index="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/byazt/jx/nu;->tt:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public tt()Lcom/byazt/kd/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/nu;->ve:Lcom/byazt/kd/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/nu;->uj:Z

    .line 2
    .line 3
    return v0
.end method
