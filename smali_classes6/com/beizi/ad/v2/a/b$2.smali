.class Lcom/beizi/ad/v2/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/a/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/a/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/a/b$2;->a:Lcom/beizi/ad/v2/a/b;

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
    .locals 4

    .line 1
    new-instance v0, Lcom/beizi/ad/v2/e/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/beizi/ad/v2/e/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/beizi/ad/v2/a/b$2;->a:Lcom/beizi/ad/v2/a/b;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/beizi/ad/v2/a/b;->a(Lcom/beizi/ad/v2/a/b;)Lcom/beizi/ad/model/b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/beizi/ad/v2/a/b$2$1;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/beizi/ad/v2/a/b$2$1;-><init>(Lcom/beizi/ad/v2/a/b$2;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/beizi/ad/v2/a/b$2;->a:Lcom/beizi/ad/v2/a/b;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/beizi/ad/v2/a/b;->m:Lcom/beizi/ad/internal/f;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/ad/v2/e/b;->a(Lcom/beizi/ad/model/b;Lcom/beizi/ad/v2/e/a;Lcom/beizi/ad/internal/f;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
