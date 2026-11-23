.class public Lcom/join/mgps/activity/PapaMainV3Fragment;
.super Lcom/join/mgps/Util/z0$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PapaMainV3Fragment$n;,
        Lcom/join/mgps/activity/PapaMainV3Fragment$o;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0722
.end annotation


# static fields
.field private static final u2:Ljava/lang/String; = "MGPapaMainFragmentNewV2"


# instance fields
.field A:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Lcom/join/mgps/adapter/o5;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MgpapaMainItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private F:I

.field private G:I

.field private H:J

.field private I:Z

.field J:Lcom/join/mgps/pref/f;

.field K:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field L:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field L1:I

.field private M:Z

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:I

.field private Q:I

.field R:Lcom/join/android/app/component/video/h;

.field R1:Z

.field S:Lcom/join/mgps/activity/MGMainActivity;

.field T:Lcom/join/kotlin/presenter/HomeViewModle;

.field private U:Ljava/lang/String;

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field private V1:Ljava/lang/String;

.field private W:Landroid/os/Handler;

.field private X:Z

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/lang/String;

.field a2:Lcom/join/mgps/customview/t;

.field private b1:I

.field private b2:I

.field private c2:I

.field private d2:I

.field e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private e2:I

.field f:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field private f1:Z

.field private f2:Lcom/join/mgps/dto/RecomDatabean;

.field g:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field private g2:Lcom/join/mgps/dto/RecomDatabean;

.field h:Lcom/join/mgps/rpc/e;

.field private h2:Ljava/lang/String;

.field i:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private i1:I

.field i2:J

.field j:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j2:J

.field k:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k2:Z

.field l:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private l1:Z

.field private l2:Z

.field m:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private m2:Landroid/util/SparseArray;

.field n:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n2:Landroid/view/GestureDetector;

.field o:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private o2:J

.field p:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/SScrollingTxtBeanV2;",
            ">;"
        }
    .end annotation
.end field

.field private p1:Z

.field private p2:I

.field q:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private q1:J

.field q2:Ljava/lang/Runnable;

.field r:Landroid/widget/ViewFlipper;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private r1:Z

.field private r2:Ljava/lang/String;

.field s:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private s2:Z

.field t:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private t2:Z

.field u:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/FragmentArg;
    .end annotation
.end field

.field private v:Landroid/content/Context;

.field private v1:Z

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/z0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->J:Lcom/join/mgps/pref/f;

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->M:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->N:Z

    .line 22
    .line 23
    const-string v2, "m1"

    .line 24
    .line 25
    iput-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 29
    .line 30
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q:I

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Y:Ljava/util/List;

    .line 42
    .line 43
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->L1:I

    .line 44
    .line 45
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1:Z

    .line 46
    .line 47
    const-string v0, "28"

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V1:Ljava/lang/String;

    .line 50
    .line 51
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->b2:I

    .line 52
    .line 53
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->c2:I

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h2:Ljava/lang/String;

    .line 58
    .line 59
    const-wide/16 v3, 0x0

    .line 60
    .line 61
    iput-wide v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i2:J

    .line 62
    .line 63
    iput-wide v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j2:J

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k2:Z

    .line 66
    .line 67
    iput-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l2:Z

    .line 68
    .line 69
    new-instance v0, Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m2:Landroid/util/SparseArray;

    .line 75
    .line 76
    new-instance v0, Landroid/view/GestureDetector;

    .line 77
    .line 78
    new-instance v1, Lcom/join/mgps/activity/PapaMainV3Fragment$b;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$b;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n2:Landroid/view/GestureDetector;

    .line 87
    .line 88
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment$c;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$c;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q2:Ljava/lang/Runnable;

    .line 94
    .line 95
    return-void
.end method

