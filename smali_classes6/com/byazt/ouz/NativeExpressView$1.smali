.class public Lcom/byazt/ouz/NativeExpressView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x5b1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ouz/NativeExpressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/NativeExpressView;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/NativeExpressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView$1;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView$1;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    const/16 v1, 0x39

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/ouz/NativeExpressView;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView$1;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/ouz/NativeExpressView;)Ljava/lang/Runnable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView$1;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/ouz/NativeExpressView;)Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-wide/16 v2, 0x1f4

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
