.class Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

.field final synthetic val$i:I

.field final synthetic val$slot:Lcom/papa91/arc/bean/Slot;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;Lcom/papa91/arc/bean/Slot;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$slot:Lcom/papa91/arc/bean/Slot;

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$i:I

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->this$1:Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$slot:Lcom/papa91/arc/bean/Slot;

    .line 10
    .line 11
    iget v2, p0, Lcom/papa91/arc/MenuFrameActivity$SlotAdapter$1;->val$i:I

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2}, Lcom/papa91/arc/MenuFrameActivity;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
