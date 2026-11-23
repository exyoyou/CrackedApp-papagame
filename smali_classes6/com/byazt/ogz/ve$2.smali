.class public Lcom/byazt/ogz/ve$2;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ogz/ve;->tt(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/util/List;

.field public final synthetic ve:Lcom/byazt/ogz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ogz/ve;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ogz/ve$2;->ve:Lcom/byazt/ogz/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ogz/ve$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ogz/ve$2;->tt:Ljava/util/List;

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
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "20000"

    const-string v0, "status"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/byazt/ogz/ve$2;->ve:Lcom/byazt/ogz/ve;

    invoke-static {p1}, Lcom/byazt/ogz/ve;->c(Lcom/byazt/ogz/ve;)Lcom/byazt/ogz/ve$c;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/ogz/ve$2;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/byazt/ogz/ve$c;->c(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/byazt/ogz/ve$2;->tt:Ljava/util/List;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/nr/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/byazt/ogz/ve$2;->ve:Lcom/byazt/ogz/ve;

    invoke-static {p2}, Lcom/byazt/ogz/ve;->c(Lcom/byazt/ogz/ve;)Lcom/byazt/ogz/ve$c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/ogz/ve$2;->c:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/byazt/ogz/ve$c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/ogz/ve$2;->ve:Lcom/byazt/ogz/ve;

    invoke-static {p1}, Lcom/byazt/ogz/ve;->tt(Lcom/byazt/ogz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/ogz/ve$2;->ve:Lcom/byazt/ogz/ve;

    invoke-static {p1}, Lcom/byazt/ogz/ve;->ve(Lcom/byazt/ogz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/byazt/ogz/ve$2;->ve:Lcom/byazt/ogz/ve;

    invoke-static {p1}, Lcom/byazt/ogz/ve;->ve(Lcom/byazt/ogz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object p1, p0, Lcom/byazt/ogz/ve$2;->ve:Lcom/byazt/ogz/ve;

    invoke-static {p1}, Lcom/byazt/ogz/ve;->tt(Lcom/byazt/ogz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
