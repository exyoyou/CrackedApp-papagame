.class public Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;
.super Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderAppItem"
.end annotation


# instance fields
.field public appSize:Landroid/widget/TextView;

.field public describe:Landroid/widget/TextView;

.field dv_view:Lcom/join/mgps/customview/DownloadNormalView;

.field giftPackageSwich:Landroid/widget/ImageView;

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field line:Landroid/view/View;

.field linearLayout2:Landroid/widget/LinearLayout;

.field public lodingInfo:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public progressBarZip:Landroid/widget/ProgressBar;

.field relateLayoutApp:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

.field tipsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V
    .locals 1
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
            "convertView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1044

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    const p1, 0x7f0a0790

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->giftPackageSwich:Landroid/widget/ImageView;

    .line 27
    .line 28
    const p1, 0x7f0a1042

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->name:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a1043

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->describe:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a0e73

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->linearLayout2:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const p1, 0x7f0a1764

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->tipsLayout:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const p1, 0x7f0a00f7

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    .line 82
    .line 83
    const p1, 0x7f0a0f94

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    .line 93
    .line 94
    const p1, 0x7f0a129e

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/ProgressBar;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    .line 104
    .line 105
    const p1, 0x7f0a12a5

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/ProgressBar;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    .line 115
    .line 116
    const v0, 0x7f0a054e

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 124
    .line 125
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->dv_view:Lcom/join/mgps/customview/DownloadNormalView;

    .line 126
    .line 127
    const v0, 0x7f0a135c

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->relateLayoutApp:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/widget/ProgressBar;

    .line 143
    .line 144
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    .line 145
    .line 146
    const p1, 0x7f0a0e61

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->line:Landroid/view/View;

    .line 154
    .line 155
    return-void
.end method
