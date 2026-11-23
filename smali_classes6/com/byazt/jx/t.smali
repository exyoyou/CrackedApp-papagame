.class public Lcom/byazt/jx/t;
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
        0x42
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final n:Z

.field public final tt:Lcom/byazt/kd/tt;

.field public final uj:Lcom/byazt/kd/t;

.field public final ve:Lcom/byazt/kd/tt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/kd/tt;Lcom/byazt/kd/tt;Lcom/byazt/kd/t;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/t;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/jx/t;->tt:Lcom/byazt/kd/tt;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/jx/t;->ve:Lcom/byazt/kd/tt;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/jx/t;->uj:Lcom/byazt/kd/t;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/byazt/jx/t;->n:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 2
    new-instance p2, Lcom/byazt/zy/m;

    invoke-direct {p2, p1, p3, p0}, Lcom/byazt/zy/m;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/t;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/t;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/t;->tt:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/kd/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/t;->uj:Lcom/byazt/kd/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/kd/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/t;->ve:Lcom/byazt/kd/tt;

    .line 2
    .line 3
    return-object v0
.end method
