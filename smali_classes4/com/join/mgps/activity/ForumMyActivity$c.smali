.class Lcom/join/mgps/activity/ForumMyActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/noties/scrollable/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumMyActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumMyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumMyActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumMyActivity$c;->b:Lcom/join/mgps/activity/ForumMyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public C(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "y",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumMyActivity$c;->b:Lcom/join/mgps/activity/ForumMyActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ForumMyActivity;->expandableListView:Lcom/join/mgps/customview/XExpandableListView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    long-to-int p3, p2

    .line 8
    invoke-virtual {v0, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
