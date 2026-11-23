.class Lcom/join/mgps/activity/message/a$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/a$g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ForumProfileMessageBean;

.field final synthetic c:Lcom/join/mgps/activity/message/a$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bean3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$g$b;->c:Lcom/join/mgps/activity/message/a$g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/message/a$g$b;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

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
    new-instance p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g$b;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g$b;->c:Lcom/join/mgps/activity/message/a$g;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/activity/message/a$g;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/r0;->w0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
