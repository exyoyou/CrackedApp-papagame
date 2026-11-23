.class Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->val$position:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/io/Serializable;

    .line 13
    .line 14
    const-string v1, "datas"

    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->val$position:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->position(I)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 38
    .line 39
    iget v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->pn(I)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->gameId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 58
    .line 59
    iget v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->typeId:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->typeId(I)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Landroid/os/Bundle;)Lorg/androidannotations/api/builder/e;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 72
    .line 73
    .line 74
    return-void
.end method
