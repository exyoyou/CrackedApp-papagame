.class public final synthetic Lcom/join/mgps/customview/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/customview/SegmentSelectorView;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/customview/SegmentSelectorView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/m0;->b:Lcom/join/mgps/customview/SegmentSelectorView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/m0;->b:Lcom/join/mgps/customview/SegmentSelectorView;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/SegmentSelectorView;->a(Lcom/join/mgps/customview/SegmentSelectorView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
