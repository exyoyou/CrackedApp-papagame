.class Lcom/join/mgps/activity/ForumPostsActivity$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumPostsActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->rl_comment_count:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_send:Landroid/widget/Button;

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ForumPostsActivity;->showSystemKeyBoard(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->rl_comment_count:Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_star:Landroid/widget/Button;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$w;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/join/mgps/activity/ForumPostsActivity;->btn_chat_send:Landroid/widget/Button;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
