.class public Lcom/byazt/whk/u$1;
.super Lcom/byazt/whk/x;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38c,
        0x35
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/whk/u;->tt(Ljava/lang/String;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/whk/u;


# direct methods
.method public constructor <init>(Lcom/byazt/whk/u;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/whk/u$1;->tt:Lcom/byazt/whk/u;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/whk/u$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/whk/x;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ve(ILandroid/util/SparseArray;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/yxi/tt;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lcom/byazt/yxi/tt;-><init>(Landroid/util/SparseArray;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/yxi/tt;->uj()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/byazt/yxi/tt;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/byazt/whk/u$1;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/whk/u$1;->tt:Lcom/byazt/whk/u;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-static {v1, v2}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/byazt/whk/u;->c(Lcom/byazt/whk/u;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/whk/u$1;->tt:Lcom/byazt/whk/u;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/byazt/whk/u;->c(Lcom/byazt/whk/u;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/byazt/whk/u$1;->tt:Lcom/byazt/whk/u;

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-static {v1, v2}, Lcom/byazt/whk/da;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/byazt/whk/u;->tt(Lcom/byazt/whk/u;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/byazt/whk/x;->ve(ILandroid/util/SparseArray;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method
