.class public Lcom/byazt/msx/FullSwiperItemView$1;
.super Lcom/byazt/ouz/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x155,
        0x8bd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/msx/FullSwiperItemView;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/msx/FullSwiperItemView;


# direct methods
.method public constructor <init>(Lcom/byazt/msx/FullSwiperItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperItemView$1;->c:Lcom/byazt/msx/FullSwiperItemView;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$1;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v0}, Lcom/byazt/msx/FullSwiperItemView;->c(Lcom/byazt/msx/FullSwiperItemView;)Lcom/byazt/msx/FullSwiperItemView$tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperItemView$1;->c:Lcom/byazt/msx/FullSwiperItemView;

    invoke-static {v0}, Lcom/byazt/msx/FullSwiperItemView;->c(Lcom/byazt/msx/FullSwiperItemView;)Lcom/byazt/msx/FullSwiperItemView$tt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/msx/FullSwiperItemView$tt;->c(Landroid/view/View;FF)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    return-void
.end method
