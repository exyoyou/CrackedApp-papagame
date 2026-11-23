.class Lcom/beizi/ad/lance/a/g$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/lance/a/g$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/lance/a/g$1$1;


# direct methods
.method constructor <init>(Lcom/beizi/ad/lance/a/g$1$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/lance/a/g$1$1$1;->a:Lcom/beizi/ad/lance/a/g$1$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/lance/a/g$1$1$1;->a:Lcom/beizi/ad/lance/a/g$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/ad/lance/a/g$1$1;->a:Lcom/beizi/ad/lance/a/g$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/beizi/ad/lance/a/g;->g(Lcom/beizi/ad/lance/a/g;)Lcom/beizi/ad/internal/c/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/ad/lance/a/g$1$1$1;->a:Lcom/beizi/ad/lance/a/g$1$1;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/beizi/ad/lance/a/g$1$1;->a:Lcom/beizi/ad/lance/a/g$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/beizi/ad/lance/a/g$1;->a:Lcom/beizi/ad/lance/a/g;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/ad/lance/a/g;->g(Lcom/beizi/ad/lance/a/g;)Lcom/beizi/ad/internal/c/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/beizi/ad/internal/c/c;->a()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
