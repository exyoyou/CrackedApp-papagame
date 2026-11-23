.class Lcom/join/mgps/activity/ClassifyGameActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ClassifyGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appBarLayout",
            "verticalOffset"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    int-to-float v1, p2

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    mul-float v1, v1, v2

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-float p1, p1

    .line 19
    div-float/2addr v1, p1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object p2, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const v0, 0x7f07159f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-le p1, p2, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/join/mgps/activity/ClassifyGameActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$c;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/join/mgps/activity/ClassifyGameActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 54
    .line 55
    const/16 p2, 0x8

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
