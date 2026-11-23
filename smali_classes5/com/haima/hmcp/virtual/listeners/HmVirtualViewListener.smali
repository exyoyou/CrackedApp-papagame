.class public interface abstract Lcom/haima/hmcp/virtual/listeners/HmVirtualViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBtnMoveEvent(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
.end method

.method public abstract onBtnTouchEvent(ILjava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract onCheckBoxStateChanged(ZF)V
.end method

.method public abstract onClickListener(Lcom/haima/hmcp/virtual/views/HmBaseVirtualView;)V
.end method

.method public abstract onMouseTouchEvent(IIIII)V
.end method

.method public abstract onRockerTouchEvent(ILjava/util/List;IIIIFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$KeysDTO;",
            ">;IIIIFF)V"
        }
    .end annotation
.end method

.method public abstract onViewEdit()V
.end method
