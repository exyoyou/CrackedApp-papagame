.class public Lcom/byazt/nm/i$1;
.super Lcom/byazt/nh/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nm/i;->c(ZLcom/byazt/omf/h;Lcom/byazt/dj/tt;Lcom/byazt/sp/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sp/tt;

.field public final synthetic tt:Lcom/byazt/nm/i;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/i;Ljava/util/function/Function;Lcom/byazt/sp/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/i$1;->tt:Lcom/byazt/nm/i;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/nm/i$1;->c:Lcom/byazt/sp/tt;

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
    iget-object v0, p0, Lcom/byazt/nm/i$1;->c:Lcom/byazt/sp/tt;

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
    new-instance v2, Lcom/byazt/nm/i$c;

    iget-object v3, p0, Lcom/byazt/nm/i$1;->tt:Lcom/byazt/nm/i;

    invoke-direct {v2, v3, v1}, Lcom/byazt/nm/i$c;-><init>(Lcom/byazt/nm/i;Lcom/byazt/nc/yp;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/byazt/nm/i$1;->c:Lcom/byazt/sp/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadSuccess(Ljava/util/List;)V

    return-void

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/byazt/nm/i$1;->c:Lcom/byazt/sp/tt;

    new-instance v0, Lcom/byazt/pp/c;

    const v1, 0x13881

    const-string v2, "load\u6210\u529f\u4f46\u8fd4\u56de\u5e7f\u544a\u662f\u7a7a"

    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method
