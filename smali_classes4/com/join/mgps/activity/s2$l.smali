.class Lcom/join/mgps/activity/s2$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/s2;->H0(Lcom/join/mgps/dto/GamedetialModleFourBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic c:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic d:Lcom/join/mgps/activity/s2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/s2;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$lp",
            "val$lp1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/s2$l;->d:Lcom/join/mgps/activity/s2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/s2$l;->b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/s2$l;->c:Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/s2$l;->d:Lcom/join/mgps/activity/s2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/s2;->V:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/s2$l;->d:Lcom/join/mgps/activity/s2;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f0713ee

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-float/2addr v1, v2

    .line 26
    float-to-int v1, v1

    .line 27
    iput v1, v0, Lcom/join/mgps/activity/s2;->R1:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/s2$l;->b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/s2$l;->d:Lcom/join/mgps/activity/s2;

    .line 32
    .line 33
    iget v2, v1, Lcom/join/mgps/activity/s2;->R1:I

    .line 34
    .line 35
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/activity/s2$l;->c:Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 41
    .line 42
    iget-object v1, v1, Lcom/join/mgps/activity/s2;->o:Landroidx/viewpager/widget/ViewPager;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
