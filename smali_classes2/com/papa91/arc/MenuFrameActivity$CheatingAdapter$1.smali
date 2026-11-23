.class Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Landroidx/constraintlayout/widget/Group;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

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
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    .line 10
    .line 11
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->deleteEditCheat(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->access$000(Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->cheatingAdapter:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 42
    .line 43
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->showModifyCheatDialog(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 54
    .line 55
    iget-boolean p1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 56
    .line 57
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$i:I

    .line 58
    .line 59
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->enableEidtCheat(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 63
    .line 64
    iget-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 65
    .line 66
    xor-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    iput-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 69
    .line 70
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$CheatingAdapter;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method
