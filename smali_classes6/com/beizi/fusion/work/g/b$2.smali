.class Lcom/beizi/fusion/work/g/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/internal/e/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/g/b;->aQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/g/b;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/g/b$2;->a:Lcom/beizi/fusion/work/g/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$2;->a:Lcom/beizi/fusion/work/g/b;

    const-string v1, "sdk custom error "

    const-string v2, "onBitmapLoadFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x18697

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/g/b;->b(Lcom/beizi/fusion/work/g/b;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/g/b$2;->a:Lcom/beizi/fusion/work/g/b;

    iget-object v1, v0, Lcom/beizi/fusion/work/g/a;->N:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/work/g/b;->c(Lcom/beizi/fusion/work/g/b;)Lcom/beizi/ad/e;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/beizi/ad/internal/c/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/beizi/ad/e;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/beizi/fusion/work/g/b;->a(Lcom/beizi/fusion/work/g/b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 2
    iget-object p1, p0, Lcom/beizi/fusion/work/g/b$2;->a:Lcom/beizi/fusion/work/g/b;

    invoke-virtual {p1}, Lcom/beizi/fusion/work/g/a;->aG()V

    return-void
.end method
