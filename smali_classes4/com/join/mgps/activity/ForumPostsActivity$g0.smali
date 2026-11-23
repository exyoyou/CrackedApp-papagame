.class Lcom/join/mgps/activity/ForumPostsActivity$g0;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g0"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$g0;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "mContext",
            "width",
            "height"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->d:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 6
    invoke-direct {p0, p3, p4}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 7
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$g0;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$g0$c;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$g0$c;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$g0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d07e1

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f0a0eec

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/LinearLayout;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->b:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    const v1, 0x7f0a0f19

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->c:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->b:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$g0$a;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$g0$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$g0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$g0;->c:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    new-instance v1, Lcom/join/mgps/activity/ForumPostsActivity$g0$b;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$g0$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$g0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity$g0;->b()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
