.class public Lcom/byazt/bog/c$ve$1$1;
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
        0x5c2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/bog/c$ve$1;
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
.field public final synthetic c:Lcom/byazt/bog/c$ve$1;


# direct methods
.method public constructor <init>(Lcom/byazt/bog/c$ve$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$ve$1$1;->c:Lcom/byazt/bog/c$ve$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/bog/c$ve$1$1;->c:Lcom/byazt/bog/c$ve$1;

    iget-object v1, v0, Lcom/byazt/bog/c$ve$1;->ve:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/Manager;->createLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object p1

    iput-object p1, v0, Lcom/byazt/bog/c$ve$1;->c:Lcom/bykv/vk/openvk/api/proto/Loader;

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c$ve$1$1;->c(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
