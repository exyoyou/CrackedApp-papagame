.class Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountCenterDetialNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field final synthetic h:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->h:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a177f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a0e6e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->g:Landroid/view/View;

    .line 25
    .line 26
    const p1, 0x7f0a0fa1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->e:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const p1, 0x7f0a0e17

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;->f:Landroid/view/View;

    .line 45
    .line 46
    return-void
.end method
