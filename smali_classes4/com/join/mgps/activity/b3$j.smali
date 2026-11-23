.class Lcom/join/mgps/activity/b3$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3$j;->a:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/b3$j;->a:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->P2:Lcom/join/mgps/adapter/n1;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/n1;->a(I)Lcom/join/mgps/dto/ImageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ImageInfo;->isVideo()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/b3$j;->a:Lcom/join/mgps/activity/b3;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->a0(Lcom/join/mgps/activity/b3;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/b3$j;->a:Lcom/join/mgps/activity/b3;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/activity/b3;->pauseVideo()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/b3$j;->a:Lcom/join/mgps/activity/b3;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->m:Landroidx/viewpager/widget/ViewPager;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/b3$j;->a:Lcom/join/mgps/activity/b3;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->P2:Lcom/join/mgps/adapter/n1;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/n1;->c(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
