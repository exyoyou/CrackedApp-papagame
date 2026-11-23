.class public Lcom/byazt/ouz/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/tt;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/tt$1;->c:Lcom/byazt/ouz/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/ouz/tt$1;->c:Lcom/byazt/ouz/tt;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/ouz/tt;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/ouz/tt$1;->c:Lcom/byazt/ouz/tt;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/byazt/ouz/tt;->getMaterialMeta()Lcom/byazt/ete/ic;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/byazt/ouz/tt;->c(Lcom/byazt/vo/tt;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
