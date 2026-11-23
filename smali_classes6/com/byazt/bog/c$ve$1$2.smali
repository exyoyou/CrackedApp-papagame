.class public Lcom/byazt/bog/c$ve$1$2;
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
        0x5c3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bog/c$ve$1;->c(Lcom/byazt/bog/c$tt;I)V
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
.field public final synthetic c:Lcom/byazt/bog/c$tt;

.field public final synthetic tt:Lcom/byazt/bog/c$ve$1;


# direct methods
.method public constructor <init>(Lcom/byazt/bog/c$ve$1;Lcom/byazt/bog/c$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$ve$1$2;->tt:Lcom/byazt/bog/c$ve$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bog/c$ve$1$2;->c:Lcom/byazt/bog/c$tt;

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
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/bog/c$ve$1$2;->tt:Lcom/byazt/bog/c$ve$1;

    iget-object v1, v0, Lcom/byazt/bog/c$ve$1;->uj:Lcom/byazt/bog/c$ve;

    iget-object v0, v0, Lcom/byazt/bog/c$ve$1;->tt:Lcom/byazt/bog/c$tt;

    invoke-static {v1, v0}, Lcom/byazt/bog/c$ve;->c(Lcom/byazt/bog/c$ve;Lcom/byazt/bog/c$tt;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/bog/c$ve$1$2;->tt:Lcom/byazt/bog/c$ve$1;

    iget-object v1, v0, Lcom/byazt/bog/c$ve$1;->ve:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/Manager;->createLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object p1

    iput-object p1, v0, Lcom/byazt/bog/c$ve$1;->c:Lcom/bykv/vk/openvk/api/proto/Loader;

    .line 4
    iget-object p1, p0, Lcom/byazt/bog/c$ve$1$2;->c:Lcom/byazt/bog/c$tt;

    iget-object v0, p0, Lcom/byazt/bog/c$ve$1$2;->tt:Lcom/byazt/bog/c$ve$1;

    iget-object v0, v0, Lcom/byazt/bog/c$ve$1;->c:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-interface {p1, v0}, Lcom/byazt/bog/c$tt;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c$ve$1$2;->c(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
