.class public Lcom/byazt/lw/m;
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
        0x82
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/zg/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/zg/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/lw/m;->c:Lcom/byazt/zg/ve;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/zg/n;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lw/m;->c:Lcom/byazt/zg/ve;

    return-object v0
.end method

.method public c(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/lw/m;->tt()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lw/m;->c:Lcom/byazt/zg/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/zg/ve;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
