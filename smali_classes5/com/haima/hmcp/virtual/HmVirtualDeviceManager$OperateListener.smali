.class public interface abstract Lcom/haima/hmcp/virtual/HmVirtualDeviceManager$OperateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperateListener"
.end annotation


# virtual methods
.method public abstract onReset(I)V
.end method

.method public abstract onSave(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation
.end method
