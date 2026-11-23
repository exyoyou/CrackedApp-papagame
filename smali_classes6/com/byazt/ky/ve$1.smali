.class public Lcom/byazt/ky/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a5,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ky/ve;->uj(Lcom/byazt/ha/tt;Lcom/byazt/ip/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ky/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ky/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ky/ve$1;->c:Lcom/byazt/ky/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/ve;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ky/ve$1;->c:Lcom/byazt/ky/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ky/ve;->c(Lcom/byazt/ky/ve;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
