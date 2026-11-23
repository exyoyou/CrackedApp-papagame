.class Lcom/join/mgps/activity/posting/PostingActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/posting/PostingActivity$n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->initHListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "path"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/join/mgps/activity/posting/PostingActivity;->mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/posting/PostingActivity$n;->d(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->mPicsAdapter:Lcom/join/mgps/activity/posting/PostingActivity$n;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lnet/bither/util/b;->p()Lnet/bither/util/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, p2, v1}, Lnet/bither/util/b;->j(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->mSelectedImages:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lez p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$b;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->posts_pic_hlist:Lit/sephiroth/android/library/widget/HListView;

    .line 59
    .line 60
    const/16 p2, 0x8

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
