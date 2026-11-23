.class Lcom/join/mgps/activity/ForumPostsActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

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
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->postFuncSort()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1100(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostReport()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->doForumPostFavorite()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 34
    .line 35
    const v0, 0x7f0a05ce

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1202(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1300(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_6
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 48
    .line 49
    const v0, 0x7f0a05cb

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1202(Lcom/join/mgps/activity/ForumPostsActivity;I)I

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1300(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1400(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$f;->b:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/join/mgps/activity/ForumPostsActivity;->access$1400(Lcom/join/mgps/activity/ForumPostsActivity;)Lcom/join/mgps/activity/ForumPostsActivity$a0;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x7f0a108a
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
