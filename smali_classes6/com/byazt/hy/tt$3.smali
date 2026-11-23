.class public final Lcom/byazt/hy/tt$3;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hy/tt;->c(Ljava/lang/String;Lcom/byazt/hy/tt$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hy/tt$c;


# direct methods
.method public constructor <init>(Lcom/byazt/hy/tt$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hy/tt$3;->c:Lcom/byazt/hy/tt$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/hy/tt$3;->c:Lcom/byazt/hy/tt$c;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, p2}, Lcom/byazt/hy/tt$c;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/byazt/hy/tt$3;->c:Lcom/byazt/hy/tt$c;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->tt()I

    move-result v0

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->ve()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/byazt/hy/tt$c;->c(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    .line 9
    iget-object p1, p0, Lcom/byazt/hy/tt$3;->c:Lcom/byazt/hy/tt$c;

    if-eqz p1, :cond_0

    const/16 v0, 0x259

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/byazt/hy/tt$c;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
