.class Lcom/join/mgps/activity/ForumProfileMessageActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumProfileMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "cid",
            "rid",
            "fromNickName"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setPid(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->setNickname(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    new-instance p2, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 15
    .line 16
    invoke-direct {p2}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setRid(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p4}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->setNickname(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Lcom/join/mgps/activity/ForumProfileMessageActivity;->getForumPostBean(I)Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p3, p1, v0, p2}, Lcom/join/mgps/Util/r0;->A0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ForumBean$ForumCommentBean;Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageActivity$a;->a:Lcom/join/mgps/activity/ForumProfileMessageActivity;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
