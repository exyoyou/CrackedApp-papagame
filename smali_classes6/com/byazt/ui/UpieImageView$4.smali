.class public Lcom/byazt/ui/UpieImageView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cph/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2,
        0x6
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ui/UpieImageView;->tt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/cph/tt$c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/ui/UpieImageView;


# direct methods
.method public constructor <init>(Lcom/byazt/ui/UpieImageView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ui/UpieImageView$4;->tt:Lcom/byazt/ui/UpieImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ui/UpieImageView$4;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/byazt/ui/UpieImageView$4;->tt:Lcom/byazt/ui/UpieImageView;

    invoke-static {p1}, Lcom/byazt/ui/UpieImageView;->x(Lcom/byazt/ui/UpieImageView;)I

    .line 6
    iget-object p1, p0, Lcom/byazt/ui/UpieImageView$4;->tt:Lcom/byazt/ui/UpieImageView;

    invoke-static {p1}, Lcom/byazt/ui/UpieImageView;->i(Lcom/byazt/ui/UpieImageView;)I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/byazt/ui/UpieImageView$4;->tt:Lcom/byazt/ui/UpieImageView;

    iget-object p2, p0, Lcom/byazt/ui/UpieImageView$4;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/byazt/ui/UpieImageView;->tt(Lcom/byazt/ui/UpieImageView;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/byazt/jzl/ve;

    const/16 p2, 0x2713

    const-string v0, "\u5e7f\u544a\u4e3b\u56feurl\u52a0\u8f7d\u5931\u8d25"

    const v1, 0xea68

    invoke-direct {p1, v1, p2, v0}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ui/UpieImageView$4;->tt:Lcom/byazt/ui/UpieImageView;

    invoke-static {v0, p1}, Lcom/byazt/ui/UpieImageView;->c(Lcom/byazt/ui/UpieImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lcom/byazt/ui/UpieImageView$4;->tt:Lcom/byazt/ui/UpieImageView;

    invoke-static {p1}, Lcom/byazt/ui/UpieImageView;->n(Lcom/byazt/ui/UpieImageView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/ui/UpieImageView$4;->tt:Lcom/byazt/ui/UpieImageView;

    invoke-static {v0}, Lcom/byazt/ui/UpieImageView;->c(Lcom/byazt/ui/UpieImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Lcom/byazt/or/tt;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/byazt/ui/UpieImageView$4$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ui/UpieImageView$4$1;-><init>(Lcom/byazt/ui/UpieImageView$4;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/byazt/qk/tt;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/byazt/ui/UpieImageView$4;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
