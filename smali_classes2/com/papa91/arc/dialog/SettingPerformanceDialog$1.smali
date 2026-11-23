.class Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/view/OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingPerformanceDialog;->initPerformanceViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingPerformanceDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/papa91/arc/util/GameSettings;->setCustomSettingEnable(Z)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 22
    .line 23
    iget v2, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 24
    .line 25
    if-ltz v2, :cond_1

    .line 26
    .line 27
    if-le v2, v1, :cond_2

    .line 28
    .line 29
    :cond_1
    iput v0, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 30
    .line 31
    :cond_2
    iget-object v0, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 32
    .line 33
    iget p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tmpPerformance:I

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->advanced:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingPerformanceDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->tlPerformance:Lcom/papa91/arc/view/SegmentTabLayout;

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/SegmentTabLayout;->setCurrentTab(I)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method
