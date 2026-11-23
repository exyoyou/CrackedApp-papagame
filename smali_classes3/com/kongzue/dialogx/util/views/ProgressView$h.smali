.class Lcom/kongzue/dialogx/util/views/ProgressView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/ProgressView;->error()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/views/ProgressView;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView$h;->b:Lcom/kongzue/dialogx/util/views/ProgressView;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView$h;->b:Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 2
    .line 3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 4
    .line 5
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-static {v0, v2, v1}, Lcom/kongzue/dialogx/util/views/ProgressView;->h(Lcom/kongzue/dialogx/util/views/ProgressView;ILandroid/view/animation/Interpolator;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
