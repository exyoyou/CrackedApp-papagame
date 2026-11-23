.class public Lcom/byazt/rob/c$2;
.super Lcom/byazt/nh/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4bb,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rob/c;->tt(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rob/uj;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/rob/c;

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/rob/c;Ljava/util/function/Function;Lcom/byazt/rob/uj;ILcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rob/c$2;->uj:Lcom/byazt/rob/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/rob/c$2;->c:Lcom/byazt/rob/uj;

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/rob/c$2;->tt:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/rob/c$2;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/byazt/nh/tt;-><init>(Ljava/util/function/Function;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestNewDrawAd onError code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecondPageImpl"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/rob/c$2;->uj:Lcom/byazt/rob/c;

    invoke-static {p1}, Lcom/byazt/rob/c;->c(Lcom/byazt/rob/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object p1, p0, Lcom/byazt/rob/c$2;->uj:Lcom/byazt/rob/c;

    invoke-virtual {p1}, Lcom/byazt/rob/c;->c()V

    .line 10
    iget-object p1, p0, Lcom/byazt/rob/c$2;->ve:Lcom/byazt/ete/ic;

    iget v0, p0, Lcom/byazt/rob/c$2;->tt:I

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    iget-object p1, p0, Lcom/byazt/rob/c$2;->c:Lcom/byazt/rob/uj;

    invoke-virtual {p1}, Lcom/byazt/rob/uj;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/rob/c$2;->uj:Lcom/byazt/rob/c;

    iget v2, p0, Lcom/byazt/rob/c$2;->tt:I

    invoke-virtual {v1, p1, v2}, Lcom/byazt/rob/c;->c(Lcom/byazt/ete/ic;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/rob/c$2;->uj:Lcom/byazt/rob/c;

    invoke-virtual {p1}, Lcom/byazt/rob/c;->c()V

    .line 5
    iget-object p1, p0, Lcom/byazt/rob/c$2;->ve:Lcom/byazt/ete/ic;

    iget v1, p0, Lcom/byazt/rob/c$2;->tt:I

    const/4 v2, 0x5

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/byazt/rob/c$2;->uj:Lcom/byazt/rob/c;

    invoke-static {p1}, Lcom/byazt/rob/c;->c(Lcom/byazt/rob/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
