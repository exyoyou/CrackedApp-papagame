.class public Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigDTO"
.end annotation


# instance fields
.field private centerToBoundaryScale:F
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "center_to_boundary_scale"
    .end annotation
.end field

.field private default_layout:Ljava/lang/String;

.field public drawerList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drawer_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation
.end field

.field public volatile drawerSelectedBorderColor:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "drawerkey_selected_border_color"
    .end annotation
.end field

.field public volatile pic_common_bg_selected:Ljava/lang/String;

.field private volatile pic_common_bg_selected_MD5:Ljava/lang/String;

.field private volatile pic_common_bg_selected_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_common_bg_selected_url"
    .end annotation
.end field

.field public volatile pic_common_bg_unselected:Ljava/lang/String;

.field private volatile pic_common_bg_unselected_MD5:Ljava/lang/String;

.field private volatile pic_common_bg_unselected_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_common_bg_unselected_url"
    .end annotation
.end field

.field public volatile pic_common_drawer_bg_selected:Ljava/lang/String;

.field public volatile pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

.field public volatile pic_common_drawer_bg_selected_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_common_drawer_bg_selected_url"
    .end annotation
.end field

.field public volatile pic_common_drawer_bg_unselected:Ljava/lang/String;

.field public volatile pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

.field public volatile pic_common_drawer_bg_unselected_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_common_drawer_bg_unselected_url"
    .end annotation
.end field

.field public volatile pic_common_drawer_icon:Ljava/lang/String;

.field public volatile pic_common_drawer_icon_MD5:Ljava/lang/String;

.field public volatile pic_common_drawer_icon_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_common_drawer_icon_url"
    .end annotation
.end field

.field public volatile pic_rocker_center:Ljava/lang/String;

.field private volatile pic_rocker_center_MD5:Ljava/lang/String;

.field private volatile pic_rocker_center_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_rocker_center_url"
    .end annotation
.end field

.field public volatile pic_rocker_direction:Ljava/lang/String;

.field private volatile pic_rocker_direction_MD5:Ljava/lang/String;

.field private volatile pic_rocker_direction_url:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pic_rocker_direction_url"
    .end annotation
.end field

.field private xbox_alpha:F

.field private xbox_joystick_center_reset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_alpha:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_joystick_center_reset:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public copy()Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;
    .locals 4

    .line 1
    new-instance v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->default_layout:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->default_layout:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_alpha:F

    .line 11
    .line 12
    iput v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_alpha:F

    .line 13
    .line 14
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_joystick_center_reset:I

    .line 15
    .line 16
    iput v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_joystick_center_reset:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_MD5:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_MD5:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_url:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_url:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_MD5:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_MD5:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_url:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_url:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_MD5:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_MD5:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_url:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_url:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_MD5:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_MD5:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_url:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_url:Ljava/lang/String;

    .line 65
    .line 66
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->centerToBoundaryScale:F

    .line 67
    .line 68
    iput v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->centerToBoundaryScale:F

    .line 69
    .line 70
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 107
    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    iput-object v1, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_0

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 140
    .line 141
    iget-object v3, v0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;->copy()Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    return-object v0
.end method

.method public getCenterToBoundaryScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->centerToBoundaryScale:F

    .line 2
    .line 3
    return v0
.end method

.method public getDefault_layout()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->default_layout:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_bg_selected()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_bg_selected_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_bg_selected_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_bg_unselected()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_bg_unselected_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_bg_unselected_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_bg_selected()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_bg_selected_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_bg_selected_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_bg_unselected()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_bg_unselected_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_bg_unselected_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_icon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_icon_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_common_drawer_icon_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_rocker_center()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_rocker_center_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_rocker_center_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_rocker_direction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_rocker_direction_MD5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPic_rocker_direction_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXbox_alpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_alpha:F

    .line 2
    .line 3
    return v0
.end method

.method public getXbox_joystick_center_reset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_joystick_center_reset:I

    .line 2
    .line 3
    return v0
.end method

.method public setCenterToBoundaryScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->centerToBoundaryScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setDefault_layout(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->default_layout:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->drawerList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_bg_selected_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_bg_selected_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_selected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_bg_unselected_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_bg_unselected_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_bg_unselected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_bg_selected(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_bg_selected_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_bg_selected_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_selected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_bg_unselected(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_bg_unselected_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_bg_unselected_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_bg_unselected_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_icon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_icon_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_common_drawer_icon_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_common_drawer_icon_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_rocker_center_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_rocker_center_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_center_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_rocker_direction_MD5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_MD5:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPic_rocker_direction_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->pic_rocker_direction_url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setXbox_alpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_alpha:F

    .line 2
    .line 3
    return-void
.end method

.method public setXbox_joystick_center_reset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualLayoutBean$ConfigDTO;->xbox_joystick_center_reset:I

    .line 2
    .line 3
    return-void
.end method
