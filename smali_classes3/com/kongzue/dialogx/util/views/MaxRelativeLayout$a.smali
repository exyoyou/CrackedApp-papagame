.class Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->a(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->b(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->a(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sub-float/2addr v1, v2

    .line 30
    mul-float v1, v1, p1

    .line 31
    .line 32
    add-float/2addr v0, v1

    .line 33
    float-to-long v0, v0

    .line 34
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->c(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$a;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->c(Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;)Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    long-to-float v0, v0

    .line 49
    invoke-interface {p1, v0}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout$b;->a(F)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
