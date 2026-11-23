.class Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 3
    .line 4
    invoke-static {p2}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 p4, 0x1

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 32
    .line 33
    .line 34
    const/4 p2, 0x2

    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    iget-object p3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 38
    .line 39
    invoke-static {p3}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p3, p4}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 47
    .line 48
    invoke-static {p3}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-ne p3, p4, :cond_2

    .line 57
    .line 58
    iget-object p3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 59
    .line 60
    invoke-static {p3}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p3, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 68
    .line 69
    invoke-static {p3}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    if-ne p3, p2, :cond_3

    .line 78
    .line 79
    iget-object p2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 80
    .line 81
    invoke-static {p2}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity$1;->a:Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;

    .line 89
    .line 90
    invoke-static {p2}, Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;->a(Lcom/beizi/ad/internal/activity/BeiZiDownloadDialogActivity;)Landroid/widget/ExpandableListView;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2, p4}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_0
    return p4

    .line 98
    :catch_0
    move-exception p2

    .line 99
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    return p1
.end method
