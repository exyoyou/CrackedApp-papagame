.class public Lcom/byazt/atv/tt$c;
.super Lcom/byazt/xl/u$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/atv/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public c:Lorg/json/JSONObject;

.field public n:Z

.field public tt:Lcom/byazt/sz/qy;

.field public uj:F

.field public ve:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/xl/u$c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/byazt/atv/tt$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/atv/tt$c;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/atv/tt$c;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/atv/tt$c;->c:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/atv/tt$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/atv/tt$c;->n:Z

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/atv/tt$c;)Lcom/byazt/sz/qy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/atv/tt$c;->tt:Lcom/byazt/sz/qy;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/atv/tt$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/atv/tt$c;->uj:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/atv/tt$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/atv/tt$c;->ve:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public c(F)Lcom/byazt/atv/tt$c;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/atv/tt$c;->ve:F

    return-object p0
.end method

.method public c(Lcom/byazt/sz/qy;)Lcom/byazt/atv/tt$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/atv/tt$c;->tt:Lcom/byazt/sz/qy;

    return-object p0
.end method

.method public synthetic c()Lcom/byazt/xl/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/atv/tt$c;->tt()Lcom/byazt/atv/tt;

    move-result-object v0

    return-object v0
.end method

.method public n(Lorg/json/JSONObject;)Lcom/byazt/atv/tt$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/atv/tt$c;->c:Lorg/json/JSONObject;

    return-object p0
.end method

.method public n(Z)Lcom/byazt/atv/tt$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/atv/tt$c;->n:Z

    return-object p0
.end method

.method public sl(I)Lcom/byazt/atv/tt$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/atv/tt$c;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public tt(F)Lcom/byazt/atv/tt$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/atv/tt$c;->uj:F

    return-object p0
.end method

.method public tt()Lcom/byazt/atv/tt;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/atv/tt;

    invoke-direct {v0, p0}, Lcom/byazt/atv/tt;-><init>(Lcom/byazt/atv/tt$c;)V

    return-object v0
.end method