.method private A1(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recomDatabeens",
            "top",
            "moretype"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->j1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    new-instance v2, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 30
    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/join/mgps/dto/RecomDatabean;

    .line 43
    .line 44
    const/16 v4, 0xd

    .line 45
    .line 46
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/ModleBean;->setPic_remote(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModleBean;->getVedio_url()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v4, v3}, Lcom/join/mgps/dto/ModleBean;->setVedio_url(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v4, "x"

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    add-int/lit8 v4, v1, 0x1

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v4, "-"

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/4 v3, 0x3

    .line 138
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType(I)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setRecomDatabeanLeft(Lcom/join/mgps/business/RecomDatabeanBusiness;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->z1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V

    .line 154
    .line 155
    .line 156
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_2
    return-void
.end method

.method private F0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "0"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private H0()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 4
    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m2:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/join/mgps/activity/PapaMainV3Fragment$n;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget v2, v2, Lcom/join/mgps/activity/PapaMainV3Fragment$n;->a:I

    .line 18
    .line 19
    add-int/2addr v1, v2

    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m2:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/activity/PapaMainV3Fragment$n;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment$n;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$n;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget v0, v0, Lcom/join/mgps/activity/PapaMainV3Fragment$n;->b:I

    .line 39
    .line 40
    sub-int/2addr v1, v0

    .line 41
    return v1
.end method

.method private J1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 1
    move-object v13, p0

    .line 2
    iget v0, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 3
    .line 4
    if-ltz v0, :cond_9

    .line 5
    .line 6
    move v14, v0

    .line 7
    :goto_0
    iget v0, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->F:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iget-object v1, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/adapter/o5;->getItemCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-gt v14, v0, :cond_9

    .line 24
    .line 25
    iget-object v0, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 26
    .line 27
    invoke-virtual {v0, v14}, Lcom/join/mgps/adapter/o5;->u(I)Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0x1c

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eq v1, v2, :cond_5

    .line 43
    .line 44
    const/16 v2, 0x1d

    .line 45
    .line 46
    if-eq v1, v2, :cond_3

    .line 47
    .line 48
    packed-switch v1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :pswitch_0
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/List;

    .line 58
    .line 59
    iget-object v1, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 60
    .line 61
    iget v2, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 62
    .line 63
    sub-int v2, v14, v2

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    instance-of v2, v1, Lcom/join/mgps/adapter/o5$q;

    .line 76
    .line 77
    if-eqz v2, :cond_8

    .line 78
    .line 79
    check-cast v1, Lcom/join/mgps/adapter/o5$q;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    iget-object v1, v1, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/join/mgps/adapter/c3;

    .line 92
    .line 93
    if-eqz v1, :cond_8

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_8

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 116
    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_1

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_1

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v5, v4}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    if-eqz v4, :cond_1

    .line 160
    .line 161
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_3
    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    move-object v2, v0

    .line 181
    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 182
    .line 183
    iget-object v0, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 184
    .line 185
    iget v1, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 186
    .line 187
    sub-int v1, v14, v1

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v1, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 194
    .line 195
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    instance-of v1, v0, Lcom/join/mgps/adapter/o5$j;

    .line 200
    .line 201
    if-eqz v1, :cond_8

    .line 202
    .line 203
    check-cast v0, Lcom/join/mgps/adapter/o5$j;

    .line 204
    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_8

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_4

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_8

    .line 239
    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_8

    .line 257
    .line 258
    :cond_4
    iget-object v3, v0, Lcom/join/mgps/adapter/o5$j;->f:Landroid/widget/TextView;

    .line 259
    .line 260
    iget-object v4, v0, Lcom/join/mgps/adapter/o5$j;->l:Landroid/widget/TextView;

    .line 261
    .line 262
    iget-object v5, v0, Lcom/join/mgps/adapter/o5$j;->m:Landroid/widget/FrameLayout;

    .line 263
    .line 264
    iget-object v6, v0, Lcom/join/mgps/adapter/o5$j;->n:Landroid/widget/TextView;

    .line 265
    .line 266
    iget-object v7, v0, Lcom/join/mgps/adapter/o5$j;->g:Landroid/widget/LinearLayout;

    .line 267
    .line 268
    iget-object v8, v0, Lcom/join/mgps/adapter/o5$j;->h:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v9, v0, Lcom/join/mgps/adapter/o5$j;->i:Landroid/widget/TextView;

    .line 271
    .line 272
    iget-object v10, v0, Lcom/join/mgps/adapter/o5$j;->j:Landroid/widget/ProgressBar;

    .line 273
    .line 274
    iget-object v11, v0, Lcom/join/mgps/adapter/o5$j;->k:Landroid/widget/ProgressBar;

    .line 275
    .line 276
    iget-object v12, v0, Lcom/join/mgps/adapter/o5$j;->q:Landroid/widget/ProgressBar;

    .line 277
    .line 278
    move-object v1, p0

    .line 279
    invoke-direct/range {v1 .. v12}, Lcom/join/mgps/activity/PapaMainV3Fragment;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_5
    :pswitch_2
    :try_start_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    move-object v2, v0

    .line 294
    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 300
    .line 301
    iget v1, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 302
    .line 303
    sub-int v1, v14, v1

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-nez v0, :cond_6

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_6
    iget-object v1, v13, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 313
    .line 314
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    instance-of v1, v0, Lcom/join/mgps/adapter/o5$m;

    .line 319
    .line 320
    if-eqz v1, :cond_8

    .line 321
    .line 322
    check-cast v0, Lcom/join/mgps/adapter/o5$m;

    .line 323
    .line 324
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    if-eqz v1, :cond_8

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-nez v1, :cond_7

    .line 347
    .line 348
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    if-eqz v1, :cond_8

    .line 353
    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_8

    .line 371
    .line 372
    :cond_7
    iget-object v3, v0, Lcom/join/mgps/adapter/o5$m;->f:Landroid/widget/TextView;

    .line 373
    .line 374
    iget-object v4, v0, Lcom/join/mgps/adapter/o5$m;->l:Landroid/widget/TextView;

    .line 375
    .line 376
    iget-object v5, v0, Lcom/join/mgps/adapter/o5$m;->m:Landroid/widget/FrameLayout;

    .line 377
    .line 378
    iget-object v6, v0, Lcom/join/mgps/adapter/o5$m;->n:Landroid/widget/TextView;

    .line 379
    .line 380
    iget-object v7, v0, Lcom/join/mgps/adapter/o5$m;->g:Landroid/widget/LinearLayout;

    .line 381
    .line 382
    iget-object v8, v0, Lcom/join/mgps/adapter/o5$m;->h:Landroid/widget/TextView;

    .line 383
    .line 384
    iget-object v9, v0, Lcom/join/mgps/adapter/o5$m;->i:Landroid/widget/TextView;

    .line 385
    .line 386
    iget-object v10, v0, Lcom/join/mgps/adapter/o5$m;->j:Landroid/widget/ProgressBar;

    .line 387
    .line 388
    iget-object v11, v0, Lcom/join/mgps/adapter/o5$m;->k:Landroid/widget/ProgressBar;

    .line 389
    .line 390
    iget-object v12, v0, Lcom/join/mgps/adapter/o5$m;->o:Landroid/widget/ProgressBar;

    .line 391
    .line 392
    move-object v1, p0

    .line 393
    invoke-direct/range {v1 .. v12}, Lcom/join/mgps/activity/PapaMainV3Fragment;->update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 394
    .line 395
    .line 396
    goto :goto_2

    .line 397
    :catch_2
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    .line 400
    .line 401
    :cond_8
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :cond_9
    return-void

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private L1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_a

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_a

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_8

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 68
    .line 69
    const/4 v5, 0x5

    .line 70
    const/4 v6, 0x1

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ne v4, v5, :cond_1

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v4, 0x0

    .line 82
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    if-eqz v3, :cond_2

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ne v3, v5, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const/4 v6, 0x0

    .line 104
    :goto_2
    if-eqz v6, :cond_3

    .line 105
    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_3
    if-eqz v6, :cond_4

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-eqz v3, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 168
    .line 169
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_4

    .line 173
    .line 174
    :cond_4
    if-eqz v4, :cond_5

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_9

    .line 189
    .line 190
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 191
    .line 192
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 197
    .line 198
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    if-eqz v3, :cond_6

    .line 207
    .line 208
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_6
    const/4 v3, 0x0

    .line 226
    :goto_3
    if-nez v3, :cond_7

    .line 227
    .line 228
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    move-object v3, v2

    .line 239
    check-cast v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 240
    .line 241
    :cond_7
    if-eqz v3, :cond_9

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_9

    .line 256
    .line 257
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 264
    .line 265
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_8
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_9

    .line 282
    .line 283
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 290
    .line 291
    invoke-virtual {v2, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 292
    .line 293
    .line 294
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .line 302
    .line 303
    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    .line 310
    .line 311
    :cond_a
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->U0(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method private M0()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l1:Z

    .line 8
    .line 9
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 10
    .line 11
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/join/kotlin/presenter/HomeViewModle;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/kotlin/presenter/HomeViewModle;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->T:Lcom/join/kotlin/presenter/HomeViewModle;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/kotlin/presenter/HomeViewModle;->initStat(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->T:Lcom/join/kotlin/presenter/HomeViewModle;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-float v1, v0

    .line 53
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const v3, 0x7f07150f

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x0

    .line 67
    cmpl-float v1, v1, v2

    .line 68
    .line 69
    if-lez v1, :cond_0

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    .line 75
    .line 76
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 89
    .line 90
    new-instance v7, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v7, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 96
    .line 97
    new-instance v0, Lcom/join/mgps/adapter/o5;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 100
    .line 101
    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 102
    .line 103
    new-instance v9, Lcom/join/mgps/activity/PapaMainV3Fragment$g;

    .line 104
    .line 105
    invoke-direct {v9, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$g;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 106
    .line 107
    .line 108
    move-object v4, v0

    .line 109
    move-object v6, p0

    .line 110
    invoke-direct/range {v4 .. v9}, Lcom/join/mgps/adapter/o5;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/join/android/app/component/video/h;Lv6/f;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const v2, 0x7f0d0710

    .line 126
    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 133
    .line 134
    new-instance v2, Lcom/join/mgps/activity/PapaMainV3Fragment$h;

    .line 135
    .line 136
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$h;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->K:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 150
    .line 151
    const/16 v2, 0xa

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setPreLoadCount(I)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 157
    .line 158
    new-instance v2, Lcom/join/mgps/activity/PapaMainV3Fragment$i;

    .line 159
    .line 160
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$i;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lcom/join/mgps/adapter/o5;->R(Lcom/join/mgps/adapter/o5$i;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 174
    .line 175
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 176
    .line 177
    const/4 v3, 0x2

    .line 178
    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Lcom/join/mgps/activity/PapaMainV3Fragment$j;

    .line 182
    .line 183
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$j;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 190
    .line 191
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 195
    .line 196
    new-instance v2, Lcom/join/mgps/activity/PapaMainV3Fragment$k;

    .line 197
    .line 198
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$k;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 205
    .line 206
    new-instance v2, Lcom/join/mgps/activity/PapaMainV3Fragment$l;

    .line 207
    .line 208
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$l;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->K:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t:Lcom/google/android/material/appbar/AppBarLayout;

    .line 220
    .line 221
    new-instance v1, Lcom/join/mgps/activity/l8;

    .line 222
    .line 223
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/l8;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->T0()V

    return-void
.end method

.method private N0(Lcom/join/mgps/dto/SScrollingTxtDTOV2;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollingTxtDTO"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/SScrollingTxtDTOV2;->getText()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const v3, 0x7f0d0484

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/SScrollingTxtDTOV2;->getInterval()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->b1:I

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    if-ge p1, v0, :cond_3

    .line 93
    .line 94
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->b1:I

    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 97
    .line 98
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->b1:I

    .line 99
    .line 100
    mul-int/lit16 v0, v0, 0x3e8

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 111
    .line 112
    sput-object p1, Lcom/MApplication;->L1:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->b1:I

    .line 115
    .line 116
    sput p1, Lcom/MApplication;->R1:I

    .line 117
    .line 118
    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->V0()V

    return-void
.end method

.method private O0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dto"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :cond_1
    return v0
.end method

.method private O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tvGameTags",
            "llInfo",
            "progressBar",
            "progressBarZip",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/activity/PapaMainV3Fragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private Q1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "from",
            "fromType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment$9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment$9;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p2, p3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1(Ljava/util/List;II)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-lez p3, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 24
    .line 25
    :cond_0
    return-object p1
.end method

.method static synthetic R(Lcom/join/mgps/activity/PapaMainV3Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->l1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private R1(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "from",
            "fromType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lq5/f;->d()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v6}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_1

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :goto_2
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->set_from(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->set_from_type(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    :goto_3
    return-object p1
.end method

.method static synthetic S(Lcom/join/mgps/activity/PapaMainV3Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->F:I

    .line 2
    .line 3
    return p0
.end method

.method private S1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "pointSuffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    return-object p1
.end method

.method static synthetic T(Lcom/join/mgps/activity/PapaMainV3Fragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->F:I

    .line 2
    .line 3
    return p1
.end method

.method private synthetic T0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v1:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMoreView(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private T1(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "22-18-"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1:I

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1:I

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1:I

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    return-object p1
.end method

.method static synthetic U(Lcom/join/mgps/activity/PapaMainV3Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 2
    .line 3
    return p0
.end method

.method private synthetic U0(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->K:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private U1(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "22-14-"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v0, 0x1

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->setPosition(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 50
    .line 51
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->set_from(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$NgSelectionDTO;->set_from_type(I)V

    .line 61
    .line 62
    .line 63
    move v0, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    return-object p1
.end method

.method static synthetic V(Lcom/join/mgps/activity/PapaMainV3Fragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 2
    .line 3
    return p1
.end method

.method private synthetic V0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->s2:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t2:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [F

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const v3, 0x7f071246

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    aput v2, v1, v3

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v3, 0x0

    .line 43
    aput v3, v1, v2

    .line 44
    .line 45
    const-string v2, "translationX"

    .line 46
    .line 47
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-wide/16 v1, 0x96

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/join/mgps/activity/PapaMainV3Fragment$e;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$e;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic W(Lcom/join/mgps/activity/PapaMainV3Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic X(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l2:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Y(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l2:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic Z(Lcom/join/mgps/activity/PapaMainV3Fragment;)Lcom/join/mgps/adapter/o5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f1:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->q1(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c0(Lcom/join/mgps/activity/PapaMainV3Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->r1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p2:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p2:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p2:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic f0(Lcom/join/mgps/activity/PapaMainV3Fragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->p1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r1:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->s2:Z

    .line 2
    .line 3
    return p1
.end method

.method private h1(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onScrollStateChange: "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, "  "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastCompletelyVisiblePosition()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/adapter/o5;->getData()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->P()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/h;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->c0()V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P0()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->x0()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/join/android/app/component/video/h;->g()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastCompletelyVisiblePosition()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/join/mgps/adapter/o5;->getData()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-lt p1, p2, :cond_2

    .line 96
    .line 97
    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q0()V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide p1

    .line 108
    iget-wide v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q1:J

    .line 109
    .line 110
    sub-long/2addr p1, v0

    .line 111
    const-wide/16 v0, 0x2710

    .line 112
    .line 113
    cmp-long v2, p1, v0

    .line 114
    .line 115
    if-lez v2, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->v0()V

    .line 118
    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method static synthetic i0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r1:Z

    .line 2
    .line 3
    return p1
.end method

.method private i1(Lcom/join/mgps/dto/RecomDatabean;)Lcom/join/mgps/business/RecomDatabeanBusiness;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recomDatabean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/join/mgps/business/RecomDatabeanBusiness;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method static synthetic j0(Lcom/join/mgps/activity/PapaMainV3Fragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t2:Z

    .line 2
    .line 3
    return p1
.end method

.method private j1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recomDatabeans",
            "recomDatabeanBusinesses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 29
    .line 30
    new-instance v1, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/join/mgps/business/RecomDatabeanBusiness;-><init>(Lcom/join/mgps/dto/RecomDatabean;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-object p2
.end method

.method static synthetic k0(Lcom/join/mgps/activity/PapaMainV3Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 2
    .line 3
    return p0
.end method

.method private l1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getFirstVisiblePosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->a1()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v0, "m1"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 20
    .line 21
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q:I

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMoreView(Z)V

    .line 29
    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 32
    .line 33
    const-string v0, "refresh"

    .line 34
    .line 35
    iget v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->I0()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method static synthetic m0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v1:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o0(Lcom/join/mgps/activity/PapaMainV3Fragment;ILjava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->y0(ILjava/util/List;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p0(Lcom/join/mgps/activity/PapaMainV3Fragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private p1(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reMarks"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "sendExposurePoint: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v1, Lcom/papa/sim/statistic/Event;->pullDownModelExp:Lcom/papa/sim/statistic/Event;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v1, v0, v2}, Lcom/papa/sim/statistic/t;->k0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method static synthetic q0(Lcom/join/mgps/activity/PapaMainV3Fragment;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->h1(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q1(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "bean"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->F0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "home"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getJp_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$JpInfoDTO;->getLink_type_val()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v2, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p1, v3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    nop

    .line 84
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    sget-object v0, Lcom/papa/sim/statistic/Event;->expH5AndCollGameAdPicPage:Lcom/papa/sim/statistic/Event;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    sget-object v0, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 96
    .line 97
    :goto_2
    invoke-virtual {v1, v0, v2, p1}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isMiniGame()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->t1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-void
.end method

.method private r0()V
    .locals 0

    .line 1
    return-void
.end method

.method private r1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "position",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 27
    .line 28
    invoke-virtual {p1, p2, v0, p3}, Lcom/papa/sim/statistic/t;->k0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->notifyDataSetChanged()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->J1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->notifyDataSetChanged()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->J1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->notifyDataSetChanged()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->J1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTask"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getMod_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->notifyDataSetChanged()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->J1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private s1(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isContainPosition"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r2:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v1, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->o1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private t1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPage(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "106"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->F0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lcom/papa/sim/statistic/Event;->expSmallGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->u:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v1, v0, v2}, Lcom/papa/sim/statistic/t;->k0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private u1(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointName"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "22-"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v2, p1, v1}, Lcom/papa/sim/statistic/t;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private update(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "tvGameName",
            "tvGameTags",
            "flBtn",
            "tvBtn",
            "llInfo",
            "tvAppSize",
            "loding_info",
            "progressBarZip",
            "progressBar",
            "loadingProgress"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    move-object/from16 v9, p5

    .line 6
    .line 7
    move-object/from16 v10, p7

    .line 8
    .line 9
    move-object/from16 v11, p8

    .line 10
    .line 11
    move-object/from16 v12, p9

    .line 12
    .line 13
    move-object/from16 v13, p10

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    .line 18
    move-result-object v14

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 20
    .line 21
    .line 22
    move-result-object v15

    .line 23
    const-wide/16 v16, 0x0

    .line 24
    .line 25
    if-eqz v14, :cond_0

    .line 26
    .line 27
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    move-wide/from16 v18, v1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-wide/from16 v18, v16

    .line 35
    .line 36
    :goto_0
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    move-object/from16 v2, p11

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    if-eqz v15, :cond_1

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ""

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    const-string v0, "\u5f00\u59cb"

    .line 82
    .line 83
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    const/16 v0, 0x8

    .line 87
    .line 88
    move-object/from16 v1, p2

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_1
    const-string v7, "\u66f4\u65b0"

    .line 96
    .line 97
    const-string v6, "\u542f\u52a8"

    .line 98
    .line 99
    const-string v5, "\u83b7\u53d6"

    .line 100
    .line 101
    if-nez v14, :cond_6

    .line 102
    .line 103
    const/4 v10, 0x1

    .line 104
    const/4 v11, 0x0

    .line 105
    move-object/from16 v1, p0

    .line 106
    .line 107
    move-object/from16 v2, p3

    .line 108
    .line 109
    move-object/from16 v3, p6

    .line 110
    .line 111
    move-object/from16 v4, p10

    .line 112
    .line 113
    move-object v13, v5

    .line 114
    move-object/from16 v5, p9

    .line 115
    .line 116
    move-object v12, v6

    .line 117
    move v6, v10

    .line 118
    move-object v10, v7

    .line 119
    move v7, v11

    .line 120
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    if-nez v15, :cond_2

    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    iget-object v1, v8, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {v1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, v8, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_4

    .line 156
    .line 157
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_4

    .line 170
    .line 171
    iget-object v0, v8, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v1, v8, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_3

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-ge v0, v1, :cond_3

    .line 210
    .line 211
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_5

    .line 215
    .line 216
    :cond_3
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :cond_4
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_5
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_5

    .line 252
    .line 253
    :cond_6
    move-object v3, v5

    .line 254
    move-object v2, v6

    .line 255
    move-object v1, v7

    .line 256
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    const/16 v5, 0x2b

    .line 261
    .line 262
    if-eqz v15, :cond_7

    .line 263
    .line 264
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-lez v6, :cond_7

    .line 277
    .line 278
    const/16 v4, 0x2b

    .line 279
    .line 280
    :cond_7
    if-eqz v4, :cond_f

    .line 281
    .line 282
    const/16 v6, 0x1b

    .line 283
    .line 284
    const-string v7, "\u6682\u505c"

    .line 285
    .line 286
    if-eq v4, v6, :cond_e

    .line 287
    .line 288
    const/16 v6, 0x30

    .line 289
    .line 290
    if-eq v4, v6, :cond_d

    .line 291
    .line 292
    const/4 v6, 0x2

    .line 293
    move-object/from16 p1, v7

    .line 294
    .line 295
    const-string v7, "/"

    .line 296
    .line 297
    if-eq v4, v6, :cond_b

    .line 298
    .line 299
    const/4 v6, 0x3

    .line 300
    if-eq v4, v6, :cond_9

    .line 301
    .line 302
    const/4 v6, 0x5

    .line 303
    if-eq v4, v6, :cond_8

    .line 304
    .line 305
    const/4 v6, 0x6

    .line 306
    if-eq v4, v6, :cond_9

    .line 307
    .line 308
    const/4 v6, 0x7

    .line 309
    if-eq v4, v6, :cond_f

    .line 310
    .line 311
    const/16 v6, 0x2a

    .line 312
    .line 313
    if-eq v4, v6, :cond_8

    .line 314
    .line 315
    if-eq v4, v5, :cond_f

    .line 316
    .line 317
    packed-switch v4, :pswitch_data_0

    .line 318
    .line 319
    .line 320
    goto/16 :goto_5

    .line 321
    .line 322
    :pswitch_0
    const/4 v6, 0x0

    .line 323
    const/4 v0, 0x1

    .line 324
    move-object/from16 v1, p0

    .line 325
    .line 326
    move-object/from16 v2, p3

    .line 327
    .line 328
    move-object/from16 v3, p6

    .line 329
    .line 330
    move-object/from16 v4, p10

    .line 331
    .line 332
    move-object/from16 v5, p9

    .line 333
    .line 334
    move-object v15, v7

    .line 335
    move v7, v0

    .line 336
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 337
    .line 338
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 369
    .line 370
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 374
    .line 375
    .line 376
    move-result-wide v0

    .line 377
    long-to-int v1, v0

    .line 378
    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 379
    .line 380
    .line 381
    const-string v0, "\u89e3\u538b"

    .line 382
    .line 383
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_5

    .line 387
    .line 388
    :pswitch_1
    move-object v15, v7

    .line 389
    const/4 v6, 0x0

    .line 390
    const/4 v7, 0x1

    .line 391
    move-object/from16 v1, p0

    .line 392
    .line 393
    move-object/from16 v2, p3

    .line 394
    .line 395
    move-object/from16 v3, p6

    .line 396
    .line 397
    move-object/from16 v4, p10

    .line 398
    .line 399
    move-object/from16 v5, p9

    .line 400
    .line 401
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 402
    .line 403
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 434
    .line 435
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 439
    .line 440
    .line 441
    move-result-wide v0

    .line 442
    long-to-int v1, v0

    .line 443
    invoke-virtual {v12, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 444
    .line 445
    .line 446
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 447
    .line 448
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_5

    .line 452
    .line 453
    :pswitch_2
    const-string v0, "\u5b89\u88c5"

    .line 454
    .line 455
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    const/4 v6, 0x1

    .line 459
    const/4 v7, 0x0

    .line 460
    move-object/from16 v1, p0

    .line 461
    .line 462
    move-object/from16 v2, p3

    .line 463
    .line 464
    move-object/from16 v3, p6

    .line 465
    .line 466
    move-object/from16 v4, p10

    .line 467
    .line 468
    move-object/from16 v5, p9

    .line 469
    .line 470
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 471
    .line 472
    .line 473
    goto/16 :goto_5

    .line 474
    .line 475
    :pswitch_3
    move-object v15, v7

    .line 476
    const-string v0, "\u7b49\u5f85"

    .line 477
    .line 478
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    .line 480
    .line 481
    const/4 v6, 0x0

    .line 482
    const/4 v7, 0x0

    .line 483
    move-object/from16 v1, p0

    .line 484
    .line 485
    move-object/from16 v2, p3

    .line 486
    .line 487
    move-object/from16 v3, p6

    .line 488
    .line 489
    move-object/from16 v4, p10

    .line 490
    .line 491
    move-object/from16 v5, p9

    .line 492
    .line 493
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 494
    .line 495
    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 502
    .line 503
    .line 504
    move-result-wide v1

    .line 505
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    .line 528
    .line 529
    :try_start_0
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 530
    .line 531
    .line 532
    move-result-wide v0

    .line 533
    long-to-int v1, v0

    .line 534
    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .line 536
    .line 537
    goto :goto_1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 540
    .line 541
    .line 542
    :goto_1
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 543
    .line 544
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_5

    .line 548
    .line 549
    :pswitch_4
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    .line 551
    .line 552
    const/4 v6, 0x1

    .line 553
    const/4 v7, 0x0

    .line 554
    move-object/from16 v1, p0

    .line 555
    .line 556
    move-object/from16 v2, p3

    .line 557
    .line 558
    move-object/from16 v3, p6

    .line 559
    .line 560
    move-object/from16 v4, p10

    .line 561
    .line 562
    move-object/from16 v5, p9

    .line 563
    .line 564
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_5

    .line 568
    .line 569
    :cond_8
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    .line 571
    .line 572
    const/4 v6, 0x1

    .line 573
    const/4 v7, 0x1

    .line 574
    move-object/from16 v1, p0

    .line 575
    .line 576
    move-object/from16 v2, p3

    .line 577
    .line 578
    move-object/from16 v3, p6

    .line 579
    .line 580
    move-object/from16 v4, p10

    .line 581
    .line 582
    move-object/from16 v5, p9

    .line 583
    .line 584
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_5

    .line 588
    .line 589
    :cond_9
    const-string v0, "\u7ee7\u7eed"

    .line 590
    .line 591
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    .line 593
    .line 594
    const/4 v6, 0x0

    .line 595
    const/4 v0, 0x0

    .line 596
    move-object/from16 v1, p0

    .line 597
    .line 598
    move-object/from16 v2, p3

    .line 599
    .line 600
    move-object/from16 v3, p6

    .line 601
    .line 602
    move-object/from16 v4, p10

    .line 603
    .line 604
    move-object/from16 v5, p9

    .line 605
    .line 606
    move-object v15, v7

    .line 607
    move v7, v0

    .line 608
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 609
    .line 610
    .line 611
    :try_start_1
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 612
    .line 613
    .line 614
    move-result-wide v0

    .line 615
    cmp-long v2, v0, v16

    .line 616
    .line 617
    if-nez v2, :cond_a

    .line 618
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 625
    .line 626
    .line 627
    move-result-wide v1

    .line 628
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    .line 651
    .line 652
    goto :goto_2

    .line 653
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 659
    .line 660
    .line 661
    move-result-wide v1

    .line 662
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    .line 685
    .line 686
    :goto_2
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 687
    .line 688
    .line 689
    move-result-wide v0

    .line 690
    long-to-int v1, v0

    .line 691
    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 692
    .line 693
    .line 694
    goto :goto_3

    .line 695
    :catch_1
    move-exception v0

    .line 696
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 697
    .line 698
    .line 699
    :goto_3
    const-string v0, "\u6682\u505c\u4e2d"

    .line 700
    .line 701
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_5

    .line 705
    .line 706
    :cond_b
    move-object v15, v7

    .line 707
    invoke-static {v14}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 708
    .line 709
    .line 710
    move-object/from16 v0, p1

    .line 711
    .line 712
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    .line 714
    .line 715
    const/4 v6, 0x0

    .line 716
    const/4 v7, 0x0

    .line 717
    move-object/from16 v1, p0

    .line 718
    .line 719
    move-object/from16 v2, p3

    .line 720
    .line 721
    move-object/from16 v3, p6

    .line 722
    .line 723
    move-object/from16 v4, p10

    .line 724
    .line 725
    move-object/from16 v5, p9

    .line 726
    .line 727
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 731
    .line 732
    .line 733
    move-result-wide v0

    .line 734
    cmp-long v2, v0, v16

    .line 735
    .line 736
    if-nez v2, :cond_c

    .line 737
    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 744
    .line 745
    .line 746
    move-result-wide v1

    .line 747
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    .line 770
    .line 771
    goto :goto_4

    .line 772
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 778
    .line 779
    .line 780
    move-result-wide v1

    .line 781
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    .line 804
    .line 805
    :goto_4
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 806
    .line 807
    .line 808
    move-result-wide v0

    .line 809
    long-to-int v1, v0

    .line 810
    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    .line 818
    .line 819
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    const-string v0, "/S"

    .line 826
    .line 827
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    .line 836
    .line 837
    goto :goto_5

    .line 838
    :cond_d
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 839
    .line 840
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    .line 842
    .line 843
    const/4 v6, 0x1

    .line 844
    const/4 v7, 0x0

    .line 845
    move-object/from16 v1, p0

    .line 846
    .line 847
    move-object/from16 v2, p3

    .line 848
    .line 849
    move-object/from16 v3, p6

    .line 850
    .line 851
    move-object/from16 v4, p10

    .line 852
    .line 853
    move-object/from16 v5, p9

    .line 854
    .line 855
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 856
    .line 857
    .line 858
    goto :goto_5

    .line 859
    :cond_e
    move-object v0, v7

    .line 860
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    .line 862
    .line 863
    goto :goto_5

    .line 864
    :cond_f
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-virtual {v15}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 876
    .line 877
    .line 878
    invoke-static {v9, v0, v15}, Lcom/join/mgps/Util/UtilsMy;->w3(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 879
    .line 880
    .line 881
    const/4 v6, 0x1

    .line 882
    const/4 v7, 0x0

    .line 883
    move-object/from16 v1, p0

    .line 884
    .line 885
    move-object/from16 v2, p3

    .line 886
    .line 887
    move-object/from16 v3, p6

    .line 888
    .line 889
    move-object/from16 v4, p10

    .line 890
    .line 891
    move-object/from16 v5, p9

    .line 892
    .line 893
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O1(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 894
    .line 895
    .line 896
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateProgressPartly()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 2
    .line 3
    if-ltz v0, :cond_a

    .line 4
    .line 5
    :goto_0
    iget v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->F:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/join/mgps/adapter/o5;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-gt v0, v1, :cond_a

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/o5;->u(I)Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v3, 0x1c

    .line 38
    .line 39
    const-string v4, "/S"

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    const/16 v6, 0xc

    .line 43
    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    const-string v9, "/"

    .line 47
    .line 48
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    .line 49
    .line 50
    if-eq v2, v3, :cond_6

    .line 51
    .line 52
    const/16 v3, 0x1d

    .line 53
    .line 54
    if-eq v2, v3, :cond_3

    .line 55
    .line 56
    packed-switch v2, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :pswitch_0
    :try_start_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/List;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 68
    .line 69
    iget v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 70
    .line 71
    sub-int v3, v0, v3

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    instance-of v3, v2, Lcom/join/mgps/adapter/o5$q;

    .line 84
    .line 85
    if-eqz v3, :cond_9

    .line 86
    .line 87
    check-cast v2, Lcom/join/mgps/adapter/o5$q;

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    iget-object v2, v2, Lcom/join/mgps/adapter/o5$q;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    if-eqz v2, :cond_9

    .line 94
    .line 95
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/join/mgps/adapter/c3;

    .line 100
    .line 101
    if-eqz v2, :cond_9

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/join/mgps/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-eqz v3, :cond_9

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_2

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 124
    .line 125
    if-eqz v4, :cond_1

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    if-eqz v5, :cond_1

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v6, v5}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    if-eqz v5, :cond_1

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v2, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :catch_0
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :cond_3
    :pswitch_1
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 173
    .line 174
    iget v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 175
    .line 176
    sub-int v3, v0, v3

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    instance-of v3, v2, Lcom/join/mgps/adapter/o5$j;

    .line 189
    .line 190
    if-eqz v3, :cond_9

    .line 191
    .line 192
    check-cast v2, Lcom/join/mgps/adapter/o5$j;

    .line 193
    .line 194
    if-eqz v1, :cond_9

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-eqz v3, :cond_9

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-virtual {v3, v12}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_9

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 225
    .line 226
    .line 227
    move-result-wide v12

    .line 228
    mul-double v12, v12, v10

    .line 229
    .line 230
    mul-double v12, v12, v10

    .line 231
    .line 232
    double-to-long v10, v12

    .line 233
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 234
    .line 235
    .line 236
    move-result-wide v12

    .line 237
    cmp-long v14, v12, v7

    .line 238
    .line 239
    if-nez v14, :cond_4

    .line 240
    .line 241
    iget-object v7, v2, Lcom/join/mgps/adapter/o5$j;->h:Landroid/widget/TextView;

    .line 242
    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 249
    .line 250
    .line 251
    move-result-wide v12

    .line 252
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_4
    iget-object v7, v2, Lcom/join/mgps/adapter/o5$j;->h:Landroid/widget/TextView;

    .line 278
    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 285
    .line 286
    .line 287
    move-result-wide v12

    .line 288
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    :goto_2
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-ne v7, v6, :cond_5

    .line 317
    .line 318
    iget-object v6, v2, Lcom/join/mgps/adapter/o5$j;->j:Landroid/widget/ProgressBar;

    .line 319
    .line 320
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 321
    .line 322
    .line 323
    move-result-wide v7

    .line 324
    long-to-int v8, v7

    .line 325
    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_5
    iget-object v6, v2, Lcom/join/mgps/adapter/o5$j;->k:Landroid/widget/ProgressBar;

    .line 330
    .line 331
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 332
    .line 333
    .line 334
    move-result-wide v7

    .line 335
    long-to-int v8, v7

    .line 336
    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 337
    .line 338
    .line 339
    :goto_3
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-ne v1, v5, :cond_9

    .line 344
    .line 345
    iget-object v1, v2, Lcom/join/mgps/adapter/o5$j;->i:Landroid/widget/TextView;

    .line 346
    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    .line 368
    .line 369
    goto/16 :goto_6

    .line 370
    .line 371
    :catch_1
    move-exception v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_6

    .line 376
    .line 377
    :cond_6
    :pswitch_2
    :try_start_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getObject()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 382
    .line 383
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 384
    .line 385
    iget v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->G:I

    .line 386
    .line 387
    sub-int v3, v0, v3

    .line 388
    .line 389
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 394
    .line 395
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    instance-of v3, v2, Lcom/join/mgps/adapter/o5$m;

    .line 400
    .line 401
    if-eqz v3, :cond_9

    .line 402
    .line 403
    check-cast v2, Lcom/join/mgps/adapter/o5$m;

    .line 404
    .line 405
    if-eqz v1, :cond_9

    .line 406
    .line 407
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    if-eqz v3, :cond_9

    .line 412
    .line 413
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v12

    .line 425
    invoke-virtual {v3, v12}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    if-eqz v3, :cond_9

    .line 430
    .line 431
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 436
    .line 437
    .line 438
    move-result-wide v12

    .line 439
    mul-double v12, v12, v10

    .line 440
    .line 441
    mul-double v12, v12, v10

    .line 442
    .line 443
    double-to-long v10, v12

    .line 444
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 445
    .line 446
    .line 447
    move-result-wide v12

    .line 448
    cmp-long v14, v12, v7

    .line 449
    .line 450
    if-nez v14, :cond_7

    .line 451
    .line 452
    iget-object v7, v2, Lcom/join/mgps/adapter/o5$m;->h:Landroid/widget/TextView;

    .line 453
    .line 454
    new-instance v8, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 460
    .line 461
    .line 462
    move-result-wide v12

    .line 463
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v12

    .line 467
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v9

    .line 477
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    goto :goto_4

    .line 488
    :cond_7
    iget-object v7, v2, Lcom/join/mgps/adapter/o5$m;->h:Landroid/widget/TextView;

    .line 489
    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 496
    .line 497
    .line 498
    move-result-wide v12

    .line 499
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v12

    .line 503
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    :goto_4
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    if-ne v7, v6, :cond_8

    .line 528
    .line 529
    iget-object v6, v2, Lcom/join/mgps/adapter/o5$m;->j:Landroid/widget/ProgressBar;

    .line 530
    .line 531
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 532
    .line 533
    .line 534
    move-result-wide v7

    .line 535
    long-to-int v8, v7

    .line 536
    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 537
    .line 538
    .line 539
    goto :goto_5

    .line 540
    :cond_8
    iget-object v6, v2, Lcom/join/mgps/adapter/o5$m;->k:Landroid/widget/ProgressBar;

    .line 541
    .line 542
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 543
    .line 544
    .line 545
    move-result-wide v7

    .line 546
    long-to-int v8, v7

    .line 547
    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 548
    .line 549
    .line 550
    :goto_5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-ne v1, v5, :cond_9

    .line 555
    .line 556
    iget-object v1, v2, Lcom/join/mgps/adapter/o5$m;->i:Landroid/widget/TextView;

    .line 557
    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 578
    .line 579
    .line 580
    goto :goto_6

    .line 581
    :catch_2
    move-exception v1

    .line 582
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 583
    .line 584
    .line 585
    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :cond_a
    return-void

    .line 590
    nop

    .line 591
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private w1(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recomDatabeans",
            "_from",
            "_from_type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;II)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method private x0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q2:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private y0(ILjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "postion",
            "rankings",
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Y:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    if-gt p1, v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 46
    .line 47
    invoke-direct {p0, p3, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->q1(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Y:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method private z1(Lcom/join/mgps/dto/MgpapaMainItemBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mgpapaMainItemBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_8

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-lez v2, :cond_8

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getMoreType2()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v3, "-"

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    array-length v4, p1

    .line 52
    const-string v5, "0"

    .line 53
    .line 54
    if-lez v4, :cond_6

    .line 55
    .line 56
    aget-object v4, p1, v2

    .line 57
    .line 58
    const-string v6, "4"

    .line 59
    .line 60
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/4 v6, 0x1

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    array-length v1, p1

    .line 68
    const-string v2, "\u5927\u5bb6\u90fd\u5728\u73a9"

    .line 69
    .line 70
    if-le v1, v6, :cond_7

    .line 71
    .line 72
    aget-object v5, p1, v6

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    aget-object v4, p1, v2

    .line 76
    .line 77
    const-string v7, "7"

    .line 78
    .line 79
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    array-length v1, p1

    .line 86
    const-string v2, "\u7f51\u6e38\u63a8\u8350"

    .line 87
    .line 88
    if-le v1, v6, :cond_7

    .line 89
    .line 90
    aget-object v5, p1, v6

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    aget-object v2, p1, v2

    .line 94
    .line 95
    const-string v4, "5"

    .line 96
    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    array-length v1, p1

    .line 104
    const-string v2, "\u6700\u65b0\u7f51\u6e38"

    .line 105
    .line 106
    if-le v1, v6, :cond_7

    .line 107
    .line 108
    aget-object v5, p1, v6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    array-length v2, p1

    .line 112
    const/4 v4, 0x2

    .line 113
    if-le v2, v4, :cond_4

    .line 114
    .line 115
    aget-object v5, p1, v4

    .line 116
    .line 117
    :cond_4
    array-length v2, p1

    .line 118
    const-string v4, "\u6a21\u5757"

    .line 119
    .line 120
    if-le v2, v1, :cond_5

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    aget-object v4, p1, v6

    .line 131
    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    aget-object v5, p1, v1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    move-object v2, v4

    .line 143
    goto :goto_0

    .line 144
    :cond_6
    const-string v2, ""

    .line 145
    .line 146
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "home-"

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method A0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameid"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->t0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method B0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameid"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->A0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method B1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/w;->i(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method C0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->w0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/wufan/user/service/protobuf/UserInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/join/mgps/dto/RequestGameIdArgs;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-direct {v2, p1, v3, v0}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>(Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v0}, Lb7/i;->N1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/16 v1, 0xc8

    .line 91
    .line 92
    if-ne v0, v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from_type()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getPosition()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/DownloadPointBase;->setRecPosition(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setGameBean(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->w0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    const-string p1, "\u83b7\u53d6\u4e0b\u8f7d\u4fe1\u606f\u5931\u8d25"

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMessage(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    const-string p1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528"

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMessage(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->m1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method C1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 14
    .line 15
    new-instance v2, Lcom/join/mgps/activity/PapaMainV3Fragment$f;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$f;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v0, v1, v3, v2}, Lcom/join/mgps/Util/g0;->O(Landroid/content/Context;ILcom/join/mgps/callbacks/d;)Lcom/join/mgps/customview/t;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method D0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->G0()Lcom/join/mgps/dto/CommonRequestBean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Lcom/join/mgps/rpc/e;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->S(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/RecomDataAllBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDataAllBean;->getMessages()Lcom/join/mgps/dto/RecomDataMessageBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDataMessageBean;->getData()Lcom/join/mgps/dto/HomeFloatData;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->D1(Lcom/join/mgps/dto/HomeFloatData;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    throw v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method D1(Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFloatData"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeFloatData;->getPendant()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeFloatData;->getCoin_entrance()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f2:Lcom/join/mgps/dto/RecomDatabean;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getAd_switch()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-ne v0, v3, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f2:Lcom/join/mgps/dto/RecomDatabean;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h2:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f2:Lcom/join/mgps/dto/RecomDatabean;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f2:Lcom/join/mgps/dto/RecomDatabean;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h2:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f2:Lcom/join/mgps/dto/RecomDatabean;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const v3, 0x7f0812fe

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v3, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-lez v0, :cond_4

    .line 139
    .line 140
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    .line 145
    .line 146
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->g2:Lcom/join/mgps/dto/RecomDatabean;

    .line 147
    .line 148
    new-instance p1, Landroid/content/Intent;

    .line 149
    .line 150
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.coinflote"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "coinFloatData"

    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->g2:Lcom/join/mgps/dto/RecomDatabean;

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_1
    return-void
.end method

.method E0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getRequestPnAndPc(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Lcom/join/mgps/rpc/e;

    .line 13
    .line 14
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->w1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v2, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/List;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-lez v1, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/join/mgps/dto/RecomDatabean;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->V1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    :catch_0
    :cond_0
    return-void
.end method

.method E1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->D0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method F1(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipPopDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/VipPopData;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    return-void
.end method

.method public G0()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getFloatadRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public G1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method H1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method I0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->vipMessage(I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Lcom/join/mgps/rpc/e;

    .line 37
    .line 38
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->U(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x1

    .line 49
    if-ne v1, v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/util/List;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->F1(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P1()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P1()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P1()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method I1(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0xb

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanLeft()Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getRecomDatabeanRight()Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, ""

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Lcom/join/mgps/dto/AppBeanMain;

    .line 56
    .line 57
    invoke-virtual {v6}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/AppBean;->setIs_bespeak(I)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getBespeak_count()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    add-int/2addr v5, v4

    .line 98
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AppBean;->setBespeak_count(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d1()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->C1()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    if-eqz v1, :cond_0

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-eqz v2, :cond_0

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/join/mgps/dto/AppBeanMain;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_0

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/AppBean;->setIs_bespeak(I)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getBespeak_count()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    add-int/2addr v5, v4

    .line 177
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AppBean;->setBespeak_count(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->d1()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->C1()V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_2
    return-void
.end method

.method J0(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.papa.maintab.clicked"
        }
    .end annotation

    .line 1
    return-void
.end method

.method K0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x7d0L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mainBean",
            "m",
            "pnx",
            "fromNet"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    check-cast v3, Lcom/join/mgps/activity/MGMainActivity;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Lcom/join/mgps/activity/MGMainActivity;->setHomeTabImage(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getS_scrolling_txt_v2()Lcom/join/mgps/dto/SScrollingTxtDTOV2;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v1, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->N0(Lcom/join/mgps/dto/SScrollingTxtDTOV2;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v3, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->p1:Z

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    iget-object v3, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getPage()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eq v6, v4, :cond_1

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iput-boolean v5, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->p1:Z

    .line 58
    .line 59
    :cond_3
    new-instance v3, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 60
    .line 61
    invoke-direct {v3}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 62
    .line 63
    .line 64
    const v3, 0x7f07137f

    .line 65
    .line 66
    .line 67
    const v6, 0x7f071369

    .line 68
    .line 69
    .line 70
    const v7, 0x7f071293

    .line 71
    .line 72
    .line 73
    const/16 v8, 0x1f

    .line 74
    .line 75
    const v9, 0x7f071431

    .line 76
    .line 77
    .line 78
    const/16 v11, 0x27

    .line 79
    .line 80
    const/16 v12, 0x21

    .line 81
    .line 82
    if-ne v2, v4, :cond_14

    .line 83
    .line 84
    move/from16 v13, p4

    .line 85
    .line 86
    iput-boolean v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->f1:Z

    .line 87
    .line 88
    iput v5, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->p2:I

    .line 89
    .line 90
    iput v5, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1:I

    .line 91
    .line 92
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->T:Lcom/join/kotlin/presenter/HomeViewModle;

    .line 93
    .line 94
    invoke-virtual {v13}, Lcom/join/kotlin/presenter/HomeViewModle;->getLists()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 99
    .line 100
    .line 101
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 104
    .line 105
    .line 106
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 107
    .line 108
    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v13, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 112
    .line 113
    .line 114
    const/high16 v14, 0x3f800000    # 1.0f

    .line 115
    .line 116
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 124
    .line 125
    .line 126
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->Z:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 137
    .line 138
    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 139
    .line 140
    .line 141
    const/16 v14, 0x1a

    .line 142
    .line 143
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    if-eqz v14, :cond_5

    .line 151
    .line 152
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->Z:Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v14, :cond_4

    .line 155
    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    iget-object v15, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->Z:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->setBg_color(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    invoke-virtual {v13, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 173
    .line 174
    .line 175
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getFast_entry()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    if-eqz v13, :cond_6

    .line 185
    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getFast_entry()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    if-lez v13, :cond_6

    .line 195
    .line 196
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 197
    .line 198
    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 199
    .line 200
    .line 201
    const/16 v14, 0x1b

    .line 202
    .line 203
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getFast_entry()Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v13, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 214
    .line 215
    .line 216
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    :cond_6
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 222
    .line 223
    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 227
    .line 228
    .line 229
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 230
    .line 231
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    const v15, 0x7f0715d6

    .line 236
    .line 237
    .line 238
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v13, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 250
    .line 251
    .line 252
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 253
    .line 254
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getEo_playing()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    if-eqz v13, :cond_8

    .line 262
    .line 263
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    if-lez v14, :cond_8

    .line 268
    .line 269
    const-string v14, "22-4-"

    .line 270
    .line 271
    invoke-direct {v1, v13, v14}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    new-instance v14, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 276
    .line 277
    invoke-direct {v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v14, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v14, v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 284
    .line 285
    .line 286
    new-instance v15, Lcom/join/mgps/dto/PAPAItemTitle2;

    .line 287
    .line 288
    const-string v10, "\u5927\u5bb6\u90fd\u5728\u73a9"

    .line 289
    .line 290
    invoke-direct {v15, v10}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 297
    .line 298
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 302
    .line 303
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 307
    .line 308
    .line 309
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 310
    .line 311
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    invoke-virtual {v10, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 327
    .line 328
    .line 329
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 330
    .line 331
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    const/4 v10, 0x0

    .line 335
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 336
    .line 337
    .line 338
    move-result v14

    .line 339
    if-ge v10, v14, :cond_7

    .line 340
    .line 341
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v14

    .line 345
    check-cast v14, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 346
    .line 347
    const/16 v15, 0xc9

    .line 348
    .line 349
    invoke-direct {v1, v14, v15, v15}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 350
    .line 351
    .line 352
    move-result-object v14

    .line 353
    new-instance v15, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 354
    .line 355
    invoke-direct {v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 356
    .line 357
    .line 358
    const/16 v4, 0x25

    .line 359
    .line 360
    invoke-virtual {v15, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v15, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v15, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 367
    .line 368
    .line 369
    rem-int/lit8 v4, v10, 0x2

    .line 370
    .line 371
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v15, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 379
    .line 380
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 384
    .line 385
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    add-int/lit8 v10, v10, 0x1

    .line 389
    .line 390
    const/4 v4, 0x1

    .line 391
    goto :goto_1

    .line 392
    :cond_7
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 393
    .line 394
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 401
    .line 402
    .line 403
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 404
    .line 405
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 409
    .line 410
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 414
    .line 415
    .line 416
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 417
    .line 418
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 419
    .line 420
    .line 421
    move-result-object v10

    .line 422
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 423
    .line 424
    .line 425
    move-result v10

    .line 426
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    .line 428
    .line 429
    move-result-object v10

    .line 430
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 434
    .line 435
    .line 436
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 437
    .line 438
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getF_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    if-eqz v4, :cond_a

    .line 446
    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getF_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    const/16 v14, 0x4ee9

    .line 452
    .line 453
    invoke-direct {v1, v4, v14, v14}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    const-string v14, "22-11-1"

    .line 458
    .line 459
    invoke-virtual {v4, v14}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    new-instance v14, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 463
    .line 464
    invoke-direct {v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-direct {v1, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Z

    .line 468
    .line 469
    .line 470
    move-result v15

    .line 471
    if-eqz v15, :cond_9

    .line 472
    .line 473
    const/16 v15, 0x28

    .line 474
    .line 475
    goto :goto_2

    .line 476
    :cond_9
    const/16 v15, 0x1d

    .line 477
    .line 478
    :goto_2
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v14, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v14, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 485
    .line 486
    .line 487
    iget-object v15, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 488
    .line 489
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 493
    .line 494
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 498
    .line 499
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 506
    .line 507
    .line 508
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 509
    .line 510
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 514
    .line 515
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 519
    .line 520
    .line 521
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 522
    .line 523
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 524
    .line 525
    .line 526
    move-result-object v14

    .line 527
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 528
    .line 529
    .line 530
    move-result v14

    .line 531
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 532
    .line 533
    .line 534
    move-result-object v14

    .line 535
    invoke-virtual {v4, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 539
    .line 540
    .line 541
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 542
    .line 543
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getJys_like()Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    if-eqz v4, :cond_c

    .line 551
    .line 552
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 553
    .line 554
    .line 555
    move-result v14

    .line 556
    if-lez v14, :cond_c

    .line 557
    .line 558
    const-string v14, "22-13-"

    .line 559
    .line 560
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    new-instance v14, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 565
    .line 566
    invoke-direct {v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v14, v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 570
    .line 571
    .line 572
    new-instance v15, Lcom/join/mgps/dto/PAPAItemTitle2;

    .line 573
    .line 574
    const-string v10, "\u50cf\u4f60\u4e00\u6837\u7684\u73a9\u5bb6\u90fd\u559c\u6b22"

    .line 575
    .line 576
    invoke-direct {v15, v10}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v14, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 583
    .line 584
    .line 585
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 586
    .line 587
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 591
    .line 592
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 599
    .line 600
    .line 601
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 602
    .line 603
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 604
    .line 605
    .line 606
    move-result-object v14

    .line 607
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 608
    .line 609
    .line 610
    move-result v14

    .line 611
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 612
    .line 613
    .line 614
    move-result-object v14

    .line 615
    invoke-virtual {v10, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 619
    .line 620
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    const/4 v10, 0x0

    .line 624
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 625
    .line 626
    .line 627
    move-result v14

    .line 628
    if-ge v10, v14, :cond_b

    .line 629
    .line 630
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v14

    .line 634
    check-cast v14, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 635
    .line 636
    const/16 v15, 0xcb

    .line 637
    .line 638
    invoke-direct {v1, v14, v15, v15}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 639
    .line 640
    .line 641
    move-result-object v14

    .line 642
    new-instance v15, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 643
    .line 644
    invoke-direct {v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 645
    .line 646
    .line 647
    const/16 v13, 0x26

    .line 648
    .line 649
    invoke-virtual {v15, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v15, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v15, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 656
    .line 657
    .line 658
    rem-int/lit8 v13, v10, 0x2

    .line 659
    .line 660
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v13

    .line 664
    invoke-virtual {v15, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 668
    .line 669
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 673
    .line 674
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    add-int/lit8 v10, v10, 0x1

    .line 678
    .line 679
    goto :goto_3

    .line 680
    :cond_b
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 681
    .line 682
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 689
    .line 690
    .line 691
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 692
    .line 693
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 697
    .line 698
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 705
    .line 706
    .line 707
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 708
    .line 709
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 710
    .line 711
    .line 712
    move-result-object v10

    .line 713
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 714
    .line 715
    .line 716
    move-result v10

    .line 717
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 718
    .line 719
    .line 720
    move-result-object v10

    .line 721
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 725
    .line 726
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getNg_selection()Ljava/util/List;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    const/16 v10, 0xcc

    .line 734
    .line 735
    invoke-direct {v1, v4, v10}, Lcom/join/mgps/activity/PapaMainV3Fragment;->U1(Ljava/util/List;I)Ljava/util/List;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    if-eqz v4, :cond_d

    .line 740
    .line 741
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 742
    .line 743
    .line 744
    move-result v10

    .line 745
    if-lez v10, :cond_d

    .line 746
    .line 747
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 748
    .line 749
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 753
    .line 754
    .line 755
    new-instance v13, Lcom/join/mgps/dto/PAPAItemTitle2;

    .line 756
    .line 757
    const-string v14, "\u65b0\u6e38\u7cbe\u9009"

    .line 758
    .line 759
    invoke-direct {v13, v14}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 766
    .line 767
    .line 768
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 769
    .line 770
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 774
    .line 775
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 782
    .line 783
    .line 784
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 785
    .line 786
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 787
    .line 788
    .line 789
    move-result-object v13

    .line 790
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 791
    .line 792
    .line 793
    move-result v13

    .line 794
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 795
    .line 796
    .line 797
    move-result-object v13

    .line 798
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 799
    .line 800
    .line 801
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 802
    .line 803
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 807
    .line 808
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 809
    .line 810
    .line 811
    const/16 v13, 0x1e

    .line 812
    .line 813
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v10, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 820
    .line 821
    .line 822
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 823
    .line 824
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 828
    .line 829
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 836
    .line 837
    .line 838
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 839
    .line 840
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 844
    .line 845
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 852
    .line 853
    .line 854
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 855
    .line 856
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 857
    .line 858
    .line 859
    move-result-object v10

    .line 860
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 861
    .line 862
    .line 863
    move-result v10

    .line 864
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 865
    .line 866
    .line 867
    move-result-object v10

    .line 868
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 872
    .line 873
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getS_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    if-eqz v4, :cond_f

    .line 881
    .line 882
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getS_video_ad()Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    const/16 v10, 0x4eea

    .line 887
    .line 888
    invoke-direct {v1, v4, v10, v10}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;II)Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    const-string v10, "22-12-1"

    .line 893
    .line 894
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setPosition(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 898
    .line 899
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 900
    .line 901
    .line 902
    invoke-direct {v1, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->O0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)Z

    .line 903
    .line 904
    .line 905
    move-result v13

    .line 906
    if-eqz v13, :cond_e

    .line 907
    .line 908
    const/16 v13, 0x28

    .line 909
    .line 910
    goto :goto_4

    .line 911
    :cond_e
    const/16 v13, 0x1d

    .line 912
    .line 913
    :goto_4
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v10, v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 920
    .line 921
    .line 922
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 923
    .line 924
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 928
    .line 929
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 933
    .line 934
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 941
    .line 942
    .line 943
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 944
    .line 945
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 949
    .line 950
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 957
    .line 958
    .line 959
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 960
    .line 961
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 962
    .line 963
    .line 964
    move-result-object v10

    .line 965
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 966
    .line 967
    .line 968
    move-result v10

    .line 969
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 970
    .line 971
    .line 972
    move-result-object v10

    .line 973
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 977
    .line 978
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 982
    .line 983
    .line 984
    move-result-object v4

    .line 985
    if-eqz v4, :cond_14

    .line 986
    .line 987
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getTxt()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v4

    .line 995
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    if-nez v4, :cond_14

    .line 1000
    .line 1001
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v4

    .line 1005
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v4

    .line 1009
    if-eqz v4, :cond_14

    .line 1010
    .line 1011
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v4

    .line 1015
    invoke-virtual {v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->getList()Ljava/util/List;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v4

    .line 1019
    const/4 v10, 0x0

    .line 1020
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1021
    .line 1022
    .line 1023
    move-result v13

    .line 1024
    if-ge v10, v13, :cond_13

    .line 1025
    .line 1026
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v13

    .line 1030
    check-cast v13, Ljava/util/List;

    .line 1031
    .line 1032
    if-nez v10, :cond_10

    .line 1033
    .line 1034
    const-string v14, "22-15-"

    .line 1035
    .line 1036
    invoke-direct {v1, v13, v14}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v13

    .line 1040
    const/16 v14, 0x5015

    .line 1041
    .line 1042
    invoke-direct {v1, v13, v14, v14}, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1(Ljava/util/List;II)Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v13

    .line 1046
    invoke-interface {v4, v5, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    goto :goto_6

    .line 1050
    :cond_10
    const/4 v14, 0x1

    .line 1051
    if-ne v10, v14, :cond_11

    .line 1052
    .line 1053
    const-string v15, "22-16-"

    .line 1054
    .line 1055
    invoke-direct {v1, v13, v15}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v13

    .line 1059
    const/16 v15, 0x5016

    .line 1060
    .line 1061
    invoke-direct {v1, v13, v15, v15}, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1(Ljava/util/List;II)Ljava/util/List;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v13

    .line 1065
    invoke-interface {v4, v14, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    goto :goto_6

    .line 1069
    :cond_11
    const/4 v14, 0x2

    .line 1070
    if-ne v10, v14, :cond_12

    .line 1071
    .line 1072
    const-string v15, "22-17-"

    .line 1073
    .line 1074
    invoke-direct {v1, v13, v15}, Lcom/join/mgps/activity/PapaMainV3Fragment;->S1(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v13

    .line 1078
    const/16 v15, 0x5017

    .line 1079
    .line 1080
    invoke-direct {v1, v13, v15, v15}, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1(Ljava/util/List;II)Ljava/util/List;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v13

    .line 1084
    invoke-interface {v4, v14, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1085
    .line 1086
    .line 1087
    :cond_12
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 1088
    .line 1089
    goto :goto_5

    .line 1090
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v10

    .line 1094
    invoke-virtual {v10, v4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->setList(Ljava/util/List;)V

    .line 1095
    .line 1096
    .line 1097
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1098
    .line 1099
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1100
    .line 1101
    .line 1102
    const/16 v10, 0x20

    .line 1103
    .line 1104
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRanking_list()Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v10

    .line 1111
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1115
    .line 1116
    .line 1117
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1118
    .line 1119
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    .line 1121
    .line 1122
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1123
    .line 1124
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v4, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1131
    .line 1132
    .line 1133
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1134
    .line 1135
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    .line 1137
    .line 1138
    new-instance v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1139
    .line 1140
    invoke-direct {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v4, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 1150
    .line 1151
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v10

    .line 1155
    const v13, 0x7f0713c2

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1159
    .line 1160
    .line 1161
    move-result v10

    .line 1162
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v10

    .line 1166
    invoke-virtual {v4, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1167
    .line 1168
    .line 1169
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1170
    .line 1171
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    .line 1173
    .line 1174
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getRecommend_list()Ljava/util/List;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v4

    .line 1178
    if-eqz v4, :cond_1b

    .line 1179
    .line 1180
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1181
    .line 1182
    .line 1183
    move-result v10

    .line 1184
    if-lez v10, :cond_1b

    .line 1185
    .line 1186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v4

    .line 1190
    :cond_15
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v10

    .line 1194
    if-eqz v10, :cond_1b

    .line 1195
    .line 1196
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v10

    .line 1200
    check-cast v10, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;

    .line 1201
    .line 1202
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getList()Ljava/util/List;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v13

    .line 1206
    if-eqz v13, :cond_15

    .line 1207
    .line 1208
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getList()Ljava/util/List;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v13

    .line 1212
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 1213
    .line 1214
    .line 1215
    move-result v13

    .line 1216
    if-gtz v13, :cond_16

    .line 1217
    .line 1218
    goto :goto_7

    .line 1219
    :cond_16
    new-instance v13, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1220
    .line 1221
    invoke-direct {v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v13, v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1225
    .line 1226
    .line 1227
    new-instance v14, Lcom/join/mgps/dto/PAPAItemTitle2;

    .line 1228
    .line 1229
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTitle()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v15

    .line 1233
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getSub_title()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v8

    .line 1237
    invoke-direct {v14, v15, v8}, Lcom/join/mgps/dto/PAPAItemTitle2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v13, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1244
    .line 1245
    .line 1246
    iget-object v8, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1247
    .line 1248
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getList()Ljava/util/List;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v8

    .line 1255
    const/16 v13, 0xce

    .line 1256
    .line 1257
    invoke-direct {v1, v8, v13, v13}, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1(Ljava/util/List;II)Ljava/util/List;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v8

    .line 1261
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTpl_type()Ljava/lang/Integer;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v13

    .line 1265
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1266
    .line 1267
    .line 1268
    move-result v13

    .line 1269
    if-nez v13, :cond_18

    .line 1270
    .line 1271
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1272
    .line 1273
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 1283
    .line 1284
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v13

    .line 1288
    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1289
    .line 1290
    .line 1291
    move-result v13

    .line 1292
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v13

    .line 1296
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1297
    .line 1298
    .line 1299
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1300
    .line 1301
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    .line 1303
    .line 1304
    invoke-direct {v1, v8}, Lcom/join/mgps/activity/PapaMainV3Fragment;->T1(Ljava/util/List;)Ljava/util/List;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v8

    .line 1308
    const/4 v10, 0x0

    .line 1309
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1310
    .line 1311
    .line 1312
    move-result v13

    .line 1313
    if-ge v10, v13, :cond_17

    .line 1314
    .line 1315
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v13

    .line 1319
    check-cast v13, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 1320
    .line 1321
    new-instance v14, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1322
    .line 1323
    invoke-direct {v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1324
    .line 1325
    .line 1326
    const/16 v15, 0x22

    .line 1327
    .line 1328
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v14, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v14, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1335
    .line 1336
    .line 1337
    rem-int/lit8 v15, v10, 0x2

    .line 1338
    .line 1339
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v15

    .line 1343
    invoke-virtual {v14, v15}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setMoreType2(Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    iget-object v15, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1347
    .line 1348
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    .line 1350
    .line 1351
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 1352
    .line 1353
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    add-int/lit8 v10, v10, 0x1

    .line 1357
    .line 1358
    goto :goto_8

    .line 1359
    :cond_17
    new-instance v8, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1360
    .line 1361
    invoke-direct {v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual {v8, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v8, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1371
    .line 1372
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    .line 1374
    .line 1375
    new-instance v8, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1376
    .line 1377
    invoke-direct {v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v8, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1381
    .line 1382
    .line 1383
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 1384
    .line 1385
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v10

    .line 1389
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1390
    .line 1391
    .line 1392
    move-result v10

    .line 1393
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v10

    .line 1397
    invoke-virtual {v8, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v8, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1401
    .line 1402
    .line 1403
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1404
    .line 1405
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    :goto_9
    const/4 v13, 0x2

    .line 1409
    goto/16 :goto_a

    .line 1410
    .line 1411
    :cond_18
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTpl_type()Ljava/lang/Integer;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v13

    .line 1415
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1416
    .line 1417
    .line 1418
    move-result v13

    .line 1419
    const/4 v14, 0x1

    .line 1420
    if-ne v13, v14, :cond_19

    .line 1421
    .line 1422
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1423
    .line 1424
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1428
    .line 1429
    .line 1430
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 1431
    .line 1432
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v13

    .line 1436
    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1437
    .line 1438
    .line 1439
    move-result v13

    .line 1440
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v13

    .line 1444
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1448
    .line 1449
    .line 1450
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1451
    .line 1452
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    .line 1454
    .line 1455
    invoke-direct {v1, v8}, Lcom/join/mgps/activity/PapaMainV3Fragment;->T1(Ljava/util/List;)Ljava/util/List;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v8

    .line 1459
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1460
    .line 1461
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1462
    .line 1463
    .line 1464
    const/16 v13, 0x23

    .line 1465
    .line 1466
    invoke-virtual {v10, v13}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1467
    .line 1468
    .line 1469
    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1473
    .line 1474
    .line 1475
    iget-object v13, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1476
    .line 1477
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    .line 1479
    .line 1480
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 1481
    .line 1482
    invoke-interface {v10, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1483
    .line 1484
    .line 1485
    new-instance v8, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1486
    .line 1487
    invoke-direct {v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v8, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v8, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1494
    .line 1495
    .line 1496
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1497
    .line 1498
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    .line 1500
    .line 1501
    new-instance v8, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1502
    .line 1503
    invoke-direct {v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v8, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v8, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1510
    .line 1511
    .line 1512
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 1513
    .line 1514
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v10

    .line 1518
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1519
    .line 1520
    .line 1521
    move-result v10

    .line 1522
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v10

    .line 1526
    invoke-virtual {v8, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1527
    .line 1528
    .line 1529
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1530
    .line 1531
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1532
    .line 1533
    .line 1534
    goto :goto_9

    .line 1535
    :cond_19
    invoke-virtual {v10}, Lcom/join/mgps/dto/PAPAHomeBeanV7$RecommendListDTO;->getTpl_type()Ljava/lang/Integer;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v10

    .line 1539
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1540
    .line 1541
    .line 1542
    move-result v10

    .line 1543
    const/4 v13, 0x2

    .line 1544
    if-ne v10, v13, :cond_1a

    .line 1545
    .line 1546
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1547
    .line 1548
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v10, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1552
    .line 1553
    .line 1554
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1555
    .line 1556
    .line 1557
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 1558
    .line 1559
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v14

    .line 1563
    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1564
    .line 1565
    .line 1566
    move-result v14

    .line 1567
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v14

    .line 1571
    invoke-virtual {v10, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1572
    .line 1573
    .line 1574
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1575
    .line 1576
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    invoke-direct {v1, v8}, Lcom/join/mgps/activity/PapaMainV3Fragment;->T1(Ljava/util/List;)Ljava/util/List;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v8

    .line 1583
    new-instance v10, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1584
    .line 1585
    invoke-direct {v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1586
    .line 1587
    .line 1588
    const/16 v14, 0x24

    .line 1589
    .line 1590
    invoke-virtual {v10, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1594
    .line 1595
    .line 1596
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v14

    .line 1600
    invoke-virtual {v10, v14}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1601
    .line 1602
    .line 1603
    iget-object v14, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1604
    .line 1605
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    .line 1607
    .line 1608
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->V:Ljava/util/List;

    .line 1609
    .line 1610
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v8

    .line 1614
    check-cast v8, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 1615
    .line 1616
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    .line 1618
    .line 1619
    new-instance v8, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1620
    .line 1621
    invoke-direct {v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v8, v11}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1625
    .line 1626
    .line 1627
    invoke-virtual {v8, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1628
    .line 1629
    .line 1630
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1631
    .line 1632
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    .line 1634
    .line 1635
    new-instance v8, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 1636
    .line 1637
    invoke-direct {v8}, Lcom/join/mgps/dto/MgpapaMainItemBean;-><init>()V

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v8, v12}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setShowtype(I)V

    .line 1641
    .line 1642
    .line 1643
    invoke-virtual {v8, v2}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setPage(I)V

    .line 1644
    .line 1645
    .line 1646
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 1647
    .line 1648
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v10

    .line 1652
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 1653
    .line 1654
    .line 1655
    move-result v10

    .line 1656
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v10

    .line 1660
    invoke-virtual {v8, v10}, Lcom/join/mgps/dto/MgpapaMainItemBean;->setObject(Ljava/lang/Object;)V

    .line 1661
    .line 1662
    .line 1663
    iget-object v10, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1664
    .line 1665
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1666
    .line 1667
    .line 1668
    :cond_1a
    :goto_a
    const/16 v8, 0x1f

    .line 1669
    .line 1670
    goto/16 :goto_7

    .line 1671
    .line 1672
    :cond_1b
    iget-object v3, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 1673
    .line 1674
    iget-object v4, v1, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 1675
    .line 1676
    invoke-virtual {v3, v4}, Lcom/join/mgps/adapter/o5;->P(Ljava/util/List;)V

    .line 1677
    .line 1678
    .line 1679
    const/4 v3, 0x1

    .line 1680
    if-ne v2, v3, :cond_1c

    .line 1681
    .line 1682
    const/4 v2, 0x0

    .line 1683
    invoke-direct {v1, v2, v5}, Lcom/join/mgps/activity/PapaMainV3Fragment;->h1(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1684
    .line 1685
    .line 1686
    goto :goto_b

    .line 1687
    :cond_1c
    iget-object v2, v1, Lcom/join/mgps/Util/z0$a;->c:Lcom/join/mgps/Util/z0;

    .line 1688
    .line 1689
    if-eqz v2, :cond_1d

    .line 1690
    .line 1691
    new-instance v3, Lcom/join/mgps/activity/PapaMainV3Fragment$m;

    .line 1692
    .line 1693
    invoke-direct {v3, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment$m;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 1694
    .line 1695
    .line 1696
    const-wide/16 v4, 0xc8

    .line 1697
    .line 1698
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    .line 1700
    .line 1701
    goto :goto_b

    .line 1702
    :catch_0
    move-exception v0

    .line 1703
    move-object v2, v0

    .line 1704
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1705
    .line 1706
    .line 1707
    :cond_1d
    :goto_b
    return-void
.end method

.method L0(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageId",
            "messageType"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0, p1, p2}, Lcom/join/mgps/Util/RequestBeanUtil;->getIgnoreMessageRequest(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Lcom/join/mgps/rpc/e;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/e;->H(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    return-void
.end method

.method M1(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionBeanSubList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_c

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_c

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_c

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_b

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    const/4 v6, 0x5

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-ne v7, v6, :cond_4

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/4 v7, 0x0

    .line 92
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    if-eqz v8, :cond_5

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-ne v9, v6, :cond_5

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    :cond_5
    if-eqz v2, :cond_6

    .line 114
    .line 115
    if-eqz v7, :cond_6

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_1

    .line 130
    .line 131
    invoke-virtual {v0, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_6
    if-eqz v2, :cond_7

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-eqz v2, :cond_1

    .line 142
    .line 143
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_1

    .line 156
    .line 157
    invoke-virtual {v0, v8}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_7
    if-eqz v7, :cond_8

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_1

    .line 177
    .line 178
    invoke-virtual {v0, v4}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_8
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 194
    .line 195
    if-nez v2, :cond_9

    .line 196
    .line 197
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 208
    .line 209
    :cond_9
    if-eqz v2, :cond_1

    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_a

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRef_crc_sign_id()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_1

    .line 238
    .line 239
    :cond_a
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_b
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 255
    .line 256
    if-eqz v2, :cond_1

    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_1

    .line 271
    .line 272
    invoke-virtual {v0, v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :cond_c
    return-void
.end method

.method N1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->stopRefresh()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->stopLoadMore()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method P()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "m1"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->reset()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->I0()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->T:Lcom/join/kotlin/presenter/HomeViewModle;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/kotlin/presenter/HomeViewModle;->initStat(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method P0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/activity/m8;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/m8;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method P1()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    return-void
.end method

.method Q0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->s2:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t2:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [F

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    aput v3, v1, v2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const v3, 0x7f071246

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x1

    .line 43
    aput v2, v1, v3

    .line 44
    .line 45
    const-string v2, "translationX"

    .line 46
    .line 47
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-wide/16 v1, 0xfa

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/join/mgps/activity/PapaMainV3Fragment$d;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment$d;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method R0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f2:Lcom/join/mgps/dto/RecomDatabean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getMain()Lcom/join/mgps/dto/ModleBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModleBean;->getPic_remote()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f2:Lcom/join/mgps/dto/RecomDatabean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/join/mgps/dto/AppBeanMain;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    return-void
.end method

.method S0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/activity/SearchListActivity1_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/SearchListActivity1_$q;->e(Ljava/lang/String;)Lcom/join/mgps/activity/SearchListActivity1_$q;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/SearchListActivity1_$q;->d(Z)Lcom/join/mgps/activity/SearchListActivity1_$q;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/SearchListActivity1_$q;->a(I)Lcom/join/mgps/activity/SearchListActivity1_$q;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Lcom/papa/sim/statistic/Event;->clickSearchButton:Lcom/papa/sim/statistic/Event;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v3, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v2, v0, v3}, Lcom/papa/sim/statistic/t;->n1(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r2:Ljava/lang/String;

    .line 92
    .line 93
    return-void
.end method

.method W0()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->A:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homeAllDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-class v2, Lcom/join/mgps/dto/PAPAHomeBeanV7;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/dto/PAPAHomeBeanV7;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string v2, "m1"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "\u663e\u793a\u4e3b\u754c\u9762   "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMain()V

    .line 67
    .line 68
    .line 69
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Z

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBg_color()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->U:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string v0, ""

    .line 89
    .line 90
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->U:Ljava/lang/String;

    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->n1()V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v2, "\u6570\u636e\u5e93\u6ca1\u6709\u6570\u636e\u4e0d\u663e\u793a\u4e3b\u754c\u9762   "

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Z

    .line 121
    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Y0()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method X0(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "pnx"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u5f00\u59cb\u52a0\u8f7d\u6570\u636e   "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v1:Z

    .line 36
    .line 37
    const-string v2, "0"

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-nez v1, :cond_8

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_8

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 51
    .line 52
    if-nez v1, :cond_8

    .line 53
    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_8

    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 63
    .line 64
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 65
    .line 66
    if-ne v0, v3, :cond_0

    .line 67
    .line 68
    const-string v0, "refresh"

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLoding()V

    .line 77
    .line 78
    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 80
    const/4 v1, 0x0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v4, Lcom/join/mgps/dto/RequestModel;

    .line 92
    .line 93
    invoke-direct {v4}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 99
    .line 100
    .line 101
    new-instance v5, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;

    .line 102
    .line 103
    invoke-direct {v5}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v6, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->u:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setGameId(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, p2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPage(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {v5, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setUid(I)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v6, "HOME_FAST_ENTRY_FOR_PC"

    .line 127
    .line 128
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v2}, Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;->setPositionMark(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v5}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v4}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-interface {v2, v4}, Lb7/i;->p1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcom/join/mgps/dto/ResponseModel;

    .line 162
    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v5, "\u5f00\u59cb\u52a0\u8f7d\u6570\u636e\u5b8c\u6210   "

    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide v5

    .line 177
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    if-eqz v2, :cond_4

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    const/16 v5, 0xc8

    .line 194
    .line 195
    if-ne v4, v5, :cond_4

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-eqz v4, :cond_4

    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Lcom/join/mgps/dto/PAPAHomeBeanV7;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .line 209
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_1

    .line 214
    .line 215
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->c1()V

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_1
    iput-boolean v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 222
    .line 223
    add-int/lit8 v1, p2, 0x1

    .line 224
    .line 225
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 226
    .line 227
    :goto_0
    if-ne p2, v3, :cond_3

    .line 228
    .line 229
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->o1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-eqz v1, :cond_2

    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7;->getTop_channel()Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$TopChannelDTO;->getBg_color()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->U:Ljava/lang/String;

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_2
    const-string v1, ""

    .line 250
    .line 251
    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->U:Ljava/lang/String;

    .line 252
    .line 253
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->n1()V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 257
    .line 258
    iget v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 259
    .line 260
    invoke-virtual {p0, v1, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMain()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    .line 265
    .line 266
    move-object v1, v2

    .line 267
    goto :goto_2

    .line 268
    :catch_0
    move-exception v1

    .line 269
    goto :goto_3

    .line 270
    :cond_4
    :try_start_2
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->c1()V

    .line 273
    .line 274
    .line 275
    iget-boolean v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Z

    .line 276
    .line 277
    if-eqz v2, :cond_5

    .line 278
    .line 279
    if-ne p2, v3, :cond_5

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLodingFailed()V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMain()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    .line 287
    .line 288
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->N1()V

    .line 289
    .line 290
    .line 291
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 292
    .line 293
    if-eqz v1, :cond_a

    .line 294
    .line 295
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :catchall_0
    move-exception v2

    .line 300
    move-object v7, v2

    .line 301
    move-object v2, v1

    .line 302
    move-object v1, v7

    .line 303
    goto :goto_4

    .line 304
    :catch_1
    move-exception v2

    .line 305
    move-object v7, v2

    .line 306
    move-object v2, v1

    .line 307
    move-object v1, v7

    .line 308
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    .line 310
    .line 311
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 312
    .line 313
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->c1()V

    .line 314
    .line 315
    .line 316
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Z

    .line 317
    .line 318
    if-eqz v1, :cond_6

    .line 319
    .line 320
    if-ne p2, v3, :cond_6

    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLodingFailed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    .line 324
    .line 325
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->N1()V

    .line 326
    .line 327
    .line 328
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 329
    .line 330
    if-eqz v2, :cond_a

    .line 331
    .line 332
    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :catchall_1
    move-exception v1

    .line 337
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->N1()V

    .line 338
    .line 339
    .line 340
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 341
    .line 342
    if-eqz v2, :cond_7

    .line 343
    .line 344
    invoke-virtual {p0, v2, p1, p2, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 345
    .line 346
    .line 347
    :cond_7
    throw v1

    .line 348
    :cond_8
    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->x:Z

    .line 349
    .line 350
    if-eqz p1, :cond_9

    .line 351
    .line 352
    if-ne p2, v3, :cond_9

    .line 353
    .line 354
    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->I:Z

    .line 355
    .line 356
    if-nez p1, :cond_9

    .line 357
    .line 358
    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v1:Z

    .line 359
    .line 360
    if-nez p1, :cond_9

    .line 361
    .line 362
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-nez p1, :cond_9

    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLodingFailed()V

    .line 369
    .line 370
    .line 371
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->N1()V

    .line 372
    .line 373
    .line 374
    :cond_a
    :goto_5
    return-void
.end method

.method Y0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "m1"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public Z0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->l1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method a1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->H:J

    .line 25
    .line 26
    new-instance v0, Lcom/join/android/app/component/video/h;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 29
    .line 30
    const-string v2, "PapaMainV3Fragment"

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/join/android/app/component/video/h;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/join/mgps/activity/MGMainActivity;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->S:Lcom/join/mgps/activity/MGMainActivity;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->L:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->L:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->M0()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->W0()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->I0()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->E0()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->D0()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public autoPlay()V
    .locals 0

    return-void
.end method

.method b1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method c1()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMore()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method d1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method e1(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "android.net.wifi.WIFI_STATE_CHANGED",
            "android.net.wifi.STATE_CHANGE",
            "android.net.conn.CONNECTIVITY_CHANGE",
            "android.net.wifi.SCAN_RESULTS"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l1:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMoreView(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l1:Z

    .line 33
    .line 34
    return-void
.end method

.method public f1()V
    .locals 0

    .line 1
    return-void
.end method

.method g1(Lcom/join/mgps/dto/CollectionBeanSub;)V
    .locals 2
    .param p1    # Lcom/join/mgps/dto/CollectionBeanSub;
        .annotation build Lorg/androidannotations/annotations/Receiver$Extra;
            value = "gameData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sub"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.paygamefinish",
            "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lt6/e0;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/PurchasedListTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/PurchasedListTable;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/PurchasedListTable;->setGame_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method k1(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.broadcast.bespeak.sussess"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "gameid"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->I1(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method m1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->D:Lcom/join/mgps/adapter/o5;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method n1()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    int-to-double v1, v0

    .line 14
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 15
    .line 16
    mul-double v1, v1, v3

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const v4, 0x7f0713ad

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-float/2addr v0, v3

    .line 33
    float-to-double v3, v0

    .line 34
    div-double/2addr v1, v3

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->U:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->W1(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->U:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "#F7F8F9"

    .line 44
    .line 45
    invoke-static {v0, v3, v1, v2}, Lcom/join/mgps/Util/UtilsMy;->a0(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Z:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->U:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->Z:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    filled-new-array {v2, v3}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    return-void
.end method

.method o1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->A:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->homeAllDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "\u4fdd\u5b58\u6570\u636e\u5b8c\u6210   "

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->J:Lcom/join/mgps/pref/f;

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->N:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->S:Lcom/join/mgps/activity/MGMainActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->x()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_5

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v1, v3, :cond_4

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq v1, v2, :cond_3

    .line 17
    .line 18
    const/4 v4, 0x6

    .line 19
    if-eq v1, v4, :cond_2

    .line 20
    .line 21
    const/4 v4, 0x7

    .line 22
    if-eq v1, v4, :cond_1

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    if-eq v1, v3, :cond_0

    .line 27
    .line 28
    const/16 v5, 0x30

    .line 29
    .line 30
    if-eq v1, v5, :cond_3

    .line 31
    .line 32
    packed-switch v1, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    const/16 v1, 0x9

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateProgressPartly()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 82
    .line 83
    .line 84
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "receiveStart: "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    filled-new-array {p1}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHiddenChanged(Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-string p1, "notify time"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {p1, v2}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-wide v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->H:J

    .line 20
    .line 21
    sub-long v4, v0, v2

    .line 22
    .line 23
    const-wide/32 v6, 0x36ee80

    .line 24
    .line 25
    .line 26
    const-wide/16 v8, 0x0

    .line 27
    .line 28
    cmp-long p1, v4, v6

    .line 29
    .line 30
    if-lez p1, :cond_0

    .line 31
    .line 32
    cmp-long p1, v2, v8

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->H:J

    .line 41
    .line 42
    const-string p1, "notify time lastUpdateTime"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->M:Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 55
    .line 56
    iget v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    cmp-long p1, v2, v8

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    iput-wide v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->H:J

    .line 71
    .line 72
    const-string p1, "notify time lastUpdateTime2"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {p1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->s1(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->v0()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 89
    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/join/android/app/component/video/h;->D()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/join/android/app/component/video/h;->y()V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->S:Lcom/join/mgps/activity/MGMainActivity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/android/app/component/video/h;->y()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R1:Z

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lq5/f;->d()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->w:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->w:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->z:Ljava/util/Map;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->w:Ljava/util/List;

    .line 62
    .line 63
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->y:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->M1(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->S:Lcom/join/mgps/activity/MGMainActivity;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/join/mgps/activity/MGMainActivity;->getPositionNum()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x3

    .line 77
    if-ne v1, v2, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->R:Lcom/join/android/app/component/video/h;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/join/android/app/component/video/h;->D()V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k2:Z

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 93
    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-lez v1, :cond_3

    .line 101
    .line 102
    invoke-direct {p0, v3, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->h1(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->s1(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->v0()V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v3, v2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->h1(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f071015

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->d2:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f071014

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e2:I

    .line 29
    .line 30
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLoding()V

    .line 2
    .line 3
    .line 4
    const-string v0, "m1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->O:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->P:I

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->X:Z

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method s0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    return-void
.end method

.method search()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u52a0\u8f7d\u4e2d"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u52a0\u8f7d\u5931\u8d25"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method showMain()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const-string v0, "\u663e\u793a\u4e3b\u754c\u9762main"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->M:Z

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->M:Z

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K0()V

    .line 51
    .line 52
    .line 53
    :cond_5
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method t0(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 45
    .line 46
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, "_"

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    const-string v1, ""

    .line 74
    .line 75
    :goto_1
    new-instance v3, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;

    .line 76
    .line 77
    invoke-direct {v3}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setApp_ver(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setGame_id(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setUid(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getMobile()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;->setMobile(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getDetialFollowAnd(Lcom/join/mgps/dto/RequestdetialFolowAndBeSpeak;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->h:Lcom/join/mgps/rpc/e;

    .line 107
    .line 108
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->M0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v1, 0x1

    .line 119
    if-ne v0, v1, :cond_1

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->I1(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    return-void
.end method

.method u0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->y1()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p2:I

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v1:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->E:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/join/mgps/dto/MgpapaMainItemBean;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getPage()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ne v5, v1, :cond_0

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/16 v6, 0x27

    .line 44
    .line 45
    if-ne v5, v6, :cond_1

    .line 46
    .line 47
    iget v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p2:I

    .line 48
    .line 49
    add-int/2addr v4, v1

    .line 50
    iput v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p2:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/16 v6, 0x22

    .line 58
    .line 59
    if-ne v5, v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/16 v6, 0x23

    .line 66
    .line 67
    if-ne v5, v6, :cond_0

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/join/mgps/dto/MgpapaMainItemBean;->getShowtype()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/16 v5, 0x24

    .line 74
    .line 75
    if-ne v4, v5, :cond_0

    .line 76
    .line 77
    iget v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1:I

    .line 78
    .line 79
    add-int/2addr v4, v1

    .line 80
    iput v4, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i1:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    new-instance v4, Lcom/join/mgps/activity/PapaMainV3Fragment$a;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 96
    .line 97
    invoke-direct {v4, p0, v5}, Lcom/join/mgps/activity/PapaMainV3Fragment$a;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t:Lcom/google/android/material/appbar/AppBarLayout;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    new-instance v0, Landroid/os/Handler;

    .line 138
    .line 139
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 143
    .line 144
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p1:Z

    .line 145
    .line 146
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->W:Landroid/os/Handler;

    .line 147
    .line 148
    new-instance v1, Lcom/join/mgps/activity/k8;

    .line 149
    .line 150
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/k8;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment;)V

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    mul-int/lit8 v2, v2, 0xa

    .line 160
    .line 161
    const/16 v3, 0x3e8

    .line 162
    .line 163
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    int-to-long v2, v2

    .line 168
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method updateUI(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "from"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->receiveError(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->receiveSuccess(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->receiveDelete(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->receiveStart(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method v0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q1:J

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/join/mgps/dto/RequestOnlineCouponArgs;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestOnlineCouponArgs;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v1, v0}, Lb7/i;->e1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/16 v2, 0xc8

    .line 58
    .line 59
    if-ne v1, v2, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/PapaHomeCheckNewDataBean;->getState()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v1, 0x1

    .line 74
    if-ne v0, v1, :cond_0

    .line 75
    .line 76
    new-instance v0, Landroid/os/Bundle;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "homeHasNewData"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->J:Lcom/join/mgps/pref/f;

    .line 87
    .line 88
    invoke-interface {v1, v0}, Lcom/join/mgps/pref/f;->callHomePageNewData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_0
    :goto_0
    return-void
.end method

.method v1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/android/app/common/manager/a;->h()Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->g:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/android/app/common/manager/a;->j(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method w0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 43
    .line 44
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_url_remote()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->j3(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    if-nez v0, :cond_7

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-ge p1, v0, :cond_2

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/APKUtils;->f0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-static {}, Lcom/join/mgps/va/overmind/i;->q()Lcom/join/mgps/va/overmind/i;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Lcom/join/mgps/va/overmind/i;->K(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez p1, :cond_4

    .line 200
    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 204
    .line 205
    invoke-static {p1}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getMod_info()Lcom/join/mgps/dto/ModInfoBean;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->a0(Landroid/content/Context;Lcom/join/mgps/dto/ModInfoBean;Lcom/join/mgps/dto/ExtBean;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-lez p1, :cond_6

    .line 235
    .line 236
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 247
    .line 248
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->b1(Landroid/content/Context;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 249
    .line 250
    .line 251
    :goto_1
    return-void

    .line 252
    :cond_7
    if-eqz v0, :cond_8

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    goto :goto_2

    .line 259
    :cond_8
    const/4 v2, 0x0

    .line 260
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    invoke-virtual {v0, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->get_from_type()I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {p1, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    const/16 v3, 0x2b

    .line 287
    .line 288
    if-lez p1, :cond_9

    .line 289
    .line 290
    const/16 v2, 0x2b

    .line 291
    .line 292
    :cond_9
    const/4 p1, 0x5

    .line 293
    if-eqz v2, :cond_10

    .line 294
    .line 295
    const/16 v4, 0xd

    .line 296
    .line 297
    if-eq v2, v4, :cond_f

    .line 298
    .line 299
    const/4 v4, 0x2

    .line 300
    if-eq v2, v4, :cond_e

    .line 301
    .line 302
    const/4 v4, 0x3

    .line 303
    if-eq v2, v4, :cond_d

    .line 304
    .line 305
    if-eq v2, p1, :cond_c

    .line 306
    .line 307
    const/4 v4, 0x6

    .line 308
    if-eq v2, v4, :cond_d

    .line 309
    .line 310
    const/4 v4, 0x7

    .line 311
    if-eq v2, v4, :cond_10

    .line 312
    .line 313
    const/16 v4, 0x2a

    .line 314
    .line 315
    if-eq v2, v4, :cond_b

    .line 316
    .line 317
    if-eq v2, v3, :cond_10

    .line 318
    .line 319
    packed-switch v2, :pswitch_data_0

    .line 320
    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 325
    .line 326
    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->w4(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 332
    .line 333
    invoke-static {p1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-nez p1, :cond_a

    .line 338
    .line 339
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 340
    .line 341
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    const-string v0, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 352
    .line 353
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->X2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 354
    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 358
    .line 359
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->O4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 360
    .line 361
    .line 362
    goto :goto_3

    .line 363
    :cond_c
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 364
    .line 365
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 370
    .line 371
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 372
    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_e
    :pswitch_2
    invoke-static {v0}, Lcom/php25/PDownload/d;->i(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_f
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 380
    .line 381
    invoke-static {p1, v0}, Lcom/php25/PDownload/d;->l(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_10
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->z0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-lez v2, :cond_11

    .line 398
    .line 399
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 400
    .line 401
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->z4(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto :goto_3

    .line 409
    :cond_11
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 410
    .line 411
    .line 412
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 413
    .line 414
    invoke-static {v2, v0}, Lcom/join/mgps/Util/UtilsMy;->o1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eqz v2, :cond_12

    .line 419
    .line 420
    goto :goto_3

    .line 421
    :cond_12
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-ne v2, p1, :cond_13

    .line 426
    .line 427
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 428
    .line 429
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->l1(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 430
    .line 431
    .line 432
    goto :goto_3

    .line 433
    :cond_13
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 434
    .line 435
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTp_down_url()Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getOther_down_switch()I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCdn_down_switch()I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    invoke-static {p1, v0, v2, v3, v1}, Lcom/join/mgps/Util/UtilsMy;->U0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/util/List;II)V

    .line 448
    .line 449
    .line 450
    :goto_3
    return-void

    .line 451
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public x1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPosition"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r2:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method y1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/join/mgps/dto/RequestOnlineCouponArgs;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestOnlineCouponArgs;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v1, v0}, Lb7/i;->A1(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method z0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ge v2, v3, :cond_1

    .line 64
    .line 65
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/join/mgps/dto/SScrollingTxtBeanV2;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/join/mgps/dto/SScrollingTxtBeanV2;->getWord()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 v2, 0x0

    .line 88
    :goto_1
    if-ltz v2, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    .line 116
    .line 117
    iput-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 118
    .line 119
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p0:Ljava/util/ArrayList;

    .line 126
    .line 127
    iget v3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->b1:I

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->v:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goSearchHintActivity(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r2:Ljava/lang/String;

    .line 144
    .line 145
    return-void
.end method
