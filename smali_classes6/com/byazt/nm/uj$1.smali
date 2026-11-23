.class public Lcom/byazt/nm/uj$1;
.super Lcom/byazt/nh/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/uj;->c(ZLcom/byazt/omf/h;Lcom/byazt/dj/tt;Lcom/byazt/sp/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sp/tt;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/nm/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/uj;Ljava/util/function/Function;Lcom/byazt/sp/tt;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/uj$1;->ve:Lcom/byazt/nm/uj;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nm/uj$1;->c:Lcom/byazt/sp/tt;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/byazt/nm/uj$1;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/nh/a;-><init>(Ljava/util/function/Function;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$1;->c:Lcom/byazt/sp/tt;

    new-instance v1, Lcom/byazt/pp/c;

    invoke-direct {v1, p1, p2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 4
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

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/nc/yp;

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Lcom/byazt/nm/uj$c;

    iget-boolean v3, p0, Lcom/byazt/nm/uj$1;->tt:Z

    invoke-direct {v2, v1, v3}, Lcom/byazt/nm/uj$c;-><init>(Lcom/byazt/nc/yp;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/byazt/nm/uj$1;->c:Lcom/byazt/sp/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Ljava/util/List;)V

    return-void

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/byazt/nm/uj$1;->c:Lcom/byazt/sp/tt;

    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x13881

    const-string v2, "load\u6210\u529f\u4f46\u8fd4\u56de\u5e7f\u544a\u662f\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method
