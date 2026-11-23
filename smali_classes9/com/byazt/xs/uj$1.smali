.class public Lcom/byazt/xs/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/uj;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Landroid/widget/ImageView;Lcom/byazt/sa/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/GifView;

.field public final synthetic tt:Lcom/byazt/xs/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/uj;Lcom/byazt/oq/GifView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/uj$1;->tt:Lcom/byazt/xs/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xs/uj$1;->c:Lcom/byazt/oq/GifView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, [B

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/byazt/yj/m;->isGif()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/xs/uj$1;->c:Lcom/byazt/oq/GifView;

    .line 17
    .line 18
    check-cast v0, [B

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/byazt/oq/GifView;->c([BZ)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/xs/uj$1;->c:Lcom/byazt/oq/GifView;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lcom/byazt/oq/GifView;->setRepeatConfig(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/xs/uj$1;->c:Lcom/byazt/oq/GifView;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/byazt/oq/GifView;->tt()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    check-cast v0, [B

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/byazt/aas/m;->c([BI)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/byazt/xs/uj$1;->c:Lcom/byazt/oq/GifView;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    instance-of p1, v0, Landroid/graphics/Bitmap;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/byazt/xs/uj$1;->c:Lcom/byazt/oq/GifView;

    .line 52
    .line 53
    check-cast v0, Landroid/graphics/Bitmap;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    const/16 v0, 0x3ea

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-virtual {p0, v0, v1, p1}, Lcom/byazt/xs/uj$1;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
