.class public Lcom/byazt/fb/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41d,
        0x36
    }
.end annotation


# instance fields
.field public final c:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/fb/tt;


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/fb/ve;->c:Ljava/util/function/Function;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILandroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v0

    const v1, -0xf41df

    .line 3
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f41

    if-ne p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/fb/ve;->tt:Lcom/byazt/fb/tt;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/fb/tt;->c(Z)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/fb/ve;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_2

    .line 7
    sget v0, Lcom/byazt/omf/p;->uj:I

    invoke-static {v0}, Lcom/byazt/lq/uj;->c(I)Z

    move-result v0

    const-class v1, Ljava/lang/Void;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {p2}, Lcom/byazt/yxi/uj;->c(Landroid/util/SparseArray;)Lcom/byazt/yxi/uj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const v0, -0x5f5e0eb

    .line 10
    invoke-virtual {p1, v0, p2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/byazt/fb/ve;->c:Ljava/util/function/Function;

    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/fb/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fb/ve;->tt:Lcom/byazt/fb/tt;

    return-void
.end method
