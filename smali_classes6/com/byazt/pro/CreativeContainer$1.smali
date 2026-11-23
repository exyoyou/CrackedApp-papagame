.class public Lcom/byazt/pro/CreativeContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pro/EffectView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc7,
        0x75a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pro/CreativeContainer;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pro/CreativeContainer;


# direct methods
.method public constructor <init>(Lcom/byazt/pro/CreativeContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    invoke-static {v0}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/ui/UpieImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    invoke-static {v0}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/ui/UpieImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    invoke-static {p1}, Lcom/byazt/pro/CreativeContainer;->tt(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/pro/EffectView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    invoke-static {p1}, Lcom/byazt/pro/CreativeContainer;->tt(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/pro/EffectView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/pro/CreativeContainer;Lcom/byazt/pro/EffectView;)Lcom/byazt/pro/EffectView;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    invoke-static {p1}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/ui/UpieImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/pro/CreativeContainer$1;->c:Lcom/byazt/pro/CreativeContainer;

    invoke-static {p1}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/pro/CreativeContainer;)Lcom/byazt/ui/UpieImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
