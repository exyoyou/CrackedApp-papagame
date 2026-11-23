.class public Lcom/byazt/ix/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x68d,
        0x14
    }
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public n:I

.field public sp:I

.field public tt:I

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;


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
.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "reason"

    .line 2
    iget v2, p0, Lcom/byazt/ix/c;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fill_error_code"

    .line 3
    iget v2, p0, Lcom/byazt/ix/c;->tt:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fill_error_msg"

    .line 4
    iget-object v2, p0, Lcom/byazt/ix/c;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediation_rit"

    .line 5
    iget-object v2, p0, Lcom/byazt/ix/c;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "load_sort"

    .line 6
    iget v2, p0, Lcom/byazt/ix/c;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_sort"

    .line 7
    iget v2, p0, Lcom/byazt/ix/c;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "has_shown"

    .line 8
    iget v2, p0, Lcom/byazt/ix/c;->sp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const-string v0, "{\"name\": \"json err\"}"

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/byazt/ix/c;->sp:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byazt/ix/c;->ve:Ljava/lang/String;

    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ix/c;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ix/c;->c:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ix/c;->uj:Ljava/lang/String;

    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ix/c;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ix/c;->tt:I

    .line 2
    .line 3
    return-void
.end method
