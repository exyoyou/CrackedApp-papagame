.class public Lcom/byazt/gat/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gat/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x314,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gat/n;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/gat/tt<",
        "Lcom/byazt/im/a;",
        "Lcom/byazt/im/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gat/n;


# direct methods
.method public constructor <init>(Lcom/byazt/gat/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gat/n$2;->c:Lcom/byazt/gat/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/im/a;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/gat/n$2;->c:Lcom/byazt/gat/n;

    invoke-static {v0, p1}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;Lcom/byazt/im/a;)Lcom/byazt/im/a;

    .line 3
    iget-object v0, p0, Lcom/byazt/gat/n$2;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->n(Lcom/byazt/gat/n;)Lcom/byazt/im/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/gat/n$2;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->n(Lcom/byazt/gat/n;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/im/sp;->uj()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/im/c;->c(I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/gat/n$2;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->n(Lcom/byazt/gat/n;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/im/sp;->ve()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/im/c;->c(J)V

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5b9e\u65f6\u7269\u6599\u52a0\u8f7d\u6210\u529f isCache "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/gat/n$2;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->tt(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/im/sp;)V
    .locals 2

    const-string v0, "Splash_FullLink"

    const-string v1, "\u5b9e\u65f6\u7269\u6599\u52a0\u8f7d\u5931\u8d25 "

    .line 8
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/byazt/gat/n$2;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$2;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$2;->c(Lcom/byazt/im/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
