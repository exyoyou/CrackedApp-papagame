.class public Lcom/byazt/pvs/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c1,
        0xf
    }
.end annotation


# instance fields
.field public a:I

.field public c:Ljava/lang/String;

.field public n:Lorg/json/JSONObject;

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILorg/json/JSONObject;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/pvs/uj;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/pvs/uj;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/byazt/pvs/uj;->ve:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/byazt/pvs/uj;->uj:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/byazt/pvs/uj;->n:Lorg/json/JSONObject;

    .line 13
    .line 14
    iput p6, p0, Lcom/byazt/pvs/uj;->a:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pvs/uj;->n:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/byazt/pvs/uj;->n:Lorg/json/JSONObject;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/pvs/uj;->n:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/pvs/uj;->uj:I

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/pvs/uj;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pvs/uj;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/pvs/uj;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pvs/uj;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
