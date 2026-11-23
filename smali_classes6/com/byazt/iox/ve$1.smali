.class public Lcom/byazt/iox/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c3,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iox/ve;->c(Lcom/byazt/im/n;Lcom/byazt/gat/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gat/tt;

.field public final synthetic tt:Lcom/byazt/im/n;

.field public final synthetic ve:Lcom/byazt/iox/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/iox/ve;Lcom/byazt/gat/tt;Lcom/byazt/im/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iox/ve$1;->c:Lcom/byazt/gat/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iox/ve$1;->tt:Lcom/byazt/im/n;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    invoke-static {v0}, Lcom/byazt/iox/ve;->c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/im/sp;->tt(I)V

    .line 2
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    invoke-static {p1}, Lcom/byazt/iox/ve;->c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/byazt/ete/tt;->ve()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/byazt/im/sp;->ve(I)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "load ad error"

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    invoke-static {p1}, Lcom/byazt/iox/ve;->c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->c:Lcom/byazt/gat/tt;

    iget-object p2, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    invoke-static {p2}, Lcom/byazt/iox/ve;->c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/im/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/byazt/im/a;-><init>(Lcom/byazt/ete/c;Z)V

    .line 8
    invoke-virtual {p2}, Lcom/byazt/ete/tt;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/im/a;->tt(J)V

    .line 9
    invoke-virtual {p2}, Lcom/byazt/ete/tt;->da()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/im/a;->ve(J)V

    .line 10
    invoke-virtual {p2}, Lcom/byazt/ete/tt;->sl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/im/a;->uj(J)V

    .line 11
    invoke-virtual {p2}, Lcom/byazt/ete/tt;->t()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/byazt/im/a;->n(J)V

    .line 12
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->tt:Lcom/byazt/im/n;

    invoke-virtual {p1}, Lcom/byazt/im/c;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/im/c;->c(I)V

    .line 13
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->tt:Lcom/byazt/im/n;

    invoke-virtual {p1}, Lcom/byazt/im/c;->ve()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/byazt/im/c;->c(J)V

    .line 14
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->c:Lcom/byazt/gat/tt;

    invoke-interface {p1, v0}, Lcom/byazt/gat/tt;->tt(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    invoke-static {p1}, Lcom/byazt/iox/ve;->c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byazt/im/sp;->tt(I)V

    .line 16
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    invoke-static {p1}, Lcom/byazt/iox/ve;->c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;

    move-result-object p1

    const-string p2, "no ad or material"

    invoke-virtual {p1, p2}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/byazt/iox/ve$1;->c:Lcom/byazt/gat/tt;

    iget-object p2, p0, Lcom/byazt/iox/ve$1;->ve:Lcom/byazt/iox/ve;

    invoke-static {p2}, Lcom/byazt/iox/ve;->c(Lcom/byazt/iox/ve;)Lcom/byazt/im/sp;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    return-void
.end method
