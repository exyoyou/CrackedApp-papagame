.class public Lcom/byazt/oq/TTRatingBar2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x20c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/TTRatingBar2;->c(DIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/qr/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/oq/TTRatingBar2;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/TTRatingBar2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/TTRatingBar2$1;->tt:Lcom/byazt/oq/TTRatingBar2;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/oq/TTRatingBar2$1;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/byazt/oq/TTRatingBar2$1;->tt:Lcom/byazt/oq/TTRatingBar2;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/oq/TTRatingBar2$1;->tt:Lcom/byazt/oq/TTRatingBar2;

    invoke-static {v1}, Lcom/byazt/oq/TTRatingBar2;->c(Lcom/byazt/oq/TTRatingBar2;)Landroid/widget/ImageView;

    move-result-object v1

    .line 4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget v2, p0, Lcom/byazt/oq/TTRatingBar2$1;->c:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v2, p0, Lcom/byazt/oq/TTRatingBar2$1;->tt:Lcom/byazt/oq/TTRatingBar2;

    iget-object v2, v2, Lcom/byazt/oq/TTRatingBar2;->tt:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/oq/TTRatingBar2$1;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
