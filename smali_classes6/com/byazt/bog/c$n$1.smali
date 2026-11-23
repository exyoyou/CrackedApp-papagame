.class public Lcom/byazt/bog/c$n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bog/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a7,
        0x772
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bog/c$n;->c(Lcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/util/function/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/bog/c$tt<",
        "Lcom/bykv/vk/openvk/api/proto/Loader;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field public final synthetic tt:Ljava/util/function/Function;

.field public final synthetic ve:Lcom/byazt/bog/c$n;


# direct methods
.method public constructor <init>(Lcom/byazt/bog/c$n;Lcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$n$1;->ve:Lcom/byazt/bog/c$n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bog/c$n$1;->c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/bog/c$n$1;->tt:Ljava/util/function/Function;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/bykv/vk/openvk/api/proto/Loader;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/bog/c$n$1;->c:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    invoke-static {v0}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/byazt/bog/c$n$1;->tt:Ljava/util/function/Function;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c$n$1;->c(Lcom/bykv/vk/openvk/api/proto/Loader;)V

    return-void
.end method
