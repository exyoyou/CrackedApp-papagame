.class public abstract Lcom/byazt/lw/nu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x838,
        0x89
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/dr/c;

.field public tt:Lcom/byazt/dr/c;

.field public ve:Lcom/byazt/zg/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/zg/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/lw/nu;->ve:Lcom/byazt/zg/ve;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/zg/n;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/zg/a;->c:Lcom/byazt/zg/a;

    return-object v0
.end method

.method public c(Lcom/byazt/dr/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lw/nu;->c:Lcom/byazt/dr/c;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/lw/nu;->tt()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/byazt/lw/nu;->c:Lcom/byazt/dr/c;

    invoke-interface {v1}, Lcom/byazt/dr/c;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/lw/nu;->ve:Lcom/byazt/zg/ve;

    invoke-virtual {v1}, Lcom/byazt/zg/ve;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/lw/nu;->tt:Lcom/byazt/dr/c;

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
    iput-object p1, p0, Lcom/byazt/lw/nu;->tt:Lcom/byazt/dr/c;

    return-void
.end method
