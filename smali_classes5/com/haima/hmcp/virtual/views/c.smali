.class public final synthetic Lcom/haima/hmcp/virtual/views/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/c;->b:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/c;->b:Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;

    invoke-static {v0, p1}, Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;->e(Lcom/haima/hmcp/virtual/views/HmVirtualDrawer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
