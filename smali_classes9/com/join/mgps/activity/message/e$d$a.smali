.class Lcom/join/mgps/activity/message/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/e$d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

.field final synthetic c:Lcom/join/mgps/activity/message/e$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/e$d;Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/e$d$a;->c:Lcom/join/mgps/activity/message/e$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/message/e$d$a;->b:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

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
    iget-object p1, p0, Lcom/join/mgps/activity/message/e$d$a;->c:Lcom/join/mgps/activity/message/e$d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/message/e$d;->b:Lcom/join/mgps/activity/message/e;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d$a;->b:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getJump_info()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->getSub()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/message/e$d$a;->b:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getJump_info()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->getSub()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;->getLink_type()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/message/e;->R(Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
