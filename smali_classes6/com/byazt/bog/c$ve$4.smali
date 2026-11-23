.class public Lcom/byazt/bog/c$ve$4;
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
        0x27f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bog/c$ve;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;
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
.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic tt:Ljava/lang/Class;

.field public final synthetic ve:Lcom/byazt/bog/c$ve;


# direct methods
.method public constructor <init>(Lcom/byazt/bog/c$ve;Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bog/c$ve$4;->ve:Lcom/byazt/bog/c$ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bog/c$ve$4;->c:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/bog/c$ve$4;->tt:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/byazt/bog/c$ve$4;->ve:Lcom/byazt/bog/c$ve;

    iget-object v0, p0, Lcom/byazt/bog/c$ve$4;->c:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/byazt/bog/c$ve;->c(Lcom/byazt/bog/c$ve;Landroid/os/Bundle;)Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/bog/c$ve$4;->tt:Ljava/lang/Class;

    iget-object v1, p0, Lcom/byazt/bog/c$ve$4;->c:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/byazt/bog/c$ve;->c(Lcom/bykv/vk/openvk/api/proto/Manager;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/byazt/bog/c$ve$4;->c(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
