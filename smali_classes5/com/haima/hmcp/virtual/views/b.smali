.class public final synthetic Lcom/haima/hmcp/virtual/views/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/virtual/views/b;->b:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/views/b;->b:Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;

    invoke-static {v0, p1}, Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;->a(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
