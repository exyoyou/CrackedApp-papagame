.class public Lcom/byazt/ux/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x64
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c;->m()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/GifView;

.field public final synthetic tt:Lcom/byazt/ux/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c;Lcom/byazt/oq/GifView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$5;->tt:Lcom/byazt/ux/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ux/c$5;->c:Lcom/byazt/oq/GifView;

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
    invoke-interface {p1}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
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
    iget-object p1, p0, Lcom/byazt/ux/c$5;->c:Lcom/byazt/oq/GifView;

    .line 17
    .line 18
    check-cast v0, [B

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/byazt/oq/GifView;->c([BZ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    check-cast v0, [B

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/byazt/aas/m;->c([BI)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/byazt/ux/c$5;->c:Lcom/byazt/oq/GifView;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :catchall_0
    :cond_1
    return-void
.end method
