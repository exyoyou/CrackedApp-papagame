.class public Lcom/byazt/ouz/NativeExpressView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x5b2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/NativeExpressView;->tt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/ouz/NativeExpressView;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/NativeExpressView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView$2;->tt:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/ouz/NativeExpressView$2;->c:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView$2;->tt:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ouz/NativeExpressView;->n(Lcom/byazt/ouz/NativeExpressView;)Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView$2;->tt:Lcom/byazt/ouz/NativeExpressView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ouz/NativeExpressView;->n(Lcom/byazt/ouz/NativeExpressView;)Landroid/widget/FrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView$2;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x8

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method
