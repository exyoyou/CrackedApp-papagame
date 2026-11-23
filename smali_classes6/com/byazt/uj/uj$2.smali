.class public Lcom/byazt/uj/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/uj/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uj/uj;->callNativeAdClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uj/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/uj/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uj/uj$2;->c:Lcom/byazt/uj/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uj/uj$2;->c:Lcom/byazt/uj/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMDrawAdListener()Lcom/byazt/fy/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/uj/uj$2;->c:Lcom/byazt/uj/uj;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getGMDrawAdListener()Lcom/byazt/fy/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Lcom/byazt/fy/c;->c(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
