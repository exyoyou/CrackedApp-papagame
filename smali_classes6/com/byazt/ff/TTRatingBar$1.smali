.class public Lcom/byazt/ff/TTRatingBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8e,
        0x59d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ff/TTRatingBar;->c()V
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
.field public final synthetic c:Lcom/byazt/ff/TTRatingBar;


# direct methods
.method public constructor <init>(Lcom/byazt/ff/TTRatingBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ff/TTRatingBar$1;->c:Lcom/byazt/ff/TTRatingBar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/byazt/ff/TTRatingBar$1;->c:Lcom/byazt/ff/TTRatingBar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/byazt/ff/TTRatingBar$1;->c:Lcom/byazt/ff/TTRatingBar;

    invoke-virtual {v1}, Lcom/byazt/ff/TTRatingBar;->getStarFillNum()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/ff/TTRatingBar$1;->c:Lcom/byazt/ff/TTRatingBar;

    invoke-static {v1}, Lcom/byazt/ff/TTRatingBar;->c(Lcom/byazt/ff/TTRatingBar;)Landroid/widget/ImageView;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v2, p0, Lcom/byazt/ff/TTRatingBar$1;->c:Lcom/byazt/ff/TTRatingBar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/ff/TTRatingBar$1;->c:Lcom/byazt/ff/TTRatingBar;

    invoke-static {p1}, Lcom/byazt/ff/TTRatingBar;->tt(Lcom/byazt/ff/TTRatingBar;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/ff/TTRatingBar$1;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
