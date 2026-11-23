.class Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "space"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;->space:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$SpacesItemDecoration;->space:I

    .line 2
    .line 3
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 6
    .line 7
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 8
    .line 9
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    return-void
.end method
