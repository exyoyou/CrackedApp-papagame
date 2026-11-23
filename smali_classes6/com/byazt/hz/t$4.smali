.class public Lcom/byazt/hz/t$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zq/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x16f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hz/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/t;

.field public final tt:Lcom/byazt/hz/t$c;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/t;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/t$4;->c:Lcom/byazt/hz/t;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/byazt/hz/t$c;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/byazt/hz/t$c;-><init>(Lcom/byazt/hz/t;Lcom/byazt/hz/t$1;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/hz/t$4;->tt:Lcom/byazt/hz/t$c;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/t$4;->c:Lcom/byazt/hz/t;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/hz/t;->c(Lcom/byazt/hz/t;Z)Z

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/t$4;->tt:Lcom/byazt/hz/t$c;

    invoke-virtual {v0}, Lcom/byazt/hz/t$c;->c()V

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 1
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/byazt/hz/t$4;->tt:Lcom/byazt/hz/t$c;

    invoke-virtual {v0, p1}, Lcom/byazt/hz/t$c;->c(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/t$4;->tt:Lcom/byazt/hz/t$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/t$c;->g_()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public uj()V
    .locals 0

    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/t$4;->tt:Lcom/byazt/hz/t$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/hz/t$c;->h_()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
