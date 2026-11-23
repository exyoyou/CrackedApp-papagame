.class public Lcom/byazt/nc/u$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x103,
        0x457
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nc/u;->c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lcom/byazt/nc/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nc/u;


# direct methods
.method public constructor <init>(Lcom/byazt/nc/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nc/u$8;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/nc/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nc/u$8;->c:Lcom/byazt/nc/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/nc/u;->getDownloadStatusController()Lcom/byazt/nc/n;

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
    invoke-virtual {p0}, Lcom/byazt/nc/u$8;->c()Lcom/byazt/nc/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
