.class public Lcom/byazt/omf/gr$3;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x6d0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/gr;->c(Lorg/json/JSONObject;Lcom/byazt/omf/gu$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/omf/gu$n;

.field public final synthetic tt:Lcom/byazt/omf/gr;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/gr;Lcom/byazt/omf/gu$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/gr$3;->tt:Lcom/byazt/omf/gr;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/gr$3;->c:Lcom/byazt/omf/gu$n;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 2

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_0
    const-string p1, "verify"

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, p1, v0}, Lcom/byazt/by/a;->c(Lcom/byazt/hm/tt;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/byazt/omf/gr$uj;->c(Lorg/json/JSONObject;)Lcom/byazt/omf/gr$uj;

    move-result-object p1

    .line 5
    iget p2, p1, Lcom/byazt/omf/gr$uj;->c:I

    const/16 v0, 0x4e20

    if-eq p2, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/omf/gr$3;->c:Lcom/byazt/omf/gu$n;

    invoke-static {p2}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/byazt/omf/gu$n;->c(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-object p2, p1, Lcom/byazt/omf/gr$uj;->ve:Lcom/byazt/ete/hj;

    if-nez p2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/byazt/omf/gr$3;->tt:Lcom/byazt/omf/gr;

    iget-object p2, p0, Lcom/byazt/omf/gr$3;->c:Lcom/byazt/omf/gu$n;

    invoke-static {p1, p2}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Lcom/byazt/omf/gu$n;)V

    return-void

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/byazt/omf/gr$3;->c:Lcom/byazt/omf/gu$n;

    invoke-interface {p2, p1}, Lcom/byazt/omf/gu$n;->c(Lcom/byazt/omf/gr$uj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/4 p1, -0x2

    .line 11
    invoke-static {p1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->tt()I

    move-result v0

    .line 13
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->ve()Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_4
    iget-object p2, p0, Lcom/byazt/omf/gr$3;->c:Lcom/byazt/omf/gu$n;

    invoke-interface {p2, v0, p1}, Lcom/byazt/omf/gu$n;->c(ILjava/lang/String;)V

    return-void

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/byazt/omf/gr$3;->tt:Lcom/byazt/omf/gr;

    iget-object p2, p0, Lcom/byazt/omf/gr$3;->c:Lcom/byazt/omf/gu$n;

    invoke-static {p1, p2}, Lcom/byazt/omf/gr;->c(Lcom/byazt/omf/gr;Lcom/byazt/omf/gu$n;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    .line 17
    iget-object p1, p0, Lcom/byazt/omf/gr$3;->c:Lcom/byazt/omf/gu$n;

    const/4 v0, -0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/byazt/omf/gu$n;->c(ILjava/lang/String;)V

    return-void
.end method
