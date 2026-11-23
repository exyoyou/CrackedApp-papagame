.class public Lcom/byazt/rn/RefreshableBannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b1,
        0x698
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/rn/RefreshableBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rn/RefreshableBannerView;


# direct methods
.method public constructor <init>(Lcom/byazt/rn/RefreshableBannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rn/RefreshableBannerView$1;->c:Lcom/byazt/rn/RefreshableBannerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/rn/RefreshableBannerView$1;->c:Lcom/byazt/rn/RefreshableBannerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/rn/RefreshableBannerView;->c(Lcom/byazt/rn/RefreshableBannerView;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/rn/RefreshableBannerView;->c(Lcom/byazt/rn/RefreshableBannerView;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/rn/RefreshableBannerView$1;->c:Lcom/byazt/rn/RefreshableBannerView;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/rn/RefreshableBannerView;->tt(Lcom/byazt/rn/RefreshableBannerView;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Lcom/byazt/rn/RefreshableBannerView;->tt(Lcom/byazt/rn/RefreshableBannerView;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
