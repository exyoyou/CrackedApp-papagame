.class public Lcom/byazt/kft/tt$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cph/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x3c5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/tt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/cph/tt$c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/tt$1;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/tt$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/tt$1$1;->c:Lcom/byazt/kft/tt$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- lottie jsonStr load fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpieVideoPlayer"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2716

    const v1, 0xea68

    if-ne p1, v0, :cond_0

    .line 5
    new-instance v0, Lcom/byazt/jzl/ve;

    invoke-direct {v0, v1, p1, p2}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/kft/tt$1$1;->c:Lcom/byazt/kft/tt$1;

    iget-object p1, p1, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    invoke-static {p1, v0}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;Lcom/byazt/fk/ve;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/tt$1$1;->c:Lcom/byazt/kft/tt$1;

    iget-object v0, v0, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    invoke-static {v0}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;)I

    .line 8
    iget-object v0, p0, Lcom/byazt/kft/tt$1$1;->c:Lcom/byazt/kft/tt$1;

    iget-object v0, v0, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    invoke-static {v0}, Lcom/byazt/kft/tt;->tt(Lcom/byazt/kft/tt;)I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/byazt/kft/tt$1$1;->c:Lcom/byazt/kft/tt$1;

    iget-object p2, p1, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    iget-object p1, p1, Lcom/byazt/kft/tt$1;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Lcom/byazt/jzl/ve;

    invoke-direct {v0, v1, p1, p2}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/kft/tt$1$1;->c:Lcom/byazt/kft/tt$1;

    iget-object p1, p1, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    invoke-static {p1, v0}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;Lcom/byazt/fk/ve;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/kft/tt$1$1;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UpieVideoPlayer"

    const-string v1, "--==-- lottie load jsonStr ok"

    .line 2
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/kft/tt$1$1;->c:Lcom/byazt/kft/tt$1;

    iget-object v1, v0, Lcom/byazt/kft/tt$1;->tt:Lcom/byazt/kft/tt;

    iget-object v0, v0, Lcom/byazt/kft/tt$1;->c:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/byazt/kft/tt;->c(Lcom/byazt/kft/tt;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
