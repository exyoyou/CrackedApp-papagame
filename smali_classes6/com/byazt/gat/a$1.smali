.class public Lcom/byazt/gat/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gat/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x314,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gat/a;->tt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/gat/ve<",
        "Lcom/byazt/im/x;",
        "Lcom/byazt/im/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gat/a;


# direct methods
.method public constructor <init>(Lcom/byazt/gat/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gat/a$1;->c:Lcom/byazt/gat/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/im/sp;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/gat/a$1;->c:Lcom/byazt/gat/a;

    invoke-static {v0}, Lcom/byazt/gat/a;->c(Lcom/byazt/gat/a;)Lcom/byazt/gat/ve;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/ve;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/im/x;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/byazt/im/x;->n(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/gat/a$1;->c:Lcom/byazt/gat/a;

    invoke-static {v0}, Lcom/byazt/gat/a;->c(Lcom/byazt/gat/a;)Lcom/byazt/gat/ve;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/ve;->ve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/gat/a$1;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public tt(Lcom/byazt/im/x;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/byazt/im/x;->n(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/gat/a$1;->c:Lcom/byazt/gat/a;

    invoke-static {v0}, Lcom/byazt/gat/a;->c(Lcom/byazt/gat/a;)Lcom/byazt/gat/ve;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/ve;->tt(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/gat/a$1;->c:Lcom/byazt/gat/a;

    invoke-static {p1}, Lcom/byazt/gat/a;->tt(Lcom/byazt/gat/a;)Lcom/byazt/im/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/im/tt;->sl()Lcom/byazt/ete/c;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/cc/x;->c(Lcom/byazt/ete/c;)V

    return-void
.end method

.method public bridge synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/x;

    invoke-virtual {p0, p1}, Lcom/byazt/gat/a$1;->tt(Lcom/byazt/im/x;)V

    return-void
.end method

.method public synthetic ve(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/x;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/gat/a$1;->c(Lcom/byazt/im/x;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
