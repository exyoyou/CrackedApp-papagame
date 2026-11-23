.class public final Lcom/byazt/hy/tt$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hy/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hy/tt$tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/hy/tt$tt;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hy/tt$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hy/tt$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hy/tt$1;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/hy/tt$1;->ve:Lcom/byazt/hy/tt$tt;

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
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/byazt/xs/sp;->c()Lcom/byazt/xs/sp;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/hy/tt$1;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/hy/tt$1;->tt:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/byazt/xs/sp;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/byazt/hy/tt$1;->ve:Lcom/byazt/hy/tt$tt;

    if-eqz p2, :cond_1

    .line 5
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/hy/tt$1;->ve:Lcom/byazt/hy/tt$tt;

    invoke-interface {p1, p2}, Lcom/byazt/hy/tt$tt;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/hy/tt$1;->ve:Lcom/byazt/hy/tt$tt;

    invoke-interface {p1}, Lcom/byazt/hy/tt$tt;->c()V

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/byazt/hy/tt$1;->ve:Lcom/byazt/hy/tt$tt;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/byazt/hy/tt$tt;->c()V

    :cond_3
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/byazt/hy/tt$1;->ve:Lcom/byazt/hy/tt$tt;

    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p1}, Lcom/byazt/hy/tt$tt;->c()V

    :cond_0
    return-void
.end method
