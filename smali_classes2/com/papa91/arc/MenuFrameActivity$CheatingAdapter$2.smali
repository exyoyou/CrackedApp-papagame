.class Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->initializeVipView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->val$i:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_2

    .line 8
    .line 9
    sget p1, Lorg/ppsspp/ppsspp/NativeActivity;->m_VIP:I

    .line 10
    .line 11
    if-lez p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 14
    .line 15
    iget p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->val$i:I

    .line 23
    .line 24
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->cheatEnable(II)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    .line 28
    .line 29
    iput p1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/papa91/arc/MenuFrameActivity;->goCheatingVip()V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$2;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method
