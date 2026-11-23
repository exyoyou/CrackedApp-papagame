.class public Lcom/byazt/un/NativeVideoTsView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x3c7
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/yj/gr<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/un/NativeVideoTsView;

.field public final synthetic ve:Lcom/byazt/dh/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/un/NativeVideoTsView;Landroid/content/Context;ILcom/byazt/dh/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$5;->uj:Lcom/byazt/un/NativeVideoTsView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/un/NativeVideoTsView$5;->c:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/un/NativeVideoTsView$5;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/un/NativeVideoTsView$5;->ve:Lcom/byazt/dh/tt;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yj/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$5;->c:Landroid/content/Context;

    .line 8
    .line 9
    iget v1, p0, Lcom/byazt/un/NativeVideoTsView$5;->tt:I

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/byazt/or/tt;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView$5;->uj:Lcom/byazt/un/NativeVideoTsView;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/byazt/un/NativeVideoTsView$5$1;

    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Lcom/byazt/un/NativeVideoTsView$5$1;-><init>(Lcom/byazt/un/NativeVideoTsView$5;Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
