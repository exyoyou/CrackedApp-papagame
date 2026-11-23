.class Lcom/beizi/ad/v2/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/e/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/c/b;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/c/b;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/c/b$1;->a:Lcom/beizi/ad/v2/c/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b$1;->a:Lcom/beizi/ad/v2/c/b;

    invoke-static {v0}, Lcom/beizi/ad/v2/c/b;->a(Lcom/beizi/ad/v2/c/b;)Lcom/beizi/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/beizi/ad/v2/c/b$1;->a:Lcom/beizi/ad/v2/c/b;

    invoke-static {v0}, Lcom/beizi/ad/v2/c/b;->a(Lcom/beizi/ad/v2/c/b;)Lcom/beizi/ad/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/beizi/ad/a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "BeiZisAd"

    const-string v0, "onVideoLoaded: \u52a0\u8f7d\u6210\u529f"

    .line 1
    invoke-static {p1, v0}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/beizi/ad/v2/c/b$1;->a:Lcom/beizi/ad/v2/c/b;

    invoke-static {p1}, Lcom/beizi/ad/v2/c/b;->a(Lcom/beizi/ad/v2/c/b;)Lcom/beizi/ad/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/beizi/ad/v2/c/b$1;->a:Lcom/beizi/ad/v2/c/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/beizi/ad/v2/c/b;->a(Lcom/beizi/ad/v2/c/b;Z)Z

    .line 4
    iget-object p1, p0, Lcom/beizi/ad/v2/c/b$1;->a:Lcom/beizi/ad/v2/c/b;

    invoke-static {p1}, Lcom/beizi/ad/v2/c/b;->a(Lcom/beizi/ad/v2/c/b;)Lcom/beizi/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/ad/a;->a()V

    :cond_0
    return-void
.end method
