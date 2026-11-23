.class Lcom/beizi/ad/v2/d/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/d/b;->a(Landroid/view/View;Lcom/beizi/ad/internal/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/internal/c/c;

.field final synthetic b:Lcom/beizi/ad/v2/d/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/d/b;Lcom/beizi/ad/internal/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/d/b$1;->b:Lcom/beizi/ad/v2/d/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/ad/v2/d/b$1;->a:Lcom/beizi/ad/internal/c/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b$1;->b:Lcom/beizi/ad/v2/d/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/v2/d/b;->a(Lcom/beizi/ad/v2/d/b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b$1;->b:Lcom/beizi/ad/v2/d/b;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/d/b;->a(Lcom/beizi/ad/v2/d/b;Z)Z

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/beizi/ad/internal/a/a;->a()Lcom/beizi/ad/internal/a/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/beizi/ad/v2/d/b$1;->b:Lcom/beizi/ad/v2/d/b;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/ad/v2/d/b;->b(Lcom/beizi/ad/v2/d/b;)Lcom/beizi/ad/internal/a/b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/a/a;->a(Lcom/beizi/ad/internal/a/b;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b$1;->a:Lcom/beizi/ad/internal/c/c;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/beizi/ad/internal/c/c;->a()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
