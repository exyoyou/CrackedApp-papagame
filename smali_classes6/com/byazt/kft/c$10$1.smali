.class public Lcom/byazt/kft/c$10$1;
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
        0x92d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c$10;->run()V
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
.field public final synthetic c:Lcom/byazt/kft/c$10;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c$10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

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

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- lottie jsonStr load fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLottieFakeVideoPlayer"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2716

    const v1, 0xea68

    if-ne p1, v0, :cond_0

    .line 6
    new-instance v0, Lcom/byazt/jzl/ve;

    invoke-direct {v0, v1, p1, p2}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

    iget-object p1, p1, Lcom/byazt/kft/c$10;->tt:Lcom/byazt/kft/c;

    invoke-static {p1, v0}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Lcom/byazt/jzl/ve;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

    iget-object v0, v0, Lcom/byazt/kft/c$10;->tt:Lcom/byazt/kft/c;

    invoke-static {v0}, Lcom/byazt/kft/c;->gu(Lcom/byazt/kft/c;)I

    .line 9
    iget-object v0, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

    iget-object v0, v0, Lcom/byazt/kft/c$10;->tt:Lcom/byazt/kft/c;

    invoke-static {v0}, Lcom/byazt/kft/c;->gr(Lcom/byazt/kft/c;)I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

    iget-object p2, p1, Lcom/byazt/kft/c$10;->tt:Lcom/byazt/kft/c;

    iget-object p1, p1, Lcom/byazt/kft/c$10;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/byazt/kft/c;->tt(Lcom/byazt/kft/c;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/byazt/jzl/ve;

    invoke-direct {v0, v1, p1, p2}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

    iget-object p1, p1, Lcom/byazt/kft/c$10;->tt:Lcom/byazt/kft/c;

    invoke-static {p1, v0}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Lcom/byazt/jzl/ve;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/byazt/kft/c$10$1;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TTLottieFakeVideoPlayer"

    const-string v1, "--==-- lottie jsonStr ok"

    .line 2
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

    iget-object v0, v0, Lcom/byazt/kft/c$10;->tt:Lcom/byazt/kft/c;

    invoke-static {v0, p1}, Lcom/byazt/kft/c;->c(Lcom/byazt/kft/c;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/byazt/kft/c$10$1;->c:Lcom/byazt/kft/c$10;

    iget-object p1, p1, Lcom/byazt/kft/c$10;->tt:Lcom/byazt/kft/c;

    invoke-static {p1}, Lcom/byazt/kft/c;->qy(Lcom/byazt/kft/c;)V

    return-void
.end method
