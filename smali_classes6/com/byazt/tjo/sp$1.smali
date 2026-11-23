.class public Lcom/byazt/tjo/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zh/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tjo/sp;->c(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/tjo/sp;

.field public final synthetic c:I

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic tt:Landroid/util/SparseArray;

.field public final synthetic uj:Ljava/util/function/Function;

.field public final synthetic ve:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


# direct methods
.method public constructor <init>(Lcom/byazt/tjo/sp;ILandroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tjo/sp$1;->a:Lcom/byazt/tjo/sp;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/tjo/sp$1;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tjo/sp$1;->tt:Landroid/util/SparseArray;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tjo/sp$1;->ve:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/tjo/sp$1;->uj:Ljava/util/function/Function;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/tjo/sp$1;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/tjo/sp$1;->c:I

    return v0
.end method

.method public c(ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/tjo/sp$1;->a:Lcom/byazt/tjo/sp;

    iget v1, p0, Lcom/byazt/tjo/sp$1;->c:I

    iget-object v2, p0, Lcom/byazt/tjo/sp$1;->tt:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/byazt/tjo/sp$1;->ve:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    iget-object v4, p0, Lcom/byazt/tjo/sp$1;->uj:Ljava/util/function/Function;

    move-object v5, p2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/byazt/tjo/sp;->c(Lcom/byazt/tjo/sp;ILandroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;Ljava/util/Map;Z)V

    return-void
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tjo/sp$1;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
