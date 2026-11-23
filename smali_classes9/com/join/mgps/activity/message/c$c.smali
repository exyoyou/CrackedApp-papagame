.class Lcom/join/mgps/activity/message/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/c;->a0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/message/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/c;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$c;->b:Lcom/join/mgps/activity/message/c;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$c;->b:Lcom/join/mgps/activity/message/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/message/c;->v:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$c;->b:Lcom/join/mgps/activity/message/c;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/message/c;->v:Landroid/widget/PopupWindow;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$c;->b:Lcom/join/mgps/activity/message/c;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p1, Lcom/join/mgps/activity/message/c;->q:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method
