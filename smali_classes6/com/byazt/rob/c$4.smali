.class public Lcom/byazt/rob/c$4;
.super Lcom/byazt/nh/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4bb,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rob/c;->uj(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:I

.field public final synthetic ve:Lcom/byazt/rob/c;


# direct methods
.method public constructor <init>(Lcom/byazt/rob/c;Ljava/util/function/Function;Lcom/byazt/ete/ic;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rob/c$4;->ve:Lcom/byazt/rob/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/rob/c$4;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/rob/c$4;->tt:I

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/nh/uj;-><init>(Ljava/util/function/Function;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestNewFullScreenAd onError code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecondPageImpl"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/rob/c$4;->ve:Lcom/byazt/rob/c;

    invoke-static {p1}, Lcom/byazt/rob/c;->c(Lcom/byazt/rob/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object p1, p0, Lcom/byazt/rob/c$4;->ve:Lcom/byazt/rob/c;

    invoke-virtual {p1}, Lcom/byazt/rob/c;->c()V

    .line 6
    iget-object p1, p0, Lcom/byazt/rob/c$4;->c:Lcom/byazt/ete/ic;

    iget v0, p0, Lcom/byazt/rob/c$4;->tt:I

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/rob/ve;->tt(Lcom/byazt/ete/ic;ZII)V

    return-void
.end method

.method public c(Lcom/byazt/nc/sl;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/rob/c$4$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/rob/c$4$1;-><init>(Lcom/byazt/rob/c$4;Lcom/byazt/nc/sl;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt(Lcom/byazt/nc/sl;)V
    .locals 0

    return-void
.end method
