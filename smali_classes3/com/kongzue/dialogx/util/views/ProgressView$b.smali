.class Lcom/kongzue/dialogx/util/views/ProgressView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/util/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/ProgressView;->p(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/util/views/ProgressView;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/ProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView$b;->a:Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView$b;->a:Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/ProgressView$b;->a:Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/util/views/ProgressView;->f(Lcom/kongzue/dialogx/util/views/ProgressView;F)F

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/ProgressView$b;->a:Lcom/kongzue/dialogx/util/views/ProgressView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
