.class public Lcom/byazt/sgn/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x18b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sgn/a;->c()V
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
.field public final synthetic c:Lcom/byazt/sgn/a;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/a$4;->c:Lcom/byazt/sgn/a;

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
    .locals 6

    .line 2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/byazt/sgn/a$4;->c:Lcom/byazt/sgn/a;

    invoke-static {v0}, Lcom/byazt/sgn/a;->c(Lcom/byazt/sgn/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/sgn/a$4;->c:Lcom/byazt/sgn/a;

    invoke-static {p1}, Lcom/byazt/sgn/a;->c(Lcom/byazt/sgn/a;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x168

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static/range {v0 .. v5}, Lcom/byazt/vfu/n;->c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFF)Landroid/graphics/drawable/RotateDrawable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/byazt/sgn/a$4;->c:Lcom/byazt/sgn/a;

    iget-object v0, v0, Lcom/byazt/sgn/a;->c:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/sgn/a$4;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
