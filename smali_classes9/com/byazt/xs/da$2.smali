.class public final Lcom/byazt/xs/da$2;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x1ee
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/da;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/xs/ve;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/xs/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/da$2;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xs/da$2;->tt:Lcom/byazt/xs/ve;

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
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ugeno_template_kv"

    .line 2
    invoke-static {v1}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v2, p0, Lcom/byazt/xs/da$2;->c:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/byazt/iy/n;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/byazt/xs/da$2;->tt:Lcom/byazt/xs/ve;

    const/4 v2, 0x1

    invoke-static {v2, p2, v1}, Lcom/byazt/xs/da;->c(ZLjava/lang/String;Lcom/byazt/xs/ve;)V

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/byazt/xs/da$2;->tt:Lcom/byazt/xs/ve;

    invoke-static {v0, p1, p2}, Lcom/byazt/xs/da;->c(ZLjava/lang/String;Lcom/byazt/xs/ve;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :catch_0
    iget-object p2, p0, Lcom/byazt/xs/da$2;->tt:Lcom/byazt/xs/ve;

    invoke-static {v0, p1, p2}, Lcom/byazt/xs/da;->c(ZLjava/lang/String;Lcom/byazt/xs/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 1

    const/4 p1, 0x0

    .line 8
    iget-object p2, p0, Lcom/byazt/xs/da$2;->tt:Lcom/byazt/xs/ve;

    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/byazt/xs/da;->c(ZLjava/lang/String;Lcom/byazt/xs/ve;)V

    return-void
.end method
