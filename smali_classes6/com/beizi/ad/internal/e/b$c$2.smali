.class Lcom/beizi/ad/internal/e/b$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/e/b$c;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/beizi/ad/internal/e/b$c;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/e/b$c;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/e/b$c$2;->b:Lcom/beizi/ad/internal/e/b$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/ad/internal/e/b$c$2;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c$2;->b:Lcom/beizi/ad/internal/e/b$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$c;->a(Lcom/beizi/ad/internal/e/b$c;)Lcom/beizi/ad/internal/e/b$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c$2;->b:Lcom/beizi/ad/internal/e/b$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$c;->a(Lcom/beizi/ad/internal/e/b$c;)Lcom/beizi/ad/internal/e/b$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/ad/internal/e/b$c$2;->a:Ljava/io/File;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/beizi/ad/internal/e/b$b;->b(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
