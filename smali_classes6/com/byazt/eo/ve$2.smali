.class public Lcom/byazt/eo/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oc/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/eo/ve;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/eo/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/eo/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/eo/ve$2;->c:Lcom/byazt/eo/ve;

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
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/eo/ve$2;->c:Lcom/byazt/eo/ve;

    invoke-static {v0}, Lcom/byazt/eo/ve;->c(Lcom/byazt/eo/ve;)Lcom/byazt/xw/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Lcom/byazt/eo/c;

    iget-object v2, p0, Lcom/byazt/eo/ve$2;->c:Lcom/byazt/eo/ve;

    invoke-static {v2}, Lcom/byazt/eo/ve;->tt(Lcom/byazt/eo/ve;)Lcom/byazt/hz/sl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/eo/c;-><init>(Lcom/byazt/hz/sl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/byazt/eo/ve$2;->c:Lcom/byazt/eo/ve;

    invoke-static {v1}, Lcom/byazt/eo/ve;->c(Lcom/byazt/eo/ve;)Lcom/byazt/xw/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/nh/a;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eo/ve$2;->c:Lcom/byazt/eo/ve;

    invoke-static {v0}, Lcom/byazt/eo/ve;->c(Lcom/byazt/eo/ve;)Lcom/byazt/xw/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/eo/ve$2;->c:Lcom/byazt/eo/ve;

    invoke-static {v0}, Lcom/byazt/eo/ve;->c(Lcom/byazt/eo/ve;)Lcom/byazt/xw/c;

    move-result-object v0

    iget v1, p1, Lcom/byazt/pp/c;->c:I

    iget-object p1, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
