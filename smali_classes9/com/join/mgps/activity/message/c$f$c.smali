.class Lcom/join/mgps/activity/message/c$f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/c$f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

.field final synthetic c:Lcom/join/mgps/activity/message/c$f;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/c$f;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bean4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$f$c;->c:Lcom/join/mgps/activity/message/c$f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/message/c$f$c;->b:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

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
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$f$c;->c:Lcom/join/mgps/activity/message/c$f;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f$c;->b:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/message/c;->a0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
