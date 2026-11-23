.class public Lcom/byazt/wol/LayoutVideoDetail$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x160,
        0x676
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wol/LayoutVideoDetail;->tt(Landroid/content/Context;)Landroid/view/View;
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
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Landroid/widget/ImageView;

.field public final synthetic ve:Lcom/byazt/wol/LayoutVideoDetail;


# direct methods
.method public constructor <init>(Lcom/byazt/wol/LayoutVideoDetail;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->ve:Lcom/byazt/wol/LayoutVideoDetail;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->tt:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->ve:Lcom/byazt/wol/LayoutVideoDetail;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/byazt/wol/LayoutVideoDetail;->c(Lcom/byazt/wol/LayoutVideoDetail;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->ve:Lcom/byazt/wol/LayoutVideoDetail;

    iget-object v0, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/wol/LayoutVideoDetail$2;->tt:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/byazt/wol/LayoutVideoDetail;->c(Lcom/byazt/wol/LayoutVideoDetail;Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/wol/LayoutVideoDetail$2;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
