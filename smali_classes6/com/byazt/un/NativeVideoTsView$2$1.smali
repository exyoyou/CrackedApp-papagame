.class public Lcom/byazt/un/NativeVideoTsView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x5ab
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/NativeVideoTsView$2;->onSuccess(Lcom/byazt/yj/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic tt:Lcom/byazt/un/NativeVideoTsView$2;


# direct methods
.method public constructor <init>(Lcom/byazt/un/NativeVideoTsView$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$2$1;->tt:Lcom/byazt/un/NativeVideoTsView$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/un/NativeVideoTsView$2$1;->c:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$2$1;->c:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$2$1;->tt:Lcom/byazt/un/NativeVideoTsView$2;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/byazt/un/NativeVideoTsView$2;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView$2$1;->c:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
