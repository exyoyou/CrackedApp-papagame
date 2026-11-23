.class Lcom/join/mgps/activity/SearchListActivity1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->initViewpagerAndTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->access$500(Lcom/join/mgps/activity/SearchListActivity1;Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/SearchListActivity1;->access$400(Lcom/join/mgps/activity/SearchListActivity1;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u6e38\u620f"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->iv_filter:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/join/mgps/activity/SearchListActivity1;->access$200(Lcom/join/mgps/activity/SearchListActivity1;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    sget-object v3, Lcom/papa/sim/statistic/Event;->clickChangeH5TabGame:Lcom/papa/sim/statistic/Event;

    .line 65
    .line 66
    invoke-virtual {v2, v3, v0, v1}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->iv_filter:Landroid/widget/ImageView;

    .line 73
    .line 74
    const/16 v2, 0x8

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$g;->a:Lcom/join/mgps/activity/SearchListActivity1;

    .line 95
    .line 96
    invoke-static {v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->access$500(Lcom/join/mgps/activity/SearchListActivity1;Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method
