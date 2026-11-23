.class public Lcom/byazt/px/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b2,
        0x36
    }
.end annotation


# instance fields
.field public final c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


# direct methods
.method private constructor <init>(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/px/ve;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 5
    .line 6
    return-void
.end method

.method public static c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/px/ve;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/px/ve;

    invoke-direct {v0, p0}, Lcom/byazt/px/ve;-><init>(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-object v0
.end method

.method private tt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/px/ve;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method public c()Ljava/util/function/Function;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/byazt/px/ve;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/px/ve;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    const/16 v1, 0x206d

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
