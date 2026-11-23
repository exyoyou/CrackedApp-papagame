.class Lcom/beizi/ad/v2/d/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/d/b;->a(Lcom/beizi/ad/internal/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/d/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/d/b$4;->a:Lcom/beizi/ad/v2/d/b;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b$4;->a:Lcom/beizi/ad/v2/d/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/v2/d/b;->c(Lcom/beizi/ad/v2/d/b;)Lcom/beizi/ad/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/v2/d/b$4;->a:Lcom/beizi/ad/v2/d/b;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/ad/v2/d/b;->c(Lcom/beizi/ad/v2/d/b;)Lcom/beizi/ad/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/ad/v2/d/b$4;->a:Lcom/beizi/ad/v2/d/b;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/beizi/ad/v2/d/b;->d(Lcom/beizi/ad/v2/d/b;)Lcom/beizi/ad/e;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/beizi/ad/d;->a(Lcom/beizi/ad/e;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
