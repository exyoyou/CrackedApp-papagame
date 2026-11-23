.class public Lcom/byazt/atv/tt;
.super Lcom/byazt/xl/u;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/atv/tt$c;
    }
.end annotation


# instance fields
.field public a:I

.field public c:Lorg/json/JSONObject;

.field public n:Z

.field public tt:Lcom/byazt/sz/qy;

.field public uj:F

.field public ve:F


# direct methods
.method public constructor <init>(Lcom/byazt/atv/tt$c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xl/u;-><init>(Lcom/byazt/xl/u$c;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/byazt/atv/tt;->a:I

    .line 6
    .line 7
    invoke-static {p1}, Lcom/byazt/atv/tt$c;->c(Lcom/byazt/atv/tt$c;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/byazt/atv/tt;->c:Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/byazt/atv/tt$c;->tt(Lcom/byazt/atv/tt$c;)Lcom/byazt/sz/qy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/byazt/atv/tt;->tt:Lcom/byazt/sz/qy;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/byazt/atv/tt$c;->ve(Lcom/byazt/atv/tt$c;)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/byazt/atv/tt;->ve:F

    .line 24
    .line 25
    invoke-static {p1}, Lcom/byazt/atv/tt$c;->uj(Lcom/byazt/atv/tt$c;)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/byazt/atv/tt;->uj:F

    .line 30
    .line 31
    invoke-static {p1}, Lcom/byazt/atv/tt$c;->n(Lcom/byazt/atv/tt$c;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/byazt/atv/tt;->n:Z

    .line 36
    .line 37
    invoke-static {p1}, Lcom/byazt/atv/tt$c;->a(Lcom/byazt/atv/tt$c;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/byazt/atv/tt;->a:I

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public cu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/atv/tt;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/atv/tt;->ve:F

    .line 2
    .line 3
    return v0
.end method

.method public eo()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/atv/tt;->uj:F

    .line 2
    .line 3
    return v0
.end method

.method public or()Lcom/byazt/sz/qy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/tt;->tt:Lcom/byazt/sz/qy;

    .line 2
    .line 3
    return-object v0
.end method

.method public qp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/atv/tt;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public zb()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/tt;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method
