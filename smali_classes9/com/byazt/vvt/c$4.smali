.class public Lcom/byazt/vvt/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/c;->c(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/iu/n<",
        "Ljava/util/List<",
        "Lcom/byazt/nc/yp;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/vvt/c;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic uj:Lcom/byazt/nh/a;

.field public final synthetic ve:Lcom/byazt/ete/bm;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/c;Ljava/lang/String;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/nh/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/vvt/c$4;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vvt/c$4;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/vvt/c$4;->ve:Lcom/byazt/ete/bm;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/vvt/c$4;->uj:Lcom/byazt/nh/a;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/vvt/c$4;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    iget-object v1, p0, Lcom/byazt/vvt/c$4;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Z)V

    .line 17
    iget-object v0, p0, Lcom/byazt/vvt/c$4;->ve:Lcom/byazt/ete/bm;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/byazt/ete/bm;->c(Ljava/lang/Object;I)V

    .line 18
    iget-object v0, p0, Lcom/byazt/vvt/c$4;->tt:Lcom/byazt/dj/tt;

    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    iget-object v1, p0, Lcom/byazt/vvt/c$4;->c:Ljava/lang/String;

    new-instance v4, Lcom/byazt/lq/ve;

    invoke-direct {v4, p1, p2}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 20
    iget-object v0, p0, Lcom/byazt/vvt/c$4;->uj:Lcom/byazt/nh/a;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/byazt/vvt/c$4;->c(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;ZLcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/vvt/c$4;->c(Ljava/util/List;ZLcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-object p1, p0, Lcom/byazt/vvt/c$4;->tt:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/List;ZLcom/byazt/ete/ic;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;Z",
            "Lcom/byazt/ete/ic;",
            ")V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/vvt/c$4;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/byazt/vvt/c$4;->tt:Lcom/byazt/dj/tt;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    invoke-static {v0}, Lcom/byazt/vvt/c;->c(Lcom/byazt/vvt/c;)Lcom/byazt/lh/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    invoke-virtual {v1, p1}, Lcom/byazt/vvt/c;->tt(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ip/uj;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Z)V

    .line 7
    iget-object v1, p0, Lcom/byazt/vvt/c$4;->ve:Lcom/byazt/ete/bm;

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/byazt/ete/bm;->c(Ljava/lang/Object;I)V

    .line 8
    iget-object p2, p0, Lcom/byazt/vvt/c$4;->tt:Lcom/byazt/dj/tt;

    invoke-virtual {p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    invoke-virtual {p2, p1}, Lcom/byazt/vvt/c;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V

    .line 10
    iget-object p2, p0, Lcom/byazt/vvt/c$4;->uj:Lcom/byazt/nh/a;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2, p1}, Lcom/byazt/nh/a;->c(Ljava/util/List;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 12
    iget-object p1, p0, Lcom/byazt/vvt/c$4;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/byazt/vvt/c$4;->n:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/byazt/ete/ic;->c(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/vvt/c$4;->a:Lcom/byazt/vvt/c;

    invoke-virtual {p1}, Lcom/byazt/vvt/c;->c()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
