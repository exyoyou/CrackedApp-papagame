.class public Lcom/byazt/bog/c$ve$2;
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
        0x280
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bog/c$ve;->register(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/bog/c$tt<",
        "Lcom/bykv/vk/openvk/api/proto/Manager;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic tt:Lcom/byazt/bog/c$ve;


# direct methods
.method public constructor <init>(Lcom/byazt/bog/c$ve;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$ve$2;->tt:Lcom/byazt/bog/c$ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bog/c$ve$2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/bog/c$ve$2;->tt:Lcom/byazt/bog/c$ve;

    iget-object v1, p0, Lcom/byazt/bog/c$ve$2;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/byazt/bog/c$ve;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Lcom/byazt/rl/ve;->c(I)Lcom/byazt/rl/ve;

    move-result-object v1

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    move-result-object v0

    const v1, -0x5f5e0f3

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/ve;->c(II)Lcom/byazt/rl/ve;

    move-result-object v0

    const v1, -0x5f5e0f1

    const-class v2, Ljava/lang/Void;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/ve;->c(ILjava/lang/Object;)Lcom/byazt/rl/ve;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v0

    .line 9
    instance-of v1, p1, Lcom/byazt/bog/ve;

    if-eqz v1, :cond_0

    .line 10
    check-cast p1, Lcom/byazt/bog/ve;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/byazt/bog/ve;->c(I)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c$ve$2;->c(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
