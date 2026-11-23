.class public final synthetic Lcom/kongzue/dialogx/dialogs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/kongzue/dialogx/dialogs/d$e;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/kongzue/dialogx/dialogs/d$e;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/e;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    iput p2, p0, Lcom/kongzue/dialogx/dialogs/e;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/e;->b:Lcom/kongzue/dialogx/dialogs/d$e;

    iget v1, p0, Lcom/kongzue/dialogx/dialogs/e;->c:I

    invoke-static {v0, v1, p1}, Lcom/kongzue/dialogx/dialogs/d$e;->c(Lcom/kongzue/dialogx/dialogs/d$e;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
