.class Lcom/beizi/ad/internal/e/b$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/e/b$c;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/beizi/ad/internal/e/b$c;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/e/b$c;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/e/b$c$1;->c:Lcom/beizi/ad/internal/e/b$c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/beizi/ad/internal/e/b$c$1;->a:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/beizi/ad/internal/e/b$c$1;->b:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c$1;->c:Lcom/beizi/ad/internal/e/b$c;

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
    iget-object v0, p0, Lcom/beizi/ad/internal/e/b$c$1;->c:Lcom/beizi/ad/internal/e/b$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/ad/internal/e/b$c;->a(Lcom/beizi/ad/internal/e/b$c;)Lcom/beizi/ad/internal/e/b$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/beizi/ad/internal/e/b$c$1;->a:J

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/beizi/ad/internal/e/b$c$1;->b:J

    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/beizi/ad/internal/e/b$b;->a(JJ)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
