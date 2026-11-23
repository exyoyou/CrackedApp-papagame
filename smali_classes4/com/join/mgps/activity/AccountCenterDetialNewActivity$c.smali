.class Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountCenterDetialNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field d:Lit/sephiroth/android/library/widget/HListView;

.field final synthetic e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;->e:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a05fe

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;->d:Lit/sephiroth/android/library/widget/HListView;

    .line 16
    .line 17
    return-void
.end method
