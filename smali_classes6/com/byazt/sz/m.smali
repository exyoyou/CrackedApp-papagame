.class public Lcom/byazt/sz/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26a,
        0x82
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/xj/ve;

.field public n:Lcom/byazt/sz/m;

.field public tt:I

.field public uj:Lcom/byazt/sz/m;

.field public ve:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/xj/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/m;->c:Lcom/byazt/xj/ve;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/sz/m;->tt:I

    return-void
.end method

.method public c(Lcom/byazt/sz/m;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/sz/m;->uj:Lcom/byazt/sz/m;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sz/m;->c:Lcom/byazt/xj/ve;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/sz/m;->ve:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UGenEvent{mWidget="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/sz/m;->c:Lcom/byazt/xj/ve;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mEventType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/byazt/sz/m;->tt:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mEvent="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/sz/m;->ve:Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/sz/m;->tt:I

    return v0
.end method

.method public tt(Lcom/byazt/sz/m;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/sz/m;->n:Lcom/byazt/sz/m;

    return-void
.end method

.method public uj()Lcom/byazt/sz/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/m;->uj:Lcom/byazt/sz/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/m;->ve:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method
