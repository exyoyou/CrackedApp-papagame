.class Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$b;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$b;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$b;->b:Landroid/view/View;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d$b;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$d;->c:Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
