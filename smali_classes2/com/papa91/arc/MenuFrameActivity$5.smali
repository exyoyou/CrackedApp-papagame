.class Lcom/papa91/arc/MenuFrameActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/MenuFrameActivity;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/MenuFrameActivity;

.field final synthetic val$i:I

.field final synthetic val$id:I

.field final synthetic val$slot:Lcom/papa91/arc/bean/Slot;


# direct methods
.method constructor <init>(Lcom/papa91/arc/MenuFrameActivity;IILcom/papa91/arc/bean/Slot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$id:I

    .line 4
    .line 5
    iput p3, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$i:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->dialogExit:Landroid/app/Dialog;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$id:I

    .line 11
    .line 12
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/papa91/arc/MenuFrameActivity;->slots:Ljava/util/List;

    .line 19
    .line 20
    iget v0, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$i:I

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa91/arc/MenuFrameActivity;->notifySlotChanged()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->delSlot(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->save:I

    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "file://"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/h;->h(Landroid/net/Uri;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/h;->f(Landroid/net/Uri;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/h;->e(Landroid/net/Uri;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/papa91/arc/bean/Slot;->getId()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/papa91/arc/MenuFrameActivity;->saveSlot(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->load:I

    .line 99
    .line 100
    if-ne p1, v0, :cond_3

    .line 101
    .line 102
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->this$0:Lcom/papa91/arc/MenuFrameActivity;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/papa91/arc/MenuFrameActivity;->dismiss()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/papa91/arc/MenuFrameActivity$5;->val$slot:Lcom/papa91/arc/bean/Slot;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/papa91/arc/bean/Slot;->getPath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->loadState(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    return-void
.end method
