.class public final Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;
.super Lcom/join/mgps/base/decoration/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/zone/CommonZoneActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/zone/CommonZoneActivity$initView$2$1",
        "Lcom/join/mgps/base/decoration/GridDecoration;",
        "getItemOffsets",
        "Lcom/join/mgps/base/decoration/GridDecoration$Decoration;",
        "position",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

.field final synthetic this$0:Lcom/join/kotlin/zone/CommonZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/zone/CommonZoneActivity;Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;->this$0:Lcom/join/kotlin/zone/CommonZoneActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/a$b;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;->this$0:Lcom/join/kotlin/zone/CommonZoneActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/zone/CommonZoneActivity;->getCommonZoneAdapter()Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    const v4, 0x7f07133d

    .line 16
    .line 17
    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    if-eq v0, v5, :cond_2

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    if-eq v0, v5, :cond_2

    .line 27
    .line 28
    const/4 v5, 0x6

    .line 29
    if-eq v0, v5, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/join/mgps/base/decoration/a$a;

    .line 32
    .line 33
    invoke-direct {v0, v3}, Lcom/join/mgps/base/decoration/a$a;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/decoration/a;->isLeft(I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const v5, 0x7f0711b5

    .line 41
    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    float-to-int v2, v2

    .line 54
    iput v2, v0, Lcom/join/mgps/base/decoration/a$b;->c:I

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    float-to-int v1, v1

    .line 65
    iput v1, v0, Lcom/join/mgps/base/decoration/a$b;->d:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/join/mgps/base/decoration/a;->isRight(II)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    float-to-int v2, v2

    .line 83
    iput v2, v0, Lcom/join/mgps/base/decoration/a$b;->c:I

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    float-to-int v1, v1

    .line 94
    iput v1, v0, Lcom/join/mgps/base/decoration/a$b;->d:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    float-to-int v2, v2

    .line 106
    iput v2, v0, Lcom/join/mgps/base/decoration/a$b;->c:I

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    float-to-int v1, v1

    .line 117
    iput v1, v0, Lcom/join/mgps/base/decoration/a$b;->d:I

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    new-instance v0, Lcom/join/mgps/base/decoration/a$a;

    .line 121
    .line 122
    invoke-direct {v0, v2}, Lcom/join/mgps/base/decoration/a$a;-><init>(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    float-to-int v2, v2

    .line 134
    iput v2, v0, Lcom/join/mgps/base/decoration/a$b;->c:I

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    float-to-int v1, v1

    .line 145
    iput v1, v0, Lcom/join/mgps/base/decoration/a$b;->d:I

    .line 146
    .line 147
    :goto_0
    const/4 v1, 0x0

    .line 148
    iput v1, v0, Lcom/join/mgps/base/decoration/a$a;->h:I

    .line 149
    .line 150
    const v1, 0x7f071293

    .line 151
    .line 152
    .line 153
    if-nez p1, :cond_3

    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    float-to-int p1, p1

    .line 166
    iput p1, v0, Lcom/join/mgps/base/decoration/a$b;->e:I

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    float-to-int p1, p1

    .line 180
    iput p1, v0, Lcom/join/mgps/base/decoration/a$b;->e:I

    .line 181
    .line 182
    :goto_1
    iget-object p1, p0, Lcom/join/kotlin/zone/CommonZoneActivity$initView$2$1;->$this_apply:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    float-to-int p1, p1

    .line 193
    iput p1, v0, Lcom/join/mgps/base/decoration/a$b;->f:I

    .line 194
    .line 195
    return-object v0
.end method
