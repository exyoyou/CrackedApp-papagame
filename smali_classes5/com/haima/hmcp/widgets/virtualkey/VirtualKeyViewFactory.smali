.class public Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory$KeyType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createVirtualKeyView(Landroid/content/Context;Lcom/haima/hmcp/beans/PointCoord;)Lcom/haima/hmcp/widgets/virtualkey/BaseVirtualKeyView;
    .locals 1

    .line 1
    iget p1, p1, Lcom/haima/hmcp/beans/PointCoord;->type:I

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory$KeyType;->DIRECTION:Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory$KeyType;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyViewFactory$KeyType;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/virtualkey/DirectionKeyView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Lcom/haima/hmcp/widgets/virtualkey/NormalVirtualKeyView;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/haima/hmcp/widgets/virtualkey/NormalVirtualKeyView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method
