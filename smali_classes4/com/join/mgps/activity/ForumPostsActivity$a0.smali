.class public Lcom/join/mgps/activity/ForumPostsActivity$a0;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a0"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field final synthetic c:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;Landroid/content/Context;Landroid/view/View;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "parent",
            "width",
            "height"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$a0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p3, p4, p5, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$a0;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/join/mgps/activity/ForumPostsActivity$a0;->b:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity$a0;->b()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/activity/ForumPostsActivity$a0;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private a()V
    .locals 0

    .line 1
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
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/mgps/activity/ForumPostsActivity$a0$a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/ForumPostsActivity$a0$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$a0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
