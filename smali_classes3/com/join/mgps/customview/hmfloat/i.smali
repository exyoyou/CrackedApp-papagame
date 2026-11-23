.class public final synthetic Lcom/join/mgps/customview/hmfloat/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/join/mgps/customview/hmfloat/j;


# direct methods
.method public synthetic constructor <init>(ILcom/join/mgps/customview/hmfloat/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/join/mgps/customview/hmfloat/i;->b:I

    iput-object p2, p0, Lcom/join/mgps/customview/hmfloat/i;->c:Lcom/join/mgps/customview/hmfloat/j;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/hmfloat/i;->b:I

    iget-object v1, p0, Lcom/join/mgps/customview/hmfloat/i;->c:Lcom/join/mgps/customview/hmfloat/j;

    invoke-static {v0, v1, p1}, Lcom/join/mgps/customview/hmfloat/j;->a(ILcom/join/mgps/customview/hmfloat/j;Landroid/animation/ValueAnimator;)V

    return-void
.end method
