.class public Lcom/byazt/hz/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yl/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/i;->c(Ljava/util/List;Lcom/byazt/pp/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hz/i;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/i$1;->c:Lcom/byazt/hz/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/i$1;->c:Lcom/byazt/hz/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/hz/tt;->t:Z

    return-void
.end method

.method public c(Lcom/byazt/yl/ve;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/i$1;->c:Lcom/byazt/hz/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/byazt/hz/i;->c(Lcom/byazt/yl/ve;Z)V

    return-void
.end method
