.class Lcom/join/mgps/activity/CommentDetailActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->initHeadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$r;->b:Lcom/join/mgps/activity/CommentDetailActivity;

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
    new-instance p1, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$r;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$200(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f13017f

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u81ea\u5df1\u7684\u70b9\u8bc4\uff1f"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "\u786e\u5b9a"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "\u53d6\u6d88"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "\u63d0\u793a"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$r$a;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity$r$a;-><init>(Lcom/join/mgps/activity/CommentDetailActivity$r;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
