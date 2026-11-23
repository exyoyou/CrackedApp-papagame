.class public Lcom/byazt/omf/gr$15;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x985
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->c(Ljava/util/function/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/function/Function;

.field public final synthetic tt:Lcom/byazt/dna/n;

.field public final synthetic ve:Lcom/byazt/omf/gr;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Ljava/util/function/Function;Lcom/byazt/dna/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/gr$15;->tt:Lcom/byazt/dna/n;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->uj()Ljava/util/Map;

    move-result-object p1

    const-string v1, "content-type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->uj()Ljava/util/Map;

    move-result-object v1

    const-string v2, "x-pglcypher"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "application/octet-stream"

    .line 4
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "4"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/omf/gr$15;->tt:Lcom/byazt/dna/n;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->sl()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/byazt/dna/n;->decrypt([B)[B

    move-result-object p1

    .line 7
    :goto_1
    invoke-static {p1}, Lcom/byazt/aas/da;->tt([B)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    iget-object p2, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    const/4 v0, -0x3

    const-string v1, "response unGzipStr is null"

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Ljava/util/function/Function;ILjava/lang/String;)V

    return-void

    .line 10
    :cond_2
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 11
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string p1, "message"

    .line 12
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_4

    const-string p1, "data"

    .line 13
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    iget-object p1, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    iget-object p2, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    const-string v1, "response data is empty"

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Ljava/util/function/Function;ILjava/lang/String;)V

    return-void

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    iget-object v1, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    invoke-static {p2, v1, p1}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Ljava/util/function/Function;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    iget-object v1, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    invoke-static {p2, v1, v0, p1}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Ljava/util/function/Function;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 18
    :catch_0
    iget-object p1, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    iget-object p2, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    const-string v1, "response create json error"

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Ljava/util/function/Function;ILjava/lang/String;)V

    return-void

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    const-string v1, "response is null"

    invoke-static {p2, p1, v0, v1}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Ljava/util/function/Function;ILjava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 2

    .line 20
    iget-object p1, p0, Lcom/byazt/omf/gr$15;->ve:Lcom/byazt/omf/gr;

    iget-object p2, p0, Lcom/byazt/omf/gr$15;->c:Ljava/util/function/Function;

    const/4 v0, -0x2

    const-string v1, "response onFailure"

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Ljava/util/function/Function;ILjava/lang/String;)V

    return-void
.end method
