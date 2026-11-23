.class Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->success()V
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
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->h(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->i(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 14
    .line 15
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->j(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;Landroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView$c;->b:Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;->k(Lcom/kongzue/dialogx/util/views/NoArticulatedProgressView;I)I

    .line 27
    .line 28
    .line 29
    return-void
.end method
