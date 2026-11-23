.class public Lcom/byazt/aas/aw$1;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x83,
        0xa4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/aas/aw;->c(Lcom/byazt/ete/d$ve;Lcom/byazt/ete/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/ete/d$ve;

.field public final synthetic uj:Lcom/byazt/aas/aw;

.field public final synthetic ve:Lcom/byazt/ete/d$c;


# direct methods
.method public constructor <init>(Lcom/byazt/aas/aw;Ljava/lang/String;Lcom/byazt/ete/d$ve;Lcom/byazt/ete/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/aas/aw$1;->uj:Lcom/byazt/aas/aw;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/aas/aw$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/aas/aw$1;->tt:Lcom/byazt/ete/d$ve;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/aas/aw$1;->ve:Lcom/byazt/ete/d$c;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/aas/aw$1;->uj:Lcom/byazt/aas/aw;

    invoke-static {p1}, Lcom/byazt/aas/aw;->c(Lcom/byazt/aas/aw;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/aas/aw$1;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->x()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->x()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/byazt/aas/aw$1$1;

    const-string v0, "downloadZip"

    invoke-direct {p1, p0, v0, p2}, Lcom/byazt/aas/aw$1$1;-><init>(Lcom/byazt/aas/aw$1;Ljava/lang/String;Lcom/byazt/hm/tt;)V

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/byazt/bwm/n;->c(Lcom/byazt/bwm/sp;I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "download resources failed 1\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/byazt/aas/aw$1;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebCacheResourceManager"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/byazt/aas/aw$1;->uj:Lcom/byazt/aas/aw;

    invoke-static {p1}, Lcom/byazt/aas/aw;->c(Lcom/byazt/aas/aw;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/aas/aw$1;->c:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "download resources failed 2\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/byazt/aas/aw$1;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebCacheResourceManager"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
