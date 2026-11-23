.class public Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kongzue/dialogx/util/views/FitSystemBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 3
    iput p2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 4
    iput p3, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 5
    iput p4, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    iput v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 8
    iget v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    iput v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 9
    iget v0, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    iput v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 10
    iget p1, p1, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    iput p1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->a:I

    .line 7
    .line 8
    iget v1, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->b:I

    .line 9
    .line 10
    iget v2, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->c:I

    .line 11
    .line 12
    iget v3, p0, Lcom/kongzue/dialogx/util/views/FitSystemBarUtils$h;->d:I

    .line 13
    .line 14
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
