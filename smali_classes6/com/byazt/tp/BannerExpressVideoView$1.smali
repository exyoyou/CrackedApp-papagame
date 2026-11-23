.class public Lcom/byazt/tp/BannerExpressVideoView$1;
.super Lcom/byazt/ouz/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0x750
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tp/BannerExpressVideoView;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tp/BannerExpressVideoView;


# direct methods
.method public constructor <init>(Lcom/byazt/tp/BannerExpressVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/BannerExpressVideoView$1;->c:Lcom/byazt/tp/BannerExpressVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/ouz/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;FF)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/byazt/tp/BannerExpressVideoView$1;->c:Lcom/byazt/tp/BannerExpressVideoView;

    invoke-virtual {p1, p2, p3}, Lcom/byazt/tp/c;->c(FF)V

    .line 4
    iget-object p1, p0, Lcom/byazt/tp/BannerExpressVideoView$1;->c:Lcom/byazt/tp/BannerExpressVideoView;

    invoke-virtual {p1}, Lcom/byazt/tp/c;->a()V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/tp/BannerExpressVideoView$1;->c:Lcom/byazt/tp/BannerExpressVideoView;

    iget-object v0, p1, Lcom/byazt/tp/c;->a:Lcom/byazt/ouz/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
