.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollotionHlistAdapter"
.end annotation


# instance fields
.field recomDatabeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "recomDatabeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->recomDatabeans:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->recomDatabeans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d08b2

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 22
    .line 23
    invoke-direct {p3, v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a030a

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    iput-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;

    .line 46
    .line 47
    :goto_0
    const/4 v0, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    iget-object v1, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const v3, 0x7f0713ac

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const v3, 0x7f071310

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->recomDatabeans:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    .line 116
    .line 117
    iget-object v0, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 128
    .line 129
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 130
    .line 131
    .line 132
    iget-object p3, p3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollHolder;->cardImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 133
    .line 134
    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;

    .line 135
    .line 136
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;Lcom/join/mgps/dto/RecomDatabean;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    return-object p2
.end method
