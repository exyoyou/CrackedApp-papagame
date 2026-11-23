.class public Lcom/byazt/oq/ImageFlipSlide$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x956
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/ImageFlipSlide$2;->run()V
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
.field public final synthetic c:Lcom/byazt/oq/ImageFlipSlide$2;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/ImageFlipSlide$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/ImageFlipSlide$2$1;->c:Lcom/byazt/oq/ImageFlipSlide$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yj/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/oq/ImageFlipSlide$2$1;->c:Lcom/byazt/oq/ImageFlipSlide$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/oq/ImageFlipSlide$2;->tt:Lcom/byazt/oq/ImageFlipSlide;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/oq/ImageFlipSlide$2$1;->c:Lcom/byazt/oq/ImageFlipSlide$2;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/byazt/oq/ImageFlipSlide$2;->tt:Lcom/byazt/oq/ImageFlipSlide;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/byazt/oq/ImageFlipSlide$2$1;->c:Lcom/byazt/oq/ImageFlipSlide$2;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/byazt/oq/ImageFlipSlide$2;->tt:Lcom/byazt/oq/ImageFlipSlide;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v0, p1, v1, v2}, Lcom/byazt/oq/ImageFlipSlide;->c(Lcom/byazt/oq/ImageFlipSlide;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Lcom/byazt/oq/ImageFlipSlide;->c(Lcom/byazt/oq/ImageFlipSlide;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    iget-object p1, p0, Lcom/byazt/oq/ImageFlipSlide$2$1;->c:Lcom/byazt/oq/ImageFlipSlide$2;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/byazt/oq/ImageFlipSlide$2;->tt:Lcom/byazt/oq/ImageFlipSlide;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
