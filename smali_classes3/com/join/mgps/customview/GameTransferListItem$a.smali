.class Lcom/join/mgps/customview/GameTransferListItem$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/GameTransferListItem;->b(ILandroid/util/SparseArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/GameTransferListItem;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/GameTransferListItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->b:Lcom/join/mgps/customview/GameTransferListItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->b:Lcom/join/mgps/customview/GameTransferListItem;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->b:Lcom/join/mgps/customview/GameTransferListItem;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/customview/GameTransferListItem;->e:Landroid/widget/CheckBox;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/join/mgps/customview/GameTransferListItem;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "changeCheckboxStatus: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "\u4f4d\u7f6e"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->b:Lcom/join/mgps/customview/GameTransferListItem;

    .line 40
    .line 41
    iget v1, v1, Lcom/join/mgps/customview/GameTransferListItem;->i:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->b:Lcom/join/mgps/customview/GameTransferListItem;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/GameTransferBean;->setSelectedTransfer(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->b:Lcom/join/mgps/customview/GameTransferListItem;

    .line 54
    .line 55
    iget-object v0, p1, Lcom/join/mgps/customview/GameTransferListItem;->k:Landroid/util/SparseArray;

    .line 56
    .line 57
    iget v1, p1, Lcom/join/mgps/customview/GameTransferListItem;->i:I

    .line 58
    .line 59
    iget-object p1, p1, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/join/mgps/customview/GameTransferListItem$a;->b:Lcom/join/mgps/customview/GameTransferListItem;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/customview/GameTransferListItem;->h:Lcom/join/mgps/dto/GameTransferBean;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
