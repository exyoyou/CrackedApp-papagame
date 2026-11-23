.class public Lcom/byazt/xs/uj$2;
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
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xs/uj;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Landroid/widget/ImageView;IILcom/byazt/sa/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic tt:Lcom/byazt/xs/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/xs/uj;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xs/uj$2;->tt:Lcom/byazt/xs/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xs/uj$2;->c:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/byazt/xs/uj$2;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/xs/uj$2;->tt:Lcom/byazt/xs/uj;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/xs/uj$2;->c:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-static {v0, p1, v1}, Lcom/byazt/xs/uj;->c(Lcom/byazt/xs/uj;Lcom/byazt/yj/m;Landroid/widget/ImageView;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/xs/uj$2;->c:Landroid/widget/ImageView;

    .line 18
    .line 19
    new-instance v1, Lcom/byazt/xs/uj$2$1;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lcom/byazt/xs/uj$2$1;-><init>(Lcom/byazt/xs/uj$2;Lcom/byazt/yj/m;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
