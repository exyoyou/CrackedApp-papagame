.class Lcom/kongzue/dialogx/util/views/ProgressView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/ProgressView;->q(ILandroid/view/animation/Interpolator;)V
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
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView$i;->b:Lcom/kongzue/dialogx/util/views/ProgressView;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView$i;->b:Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/ProgressView;->i(Lcom/kongzue/dialogx/util/views/ProgressView;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/ProgressView$i;->b:Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/ProgressView;->j(Lcom/kongzue/dialogx/util/views/ProgressView;)Landroid/view/animation/Interpolator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/util/views/ProgressView;->h(Lcom/kongzue/dialogx/util/views/ProgressView;ILandroid/view/animation/Interpolator;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
