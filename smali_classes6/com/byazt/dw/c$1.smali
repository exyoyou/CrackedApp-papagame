.class public Lcom/byazt/dw/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x201,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dw/c;->c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/byazt/dw/uj;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dw/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dw/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dw/c$1;->c:Lcom/byazt/dw/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/dw/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dw/c$1;->c:Lcom/byazt/dw/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dw/c;->getNativeAdAppInfo()Lcom/byazt/dw/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/dw/c$1;->c()Lcom/byazt/dw/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
