.class Lcom/join/mgps/activity/s2$m;
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
.field final synthetic b:Lcom/join/mgps/activity/s2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/s2;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/s2$m;->b:Lcom/join/mgps/activity/s2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/s2$m;->b:Lcom/join/mgps/activity/s2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/s2;->X:Landroid/widget/RelativeLayout;

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
    iget-object v2, p0, Lcom/join/mgps/activity/s2$m;->b:Lcom/join/mgps/activity/s2;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f071326

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
    iput v1, v0, Lcom/join/mgps/activity/s2;->V1:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/s2$m;->b:Lcom/join/mgps/activity/s2;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/join/mgps/activity/s2;->W:Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    iget v0, v0, Lcom/join/mgps/activity/s2;->V1:I

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
