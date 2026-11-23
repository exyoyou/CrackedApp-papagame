.class public Lcom/byazt/iu/uj$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x80
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj$3;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/c;

.field public final synthetic tt:Lcom/byazt/ete/tt;

.field public final synthetic ve:Lcom/byazt/iu/uj$3;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj$3;Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$3$1;->c:Lcom/byazt/ete/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/uj$3$1;->tt:Lcom/byazt/ete/tt;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object v0, v0, Lcom/byazt/iu/uj$3;->uj:Lcom/byazt/iu/n;

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/byazt/iu/n;->c(ILjava/lang/String;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/iu/uj$3$1;->tt:Lcom/byazt/ete/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/tt;->c(I)V

    .line 20
    iget-object p1, p0, Lcom/byazt/iu/uj$3$1;->tt:Lcom/byazt/ete/tt;

    invoke-static {p1}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    .line 21
    iget-object p1, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object p1, p1, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1}, Lcom/byazt/iuu/tt;->ve()V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/iu/ve;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object v0, v0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object v1, v0, Lcom/byazt/iu/uj$3;->n:Lcom/byazt/iu/uj;

    iget-object v2, v0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    iget-object v3, p0, Lcom/byazt/iu/uj$3$1;->c:Lcom/byazt/ete/c;

    iget-object v0, v0, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    invoke-static {v1, v2, v3, v0}, Lcom/byazt/iu/uj;->c(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/ete/c;Lcom/byazt/iuu/tt;)Lcom/byazt/ete/x$tt;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object v1, v1, Lcom/byazt/iu/uj$3;->n:Lcom/byazt/iu/uj;

    invoke-static {v1, v0}, Lcom/byazt/iu/uj;->c(Lcom/byazt/iu/uj;Lcom/byazt/ete/x$tt;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object v0, v0, Lcom/byazt/iu/uj$3;->c:Lcom/byazt/dj/tt;

    .line 5
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/byazt/iu/ve;->ve()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object v0, p1, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    const/4 v1, -0x3

    if-nez v0, :cond_1

    .line 8
    iget-object p1, p1, Lcom/byazt/iu/uj$3;->uj:Lcom/byazt/iu/n;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {v1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/byazt/iu/n;->c(ILjava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-static {v1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/iuu/tt;->tt(ILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object p1, p1, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    invoke-virtual {p1}, Lcom/byazt/iuu/tt;->ve()V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 12
    iget-object v0, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object v0, v0, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    if-nez v0, :cond_4

    .line 13
    invoke-interface {p1}, Lcom/byazt/iu/ve;->c()V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0, p1}, Lcom/byazt/iuu/tt;->c(Lcom/byazt/iu/ve;)V

    .line 15
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/byazt/iu/uj$3$1;->ve:Lcom/byazt/iu/uj$3;

    iget-object p1, p1, Lcom/byazt/iu/uj$3;->ve:Lcom/byazt/iuu/tt;

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1}, Lcom/byazt/iuu/tt;->ve()V

    :cond_6
    return-void
.end method
