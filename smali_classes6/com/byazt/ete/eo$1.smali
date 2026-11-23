.class public Lcom/byazt/ete/eo$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x297
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ete/eo;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/eo;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/eo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ete/eo$1;->c:Lcom/byazt/ete/eo;

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

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/byazt/ete/eo$1;->c:Lcom/byazt/ete/eo;

    invoke-static {v0}, Lcom/byazt/ete/eo;->c(Lcom/byazt/ete/eo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/ete/eo$1;->c:Lcom/byazt/ete/eo;

    invoke-static {p1, p2}, Lcom/byazt/ete/eo;->c(Lcom/byazt/ete/eo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method
