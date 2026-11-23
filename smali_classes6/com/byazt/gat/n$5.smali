.class public Lcom/byazt/gat/n$5;
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
        0x246
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
    iput-object p1, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

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
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    iget-boolean v0, v0, Lcom/byazt/gat/n;->ve:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/gat/n;->ve:Z

    .line 4
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->tt(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/im/sp;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    invoke-static {v0, p1}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;Lcom/byazt/im/sp;)Lcom/byazt/im/sp;

    .line 6
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->a(Lcom/byazt/gat/n;)Lcom/byazt/im/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->a(Lcom/byazt/gat/n;)Lcom/byazt/im/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/im/sp;->uj()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/im/c;->c(I)V

    .line 8
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->a(Lcom/byazt/gat/n;)Lcom/byazt/im/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/im/sp;->ve()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/im/c;->c(J)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/gat/n;->tt:Z

    .line 10
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    iget-boolean v0, v0, Lcom/byazt/gat/n;->c:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/gat/n$5;->c:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$5;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$5;->c(Lcom/byazt/im/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
