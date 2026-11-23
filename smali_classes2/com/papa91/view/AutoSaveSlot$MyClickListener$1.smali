.class Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSaveSlot$MyClickListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$000(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$100(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;->oneClick()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$000(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x2

    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$100(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;->doubleClick()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$200(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Landroid/os/Handler;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;->this$0:Lcom/papa91/view/AutoSaveSlot$MyClickListener;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1}, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->access$002(Lcom/papa91/view/AutoSaveSlot$MyClickListener;I)I

    .line 52
    .line 53
    .line 54
    return-void
.end method
