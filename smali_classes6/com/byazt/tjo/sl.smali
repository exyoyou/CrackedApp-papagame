.class public Lcom/byazt/tjo/sl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x9e
    }
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
.field public c:Lcom/byazt/omf/md;

.field public tt:Lcom/byazt/tjo/n;

.field public ve:Lcom/byazt/tjo/x;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/md;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/tjo/sl;->c:Lcom/byazt/omf/md;

    .line 5
    .line 6
    new-instance p1, Lcom/byazt/tjo/n;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/byazt/tjo/n;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/tjo/sl;->tt:Lcom/byazt/tjo/n;

    .line 12
    .line 13
    new-instance p1, Lcom/byazt/tjo/x;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/tjo/sl;->c:Lcom/byazt/omf/md;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/byazt/tjo/x;-><init>(Lcom/byazt/omf/md;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/tjo/sl;->ve:Lcom/byazt/tjo/x;

    .line 21
    .line 22
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    const v1, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    const v2, -0x5f5e0f2

    if-eq v1, v2, :cond_4

    const v2, -0xf4178

    if-eq v1, v2, :cond_3

    const/16 p1, 0x206f

    if-eq v1, p1, :cond_1

    const v2, 0xf4179

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    const-string p1, "TMe"

    const-string v0, "initRequestCondition getBridge"

    .line 4
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/tjo/sl;->tt:Lcom/byazt/tjo/n;

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/byazt/tjo/sl;->c:Lcom/byazt/omf/md;

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/byazt/tjo/sl;->ve:Lcom/byazt/tjo/x;

    return-object p1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/byazt/tjo/sl;->c:Lcom/byazt/omf/md;

    if-eqz v1, :cond_5

    const v0, -0xf3a70

    .line 9
    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 10
    new-instance v0, Lcom/byazt/tjo/sp;

    iget-object v1, p0, Lcom/byazt/tjo/sl;->c:Lcom/byazt/omf/md;

    invoke-virtual {v1, p1}, Lcom/byazt/omf/md;->createLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/byazt/tjo/sp;-><init>(Landroid/content/Context;Ljava/util/function/Function;)V

    return-object v0

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/byazt/tjo/sl;->c:Lcom/byazt/omf/md;

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/byazt/omf/md;->values()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/tjo/sl;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
