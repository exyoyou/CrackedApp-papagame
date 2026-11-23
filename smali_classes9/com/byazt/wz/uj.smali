.class public abstract Lcom/byazt/wz/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pop/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0xf
    }
.end annotation


# instance fields
.field public p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/ua/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public yv:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/wz/uj;->yv:Z

    .line 6
    .line 7
    return-void
.end method

.method private x()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/uj;->p:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/ua/c$c;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-interface {v0}, Lcom/byazt/ua/c$c;->getVideoModel()Lcom/byazt/ua/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/ua/c;->c()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_2
    return-object v1
.end method


# virtual methods
.method public c(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/ua/c$c;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/wz/uj;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/wz/uj;->yv:Z

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Z
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/byazt/wz/uj;->yv:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/byazt/aas/n;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/byazt/wz/uj;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, p3, v1}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Lcom/byazt/ete/ic;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;->c(Lcom/byazt/wz/uj;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public gt()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
