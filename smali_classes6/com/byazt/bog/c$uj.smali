.class public Lcom/byazt/bog/c$uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a7,
        0xbb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/bog/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "uj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/bog/c;


# direct methods
.method private constructor <init>(Lcom/byazt/bog/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$uj;->c:Lcom/byazt/bog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/bog/c;Lcom/byazt/bog/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/bog/c$uj;-><init>(Lcom/byazt/bog/c;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    const v0, -0x5f5e0eb

    .line 3
    const-class v1, Landroid/util/SparseArray;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/byazt/rl/tt;->c()Lcom/byazt/rl/tt;

    move-result-object v0

    const v2, -0xf41dc

    .line 6
    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/rl/tt;->c(I)Lcom/byazt/rl/tt;

    move-result-object v0

    const v2, -0xf41dd

    .line 7
    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/rl/tt;->c(Ljava/lang/String;)Lcom/byazt/rl/tt;

    move-result-object v0

    const v2, -0xf41df

    .line 8
    invoke-interface {p1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/rl/tt;->c(Z)Lcom/byazt/rl/tt;

    move-result-object v0

    const v2, -0xf41de

    .line 9
    invoke-interface {p1, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/byazt/rl/tt;->c(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lcom/byazt/rl/tt;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/byazt/rl/tt;->tt()Lcom/bykv/vk/openvk/api/proto/Result;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/bog/c$uj;->c:Lcom/byazt/bog/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/bog/c;->c(ILcom/bykv/vk/openvk/api/proto/Result;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/bog/c$uj;->c:Lcom/byazt/bog/c;

    invoke-virtual {v0, p1}, Lcom/byazt/bog/c;->tt(Lcom/bykv/vk/openvk/api/proto/Result;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c$uj;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
