.class public abstract Lcom/haima/hmcp/virtual/views/HmVirtualOperatorViewBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract consumeThisEvent(Landroid/view/MotionEvent;)Z
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method protected abstract init()V
.end method

.method public performGuide(I)V
    .locals 0

    return-void
.end method

.method public abstract reSet()V
.end method

.method public abstract selectVirtualView(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
.end method

.method public abstract setOperateListener(Lcom/haima/hmcp/virtual/listeners/OperateListener;)V
.end method

.method public setResetEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setShowGuide(Z)V
    .locals 0

    return-void
.end method

.method public abstract setVirType(I)V
.end method
