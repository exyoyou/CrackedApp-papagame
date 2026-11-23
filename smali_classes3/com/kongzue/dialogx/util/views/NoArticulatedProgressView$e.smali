.class Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->error()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->h(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->i(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 14
    .line 15
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 16
    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$e;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->k(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I

    .line 29
    .line 30
    .line 31
    return-void
.end method
