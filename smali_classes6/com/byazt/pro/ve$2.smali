.class public Lcom/byazt/pro/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/un/NativeVideoTsView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pro/ve;->inflate(Landroid/content/Context;)Lcom/byazt/un/NativeVideoTsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pro/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/pro/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/ve$2;->c:Lcom/byazt/pro/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/ve$2;->c:Lcom/byazt/pro/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/pro/ve;->c(Lcom/byazt/pro/ve;)Lcom/byazt/pro/uj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/byazt/lq/tt;->getNativeAd()Lcom/byazt/nc/u;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/kyz/ve;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lcom/byazt/omf/my;->c(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
