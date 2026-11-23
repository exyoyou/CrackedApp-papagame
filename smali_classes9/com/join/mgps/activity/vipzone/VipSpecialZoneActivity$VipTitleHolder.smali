.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;
.super Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipTitleHolder"
.end annotation


# instance fields
.field line:Landroid/view/View;

.field more:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1767

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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->title:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a1087

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a0e61

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->line:Landroid/view/View;

    .line 36
    .line 37
    return-void
.end method
