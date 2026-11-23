.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$500(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$200(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, -0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$100(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 27
    .line 28
    invoke-static {p1, v1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$102(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$100(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->access$102(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;I)I

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$b;->b:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
