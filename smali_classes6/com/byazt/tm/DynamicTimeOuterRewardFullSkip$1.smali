.class public Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x691
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip;->x()Z
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
.field public final synthetic c:Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip;


# direct methods
.method public constructor <init>(Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip$1;->c:Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip;

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
    .locals 2

    .line 2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip$1;->c:Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    .line 4
    iget-object p1, p0, Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip$1;->c:Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip;

    iget-object p1, p1, Lcom/byazt/tm/DynamicBaseWidget;->z:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/tm/DynamicTimeOuterRewardFullSkip$1;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
