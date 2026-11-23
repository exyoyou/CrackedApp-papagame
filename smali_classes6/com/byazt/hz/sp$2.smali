.class public Lcom/byazt/hz/sp$2;
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
        0x250
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/sp;->c(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;

.field public final synthetic tt:Ljava/util/List;

.field public final synthetic ve:Lcom/byazt/hz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/sp;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/sp$2;->ve:Lcom/byazt/hz/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/sp$2;->c:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/hz/sp$2;->tt:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/sp$2;->ve:Lcom/byazt/hz/sp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/hz/tt;->t:Z

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/sp$2;->ve:Lcom/byazt/hz/sp;

    iget-object v0, v0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/hz/sp$2;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/yl/ve;)V
    .locals 2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/byazt/hz/sp$2;->tt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/byazt/hz/sp$2;->tt:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/hz/sp$2;->ve:Lcom/byazt/hz/sp;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/hz/sp;->c(Lcom/byazt/yl/ve;I)V

    return-void
.end method
