.class Lcom/join/mgps/activity/message/a$g$a;
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
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$g$a;->c:Lcom/join/mgps/activity/message/a$g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/message/a$g$a;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

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
    iget-object p1, p0, Lcom/join/mgps/activity/message/a$g$a;->c:Lcom/join/mgps/activity/message/a$g;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g$a;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getComment_id()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/message/a$g$a;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getRid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/message/a$g$a;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/activity/message/a;->Y(IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
