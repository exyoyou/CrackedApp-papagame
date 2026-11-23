.class public Lcom/byazt/cjm/tt$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/qr/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4db,
        0x2e7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cjm/tt;->c(Landroid/content/Context;)Lcom/byazt/ff/TTProgressBar;
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

.field public final synthetic tt:Lcom/byazt/ff/TTProgressBar;

.field public final synthetic ve:Lcom/byazt/cjm/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/cjm/tt;Landroid/content/Context;Lcom/byazt/ff/TTProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cjm/tt$6;->ve:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cjm/tt$6;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cjm/tt$6;->tt:Lcom/byazt/ff/TTProgressBar;

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
    .locals 6

    .line 2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/byazt/cjm/tt$6;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/cjm/tt$6;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x168

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static/range {v0 .. v5}, Lcom/byazt/vfu/n;->c(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFF)Landroid/graphics/drawable/RotateDrawable;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/byazt/cjm/tt$6;->tt:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/cjm/tt$6;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
