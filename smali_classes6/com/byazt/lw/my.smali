.class public Lcom/byazt/lw/my;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dr/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x838,
        0x91
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/dr/c;

.field public tt:Lcom/byazt/dr/c;

.field public ve:Lcom/byazt/dr/c;


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
.method public c()Lcom/byazt/zg/n;
    .locals 1

    .line 5
    sget-object v0, Lcom/byazt/zg/a;->c:Lcom/byazt/zg/a;

    return-object v0
.end method

.method public c(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/lw/my;->c:Lcom/byazt/dr/c;

    invoke-interface {v0, p1}, Lcom/byazt/dr/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/lw/my;->tt:Lcom/byazt/dr/c;

    invoke-interface {v0, p1}, Lcom/byazt/dr/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/lw/my;->ve:Lcom/byazt/dr/c;

    invoke-interface {v0, p1}, Lcom/byazt/dr/c;->c(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/dr/c;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/lw/my;->c:Lcom/byazt/dr/c;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/lw/my;->tt()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/lw/my;->c:Lcom/byazt/dr/c;

    invoke-interface {v1}, Lcom/byazt/dr/c;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/lw/my;->tt:Lcom/byazt/dr/c;

    invoke-interface {v1}, Lcom/byazt/dr/c;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/lw/my;->ve:Lcom/byazt/dr/c;

    invoke-interface {v1}, Lcom/byazt/dr/c;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tt(Lcom/byazt/dr/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lw/my;->tt:Lcom/byazt/dr/c;

    return-void
.end method

.method public ve(Lcom/byazt/dr/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lw/my;->ve:Lcom/byazt/dr/c;

    .line 2
    .line 3
    return-void
.end method
