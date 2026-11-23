.class Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/UsercenterFragmentNew;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->goLogin()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/login/UsercenterFragmentNew$5;->this$0:Lcom/join/mgps/activity/login/UsercenterFragmentNew;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/activity/login/UsercenterFragmentNew;->access$100(Lcom/join/mgps/activity/login/UsercenterFragmentNew;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/CommentSelfListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
