.class public Lcom/byazt/ete/rl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x75
    }
.end annotation


# instance fields
.field public c:I

.field public tt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/byazt/ete/rl;->c:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/ete/rl;->tt:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/rl;->c:I

    return-void
.end method

.method public c()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/ete/rl;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/rl;->tt:I

    return-void
.end method

.method public tt()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/ete/rl;->tt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "ah"

    .line 7
    .line 8
    iget v2, p0, Lcom/byazt/ete/rl;->c:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "am"

    .line 14
    .line 15
    iget v2, p0, Lcom/byazt/ete/rl;->tt:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v0
.end method
