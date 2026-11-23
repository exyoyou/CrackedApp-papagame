.class public Lcom/byazt/nm/c$1;
.super Lcom/byazt/nh/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/c;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/nm/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c;Ljava/util/function/Function;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$1;->tt:Lcom/byazt/nm/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nm/c$1;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/nh/a;-><init>(Ljava/util/function/Function;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$1;->tt:Lcom/byazt/nm/c;

    new-instance v1, Lcom/byazt/pp/c;

    invoke-direct {v1, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nc/yp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nc/yp;

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lcom/byazt/nm/c$tt;

    iget-object v1, p0, Lcom/byazt/nm/c$1;->tt:Lcom/byazt/nm/c;

    iget-object v2, p0, Lcom/byazt/nm/c$1;->c:Landroid/content/Context;

    invoke-direct {p1, v1, v2, v0}, Lcom/byazt/nm/c$tt;-><init>(Lcom/byazt/nm/c;Landroid/content/Context;Lcom/byazt/nc/yp;)V

    invoke-virtual {p1}, Lcom/byazt/nm/c$tt;->render()V

    :cond_2
    return-void

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/byazt/nm/c$1;->tt:Lcom/byazt/nm/c;

    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x13881

    const-string v2, "load list is null or empty"

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method
