.class public final Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/o;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudAssetRecordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudAssetRecordActivity.kt\ncom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1563#2:96\n1634#2,3:97\n*S KotlinDebug\n*F\n+ 1 CloudAssetRecordActivity.kt\ncom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity\n*L\n56#1:96\n56#1:97,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u001cH\u0016R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR*\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCloudAssetRecordBinding;",
        "<init>",
        "()V",
        "tabs",
        "",
        "Lcom/join/kotlin/ui/findgame/data/TagData;",
        "getTabs",
        "()Ljava/util/List;",
        "setTabs",
        "(Ljava/util/List;)V",
        "fragments",
        "Ljava/util/ArrayList;",
        "Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;",
        "Lkotlin/collections/ArrayList;",
        "getFragments",
        "()Ljava/util/ArrayList;",
        "setFragments",
        "(Ljava/util/ArrayList;)V",
        "parentExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getParentExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setParentExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createObserver",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCloudAssetRecordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudAssetRecordActivity.kt\ncom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1563#2:96\n1634#2,3:97\n*S KotlinDebug\n*F\n+ 1 CloudAssetRecordActivity.kt\ncom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity\n*L\n56#1:96\n56#1:97,3\n*E\n"
    }
.end annotation


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentExtBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 6
    .line 7
    new-instance v2, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 8
    .line 9
    const-string v3, "\u65f6\u957f"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-direct {v2, v4, v3}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    new-instance v2, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 19
    .line 20
    const-string v3, "\u4e91\u94bb"

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    invoke-direct {v2, v5, v3}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    aput-object v2, v1, v4

    .line 27
    .line 28
    new-instance v2, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 29
    .line 30
    const-string v3, "\u4e91\u5e01"

    .line 31
    .line 32
    const/4 v4, 0x3

    .line 33
    invoke-direct {v2, v4, v3}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    aput-object v2, v1, v5

    .line 37
    .line 38
    new-instance v2, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 39
    .line 40
    const-string v3, "\u9053\u5177"

    .line 41
    .line 42
    invoke-direct {v2, v0, v3}, Lcom/join/kotlin/ui/findgame/data/TagData;-><init>(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    aput-object v2, v1, v4

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->tabs:Ljava/util/List;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 59
    .line 60
    return-void
.end method

.method private static final initView$lambda$0(Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->initView$lambda$0(Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public final getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->tabs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/o;->n(Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/o;->d:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/CharSequence;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/o;->b:Landroid/widget/ImageView;

    .line 50
    .line 51
    new-instance v0, Lcom/join/kotlin/ui/hmcloud/activity/a;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/hmcloud/activity/a;-><init>(Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "parentExtBean"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/dto/ExtBean;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v1, "position"

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 85
    .line 86
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    .line 87
    .line 88
    invoke-direct {v2}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v3, Landroid/os/Bundle;

    .line 92
    .line 93
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    const-string v5, "_type"

    .line 98
    .line 99
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 103
    .line 104
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 114
    .line 115
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    .line 116
    .line 117
    invoke-direct {v2}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v3, Landroid/os/Bundle;

    .line 121
    .line 122
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 123
    .line 124
    .line 125
    const/4 v4, 0x2

    .line 126
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 130
    .line 131
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 141
    .line 142
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v3, Landroid/os/Bundle;

    .line 148
    .line 149
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x3

    .line 153
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 157
    .line 158
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 168
    .line 169
    new-instance v2, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    .line 170
    .line 171
    invoke-direct {v2}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;-><init>()V

    .line 172
    .line 173
    .line 174
    new-instance v3, Landroid/os/Bundle;

    .line 175
    .line 176
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 177
    .line 178
    .line 179
    const/4 v4, 0x4

    .line 180
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    iget-object v5, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 184
    .line 185
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->tabs:Ljava/util/List;

    .line 195
    .line 196
    check-cast v0, Ljava/lang/Iterable;

    .line 197
    .line 198
    new-instance v1, Ljava/util/ArrayList;

    .line 199
    .line 200
    const/16 v2, 0xa

    .line 201
    .line 202
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eqz v2, :cond_0

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Lcom/join/kotlin/ui/findgame/data/TagData;

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/join/kotlin/ui/findgame/data/TagData;->getTitle()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/o;->e:Landroidx/viewpager/widget/ViewPager;

    .line 240
    .line 241
    new-instance v2, Lcom/join/mgps/customview/e0;

    .line 242
    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    iget-object v5, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v2, v3, v5, v1}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/o;->c:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 265
    .line 266
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 271
    .line 272
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/o;->e:Landroidx/viewpager/widget/ViewPager;

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 282
    .line 283
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/o;->e:Landroidx/viewpager/widget/ViewPager;

    .line 284
    .line 285
    new-instance v1, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity$initView$7;

    .line 286
    .line 287
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity$initView$7;-><init>(Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/o;->e:Landroidx/viewpager/widget/ViewPager;

    .line 300
    .line 301
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/o;

    .line 309
    .line 310
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/o;->e:Landroidx/viewpager/widget/ViewPager;

    .line 311
    .line 312
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    .line 322
    .line 323
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->onPageSelected(I)V

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method public final setFragments(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->fragments:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setParentExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->parentExtBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabs(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/kotlin/ui/findgame/data/TagData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/activity/CloudAssetRecordActivity;->tabs:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
