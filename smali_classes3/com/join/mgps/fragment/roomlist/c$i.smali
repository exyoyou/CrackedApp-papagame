.class Lcom/join/mgps/fragment/roomlist/c$i;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/roomlist/c;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$hSpaceHalf",
            "val$vSpaceHalf"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$i;->g:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->e:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/fragment/roomlist/c$i;->f:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    rem-int/lit8 p2, p2, 0x2

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->e:I

    .line 10
    .line 11
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->e:I

    .line 15
    .line 16
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    :goto_0
    iget p2, p0, Lcom/join/mgps/fragment/roomlist/c$i;->f:I

    .line 19
    .line 20
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 21
    .line 22
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    return-void
.end method
