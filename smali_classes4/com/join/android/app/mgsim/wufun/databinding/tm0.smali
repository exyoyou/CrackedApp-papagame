.class public Lcom/join/android/app/mgsim/wufun/databinding/tm0;
.super Lcom/join/android/app/mgsim/wufun/databinding/sm0;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final E:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final F:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final A:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final B:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final C:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D:J

.field private final q:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final t:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final u:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final v:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final w:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final x:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final y:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final z:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->F:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a103a

    .line 9
    .line 10
    .line 11
    const/16 v2, 0x11

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a1087

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x12

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0a0500

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x13

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->E:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->F:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/tm0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v14, 0x3

    .line 2
    aget-object v4, p3, v14

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x9

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/ImageView;

    const/16 v6, 0xa

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x13

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v13, 0x6

    aget-object v8, p3, v13

    check-cast v8, Landroid/widget/TextView;

    const/16 v9, 0x11

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v10, 0x12

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0x10

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/ImageView;

    const/4 v12, 0x7

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v16, 0x8

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v13, v16

    const/16 v16, 0xe

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v14, v16

    const/16 v16, 0xc

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/4 v3, 0x4

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/join/android/app/mgsim/wufun/databinding/sm0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->q:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 10
    aget-object v3, p3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->r:Landroid/widget/LinearLayout;

    .line 11
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 12
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->s:Landroid/view/View;

    .line 13
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xd

    .line 14
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->t:Landroid/widget/RelativeLayout;

    .line 15
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0xf

    .line 16
    aget-object v3, p3, v3

    check-cast v3, Landroid/view/View;

    iput-object v3, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->u:Landroid/view/View;

    .line 17
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 18
    aget-object v4, p3, v3

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x5

    .line 20
    aget-object v5, p3, v4

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->w:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->i:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->j:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->l:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    iget-object v5, v2, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->n:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 28
    invoke-virtual {v2, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 29
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->x:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v4}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->y:Landroid/view/View$OnClickListener;

    .line 31
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->z:Landroid/view/View$OnClickListener;

    .line 32
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->A:Landroid/view/View$OnClickListener;

    .line 33
    new-instance v1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v1, v2, v0}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v1, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->B:Landroid/view/View$OnClickListener;

    .line 34
    new-instance v0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {v0, v2, v3}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->C:Landroid/view/View$OnClickListener;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceId",
            "callbackArg_0"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_7

    .line 7
    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->o:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->p:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_7

    .line 17
    .line 18
    invoke-interface {v2, p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickMore(Landroid/view/View;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 19
    .line 20
    .line 21
    goto :goto_7

    .line 22
    :pswitch_1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->o:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->p:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_1
    if-eqz v0, :cond_7

    .line 31
    .line 32
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickRun(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 33
    .line 34
    .line 35
    goto :goto_7

    .line 36
    :pswitch_2
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->p:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_2
    if-eqz v0, :cond_7

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->uploadCloud()V

    .line 45
    .line 46
    .line 47
    goto :goto_7

    .line 48
    :pswitch_3
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->o:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->p:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    :goto_3
    if-eqz v0, :cond_7

    .line 57
    .line 58
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickDislike(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 59
    .line 60
    .line 61
    goto :goto_7

    .line 62
    :pswitch_4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->o:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->p:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    :goto_4
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onPraise(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 73
    .line 74
    .line 75
    goto :goto_7

    .line 76
    :pswitch_5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->o:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->p:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 79
    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    goto :goto_5

    .line 84
    :cond_5
    const/4 v2, 0x0

    .line 85
    :goto_5
    if-eqz v2, :cond_7

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    const/4 v0, 0x0

    .line 91
    :goto_6
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;->onClickImage(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    :goto_7
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->o:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 12
    .line 13
    const-wide/16 v6, 0x5

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    const/16 v12, 0x8

    .line 18
    .line 19
    cmp-long v15, v8, v4

    .line 20
    .line 21
    if-eqz v15, :cond_27

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getStatus()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 34
    .line 35
    .line 36
    move-result v16

    .line 37
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsFirstRun()I

    .line 38
    .line 39
    .line 40
    move-result v17

    .line 41
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v18

    .line 45
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsLike()I

    .line 46
    .line 47
    .line 48
    move-result v19

    .line 49
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    .line 50
    .line 51
    .line 52
    move-result v20

    .line 53
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v21

    .line 57
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getIsUnLike()I

    .line 58
    .line 59
    .line 60
    move-result v22

    .line 61
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowText()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v23

    .line 65
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getDownloadCount()I

    .line 66
    .line 67
    .line 68
    move-result v24

    .line 69
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowType()I

    .line 70
    .line 71
    .line 72
    move-result v25

    .line 73
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAddTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v26

    .line 77
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    move/from16 v13, v17

    .line 82
    .line 83
    move/from16 v14, v19

    .line 84
    .line 85
    move/from16 v10, v22

    .line 86
    .line 87
    move-object/from16 v11, v23

    .line 88
    .line 89
    move/from16 v6, v25

    .line 90
    .line 91
    move-wide/from16 v27, v26

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move-wide/from16 v27, v4

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v13, 0x0

    .line 103
    const/4 v14, 0x0

    .line 104
    const/16 v16, 0x0

    .line 105
    .line 106
    const/16 v18, 0x0

    .line 107
    .line 108
    const/16 v20, 0x0

    .line 109
    .line 110
    const/16 v21, 0x0

    .line 111
    .line 112
    const/16 v24, 0x0

    .line 113
    .line 114
    :goto_0
    const/4 v7, 0x1

    .line 115
    if-ne v8, v12, :cond_1

    .line 116
    .line 117
    const/4 v8, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    const/4 v8, 0x0

    .line 120
    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v16

    .line 124
    if-ne v13, v7, :cond_2

    .line 125
    .line 126
    const/4 v13, 0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    const/4 v13, 0x0

    .line 129
    :goto_2
    if-nez v18, :cond_3

    .line 130
    .line 131
    const/16 v29, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    const/16 v29, 0x0

    .line 135
    .line 136
    :goto_3
    if-ne v14, v7, :cond_4

    .line 137
    .line 138
    const/4 v14, 0x1

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    const/4 v14, 0x0

    .line 141
    :goto_4
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v20

    .line 145
    if-ne v10, v7, :cond_5

    .line 146
    .line 147
    const/4 v10, 0x1

    .line 148
    goto :goto_5

    .line 149
    :cond_5
    const/4 v10, 0x0

    .line 150
    :goto_5
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v24

    .line 154
    if-ne v6, v7, :cond_6

    .line 155
    .line 156
    const/4 v6, 0x1

    .line 157
    goto :goto_6

    .line 158
    :cond_6
    const/4 v6, 0x0

    .line 159
    :goto_6
    cmp-long v30, v27, v4

    .line 160
    .line 161
    if-eqz v30, :cond_7

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_7
    const/4 v7, 0x0

    .line 165
    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v15, :cond_9

    .line 170
    .line 171
    if-eqz v8, :cond_8

    .line 172
    .line 173
    const-wide/16 v30, 0x1000

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_8
    const-wide/16 v30, 0x800

    .line 177
    .line 178
    :goto_8
    or-long v2, v2, v30

    .line 179
    .line 180
    :cond_9
    const-wide/16 v25, 0x5

    .line 181
    .line 182
    and-long v30, v2, v25

    .line 183
    .line 184
    cmp-long v15, v30, v4

    .line 185
    .line 186
    if-eqz v15, :cond_b

    .line 187
    .line 188
    if-eqz v13, :cond_a

    .line 189
    .line 190
    const-wide/16 v30, 0x100

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_a
    const-wide/16 v30, 0x80

    .line 194
    .line 195
    :goto_9
    or-long v2, v2, v30

    .line 196
    .line 197
    :cond_b
    and-long v30, v2, v25

    .line 198
    .line 199
    cmp-long v15, v30, v4

    .line 200
    .line 201
    if-eqz v15, :cond_d

    .line 202
    .line 203
    if-eqz v29, :cond_c

    .line 204
    .line 205
    const-wide/16 v30, 0x400

    .line 206
    .line 207
    goto :goto_a

    .line 208
    :cond_c
    const-wide/16 v30, 0x200

    .line 209
    .line 210
    :goto_a
    or-long v2, v2, v30

    .line 211
    .line 212
    :cond_d
    and-long v30, v2, v25

    .line 213
    .line 214
    cmp-long v15, v30, v4

    .line 215
    .line 216
    if-eqz v15, :cond_f

    .line 217
    .line 218
    if-eqz v14, :cond_e

    .line 219
    .line 220
    const-wide/32 v30, 0x10000

    .line 221
    .line 222
    .line 223
    goto :goto_b

    .line 224
    :cond_e
    const-wide/32 v30, 0x8000

    .line 225
    .line 226
    .line 227
    :goto_b
    or-long v2, v2, v30

    .line 228
    .line 229
    :cond_f
    and-long v30, v2, v25

    .line 230
    .line 231
    cmp-long v15, v30, v4

    .line 232
    .line 233
    if-eqz v15, :cond_11

    .line 234
    .line 235
    if-eqz v10, :cond_10

    .line 236
    .line 237
    const-wide/32 v30, 0x400000

    .line 238
    .line 239
    .line 240
    goto :goto_c

    .line 241
    :cond_10
    const-wide/32 v30, 0x200000

    .line 242
    .line 243
    .line 244
    :goto_c
    or-long v2, v2, v30

    .line 245
    .line 246
    :cond_11
    and-long v30, v2, v25

    .line 247
    .line 248
    cmp-long v15, v30, v4

    .line 249
    .line 250
    if-eqz v15, :cond_13

    .line 251
    .line 252
    if-eqz v6, :cond_12

    .line 253
    .line 254
    const-wide/32 v30, 0x100000

    .line 255
    .line 256
    .line 257
    goto :goto_d

    .line 258
    :cond_12
    const-wide/32 v30, 0x80000

    .line 259
    .line 260
    .line 261
    :goto_d
    or-long v2, v2, v30

    .line 262
    .line 263
    :cond_13
    and-long v30, v2, v25

    .line 264
    .line 265
    cmp-long v15, v30, v4

    .line 266
    .line 267
    if-eqz v15, :cond_15

    .line 268
    .line 269
    if-eqz v7, :cond_14

    .line 270
    .line 271
    const-wide/32 v22, 0x40000

    .line 272
    .line 273
    .line 274
    or-long v2, v2, v22

    .line 275
    .line 276
    goto :goto_e

    .line 277
    :cond_14
    const-wide/32 v30, 0x20000

    .line 278
    .line 279
    .line 280
    or-long v2, v2, v30

    .line 281
    .line 282
    :cond_15
    :goto_e
    const/4 v15, 0x0

    .line 283
    if-eqz v9, :cond_16

    .line 284
    .line 285
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    :cond_16
    const-wide/16 v25, 0x5

    .line 294
    .line 295
    and-long v31, v2, v25

    .line 296
    .line 297
    cmp-long v12, v31, v4

    .line 298
    .line 299
    if-eqz v12, :cond_18

    .line 300
    .line 301
    if-eqz v15, :cond_17

    .line 302
    .line 303
    const-wide/32 v31, 0x1000000

    .line 304
    .line 305
    .line 306
    goto :goto_f

    .line 307
    :cond_17
    const-wide/32 v31, 0x800000

    .line 308
    .line 309
    .line 310
    :goto_f
    or-long v2, v2, v31

    .line 311
    .line 312
    :cond_18
    if-eqz v8, :cond_19

    .line 313
    .line 314
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->l:Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    const v12, 0x7f080d4d

    .line 321
    .line 322
    .line 323
    goto :goto_10

    .line 324
    :cond_19
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->l:Landroid/widget/TextView;

    .line 325
    .line 326
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    const v12, 0x7f080d1c

    .line 331
    .line 332
    .line 333
    :goto_10
    invoke-static {v8, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    if-eqz v13, :cond_1a

    .line 338
    .line 339
    const/4 v12, 0x0

    .line 340
    goto :goto_11

    .line 341
    :cond_1a
    const/16 v12, 0x8

    .line 342
    .line 343
    :goto_11
    if-eqz v29, :cond_1b

    .line 344
    .line 345
    const/16 v13, 0x8

    .line 346
    .line 347
    goto :goto_12

    .line 348
    :cond_1b
    const/4 v13, 0x0

    .line 349
    :goto_12
    if-eqz v14, :cond_1c

    .line 350
    .line 351
    iget-object v14, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->j:Landroid/widget/ImageView;

    .line 352
    .line 353
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 354
    .line 355
    .line 356
    move-result-object v14

    .line 357
    const v4, 0x7f080432

    .line 358
    .line 359
    .line 360
    invoke-static {v14, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    goto :goto_13

    .line 365
    :cond_1c
    iget-object v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->j:Landroid/widget/ImageView;

    .line 366
    .line 367
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    const v5, 0x7f080431

    .line 372
    .line 373
    .line 374
    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    :goto_13
    iget-object v5, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->c:Landroid/widget/ImageView;

    .line 379
    .line 380
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    if-eqz v10, :cond_1d

    .line 385
    .line 386
    const v10, 0x7f080504

    .line 387
    .line 388
    .line 389
    goto :goto_14

    .line 390
    :cond_1d
    const v10, 0x7f080503

    .line 391
    .line 392
    .line 393
    :goto_14
    invoke-static {v5, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    if-eqz v15, :cond_1e

    .line 398
    .line 399
    const/16 v15, 0x8

    .line 400
    .line 401
    goto :goto_15

    .line 402
    :cond_1e
    const/4 v15, 0x0

    .line 403
    :goto_15
    if-eqz v9, :cond_1f

    .line 404
    .line 405
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    goto :goto_16

    .line 410
    :cond_1f
    const/4 v0, 0x0

    .line 411
    :goto_16
    const-wide/32 v9, 0x80005

    .line 412
    .line 413
    .line 414
    and-long/2addr v9, v2

    .line 415
    const-wide/16 v31, 0x0

    .line 416
    .line 417
    cmp-long v14, v9, v31

    .line 418
    .line 419
    if-eqz v14, :cond_21

    .line 420
    .line 421
    if-eqz v0, :cond_20

    .line 422
    .line 423
    const-wide/16 v9, 0x10

    .line 424
    .line 425
    goto :goto_17

    .line 426
    :cond_20
    const-wide/16 v9, 0x8

    .line 427
    .line 428
    :goto_17
    or-long/2addr v2, v9

    .line 429
    :cond_21
    const-wide/16 v9, 0x5

    .line 430
    .line 431
    and-long v33, v2, v9

    .line 432
    .line 433
    cmp-long v9, v33, v31

    .line 434
    .line 435
    if-eqz v9, :cond_23

    .line 436
    .line 437
    if-eqz v0, :cond_22

    .line 438
    .line 439
    const-wide/16 v9, 0x40

    .line 440
    .line 441
    or-long/2addr v2, v9

    .line 442
    const-wide/16 v9, 0x4000

    .line 443
    .line 444
    goto :goto_18

    .line 445
    :cond_22
    const-wide/16 v9, 0x20

    .line 446
    .line 447
    or-long/2addr v2, v9

    .line 448
    const-wide/16 v9, 0x2000

    .line 449
    .line 450
    :goto_18
    or-long/2addr v2, v9

    .line 451
    :cond_23
    if-eqz v0, :cond_24

    .line 452
    .line 453
    const/16 v9, 0x8

    .line 454
    .line 455
    goto :goto_19

    .line 456
    :cond_24
    const/4 v9, 0x0

    .line 457
    :goto_19
    if-eqz v0, :cond_25

    .line 458
    .line 459
    const/4 v10, 0x0

    .line 460
    goto :goto_1a

    .line 461
    :cond_25
    const/16 v10, 0x8

    .line 462
    .line 463
    :goto_1a
    if-eqz v0, :cond_26

    .line 464
    .line 465
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->r:Landroid/widget/LinearLayout;

    .line 466
    .line 467
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    const v14, 0x7f080d14

    .line 472
    .line 473
    .line 474
    goto :goto_1b

    .line 475
    :cond_26
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->r:Landroid/widget/LinearLayout;

    .line 476
    .line 477
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const v14, 0x7f080d13

    .line 482
    .line 483
    .line 484
    :goto_1b
    invoke-static {v0, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    move-object/from16 v14, v21

    .line 489
    .line 490
    const-wide/32 v22, 0x40000

    .line 491
    .line 492
    .line 493
    move-object/from16 v21, v4

    .line 494
    .line 495
    move-object/from16 v4, v24

    .line 496
    .line 497
    move-object/from16 v35, v18

    .line 498
    .line 499
    move-object/from16 v18, v8

    .line 500
    .line 501
    move-object/from16 v8, v20

    .line 502
    .line 503
    move-object/from16 v20, v16

    .line 504
    .line 505
    move-object/from16 v16, v11

    .line 506
    .line 507
    move-object/from16 v11, v35

    .line 508
    .line 509
    move/from16 v36, v15

    .line 510
    .line 511
    move v15, v9

    .line 512
    move/from16 v9, v36

    .line 513
    .line 514
    goto :goto_1c

    .line 515
    :cond_27
    const/4 v0, 0x0

    .line 516
    const/4 v4, 0x0

    .line 517
    const/4 v5, 0x0

    .line 518
    const/4 v6, 0x0

    .line 519
    const/4 v7, 0x0

    .line 520
    const/4 v8, 0x0

    .line 521
    const/4 v9, 0x0

    .line 522
    const/4 v10, 0x0

    .line 523
    const/4 v11, 0x0

    .line 524
    const/4 v12, 0x0

    .line 525
    const/4 v13, 0x0

    .line 526
    const/4 v14, 0x0

    .line 527
    const/4 v15, 0x0

    .line 528
    const/16 v16, 0x0

    .line 529
    .line 530
    const/16 v18, 0x0

    .line 531
    .line 532
    const/16 v20, 0x0

    .line 533
    .line 534
    const/16 v21, 0x0

    .line 535
    .line 536
    const-wide/32 v22, 0x40000

    .line 537
    .line 538
    .line 539
    const-wide/16 v27, 0x0

    .line 540
    .line 541
    :goto_1c
    and-long v22, v2, v22

    .line 542
    .line 543
    const-wide/16 v31, 0x0

    .line 544
    .line 545
    cmp-long v24, v22, v31

    .line 546
    .line 547
    if-eqz v24, :cond_28

    .line 548
    .line 549
    const-wide/16 v22, 0x3e8

    .line 550
    .line 551
    mul-long v27, v27, v22

    .line 552
    .line 553
    invoke-static/range {v27 .. v28}, Lcom/join/mgps/Util/e0;->u(J)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v22

    .line 557
    goto :goto_1d

    .line 558
    :cond_28
    const/16 v22, 0x0

    .line 559
    .line 560
    :goto_1d
    const-wide/16 v23, 0x5

    .line 561
    .line 562
    and-long v23, v2, v23

    .line 563
    .line 564
    cmp-long v25, v23, v31

    .line 565
    .line 566
    if-eqz v25, :cond_2a

    .line 567
    .line 568
    if-eqz v6, :cond_29

    .line 569
    .line 570
    const/16 v30, 0x8

    .line 571
    .line 572
    goto :goto_1e

    .line 573
    :cond_29
    move/from16 v30, v15

    .line 574
    .line 575
    :goto_1e
    move/from16 v6, v30

    .line 576
    .line 577
    goto :goto_1f

    .line 578
    :cond_2a
    const/4 v6, 0x0

    .line 579
    :goto_1f
    if-eqz v25, :cond_2c

    .line 580
    .line 581
    if-eqz v7, :cond_2b

    .line 582
    .line 583
    goto :goto_20

    .line 584
    :cond_2b
    const-string v22, ""

    .line 585
    .line 586
    :goto_20
    move-object/from16 v7, v22

    .line 587
    .line 588
    goto :goto_21

    .line 589
    :cond_2c
    const/4 v7, 0x0

    .line 590
    :goto_21
    move-wide/from16 v22, v2

    .line 591
    .line 592
    if-eqz v25, :cond_2d

    .line 593
    .line 594
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->b:Landroid/widget/TextView;

    .line 595
    .line 596
    invoke-static {v2, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 597
    .line 598
    .line 599
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->c:Landroid/widget/ImageView;

    .line 600
    .line 601
    invoke-static {v2, v5}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 602
    .line 603
    .line 604
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->d:Landroid/widget/TextView;

    .line 605
    .line 606
    invoke-static {v2, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 607
    .line 608
    .line 609
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->f:Landroid/widget/TextView;

    .line 610
    .line 611
    invoke-static {v2, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 612
    .line 613
    .line 614
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->r:Landroid/widget/LinearLayout;

    .line 615
    .line 616
    invoke-static {v2, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 617
    .line 618
    .line 619
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->s:Landroid/view/View;

    .line 620
    .line 621
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 622
    .line 623
    .line 624
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->t:Landroid/widget/RelativeLayout;

    .line 625
    .line 626
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 627
    .line 628
    .line 629
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->u:Landroid/view/View;

    .line 630
    .line 631
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 632
    .line 633
    .line 634
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 635
    .line 636
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 637
    .line 638
    .line 639
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 640
    .line 641
    const/4 v2, 0x0

    .line 642
    const/4 v3, 0x0

    .line 643
    invoke-static {v0, v11, v2, v3}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 644
    .line 645
    .line 646
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->w:Landroid/widget/LinearLayout;

    .line 647
    .line 648
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 649
    .line 650
    .line 651
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->i:Landroid/widget/ImageView;

    .line 652
    .line 653
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 654
    .line 655
    .line 656
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->j:Landroid/widget/ImageView;

    .line 657
    .line 658
    move-object/from16 v4, v21

    .line 659
    .line 660
    invoke-static {v0, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 661
    .line 662
    .line 663
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->k:Landroid/widget/TextView;

    .line 664
    .line 665
    move-object/from16 v2, v20

    .line 666
    .line 667
    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 668
    .line 669
    .line 670
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->l:Landroid/widget/TextView;

    .line 671
    .line 672
    move-object/from16 v8, v18

    .line 673
    .line 674
    invoke-static {v0, v8}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 675
    .line 676
    .line 677
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->l:Landroid/widget/TextView;

    .line 678
    .line 679
    move-object/from16 v11, v16

    .line 680
    .line 681
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 682
    .line 683
    .line 684
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->m:Landroid/widget/TextView;

    .line 685
    .line 686
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 687
    .line 688
    .line 689
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->n:Landroid/widget/TextView;

    .line 690
    .line 691
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 692
    .line 693
    .line 694
    :cond_2d
    const-wide/16 v2, 0x4

    .line 695
    .line 696
    and-long v2, v22, v2

    .line 697
    .line 698
    const-wide/16 v4, 0x0

    .line 699
    .line 700
    cmp-long v0, v2, v4

    .line 701
    .line 702
    if-eqz v0, :cond_2e

    .line 703
    .line 704
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->c:Landroid/widget/ImageView;

    .line 705
    .line 706
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->x:Landroid/view/View$OnClickListener;

    .line 707
    .line 708
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 712
    .line 713
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->B:Landroid/view/View$OnClickListener;

    .line 714
    .line 715
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    .line 717
    .line 718
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->i:Landroid/widget/ImageView;

    .line 719
    .line 720
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->A:Landroid/view/View$OnClickListener;

    .line 721
    .line 722
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    .line 724
    .line 725
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->j:Landroid/widget/ImageView;

    .line 726
    .line 727
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->C:Landroid/view/View$OnClickListener;

    .line 728
    .line 729
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    .line 731
    .line 732
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->l:Landroid/widget/TextView;

    .line 733
    .line 734
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->y:Landroid/view/View$OnClickListener;

    .line 735
    .line 736
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    .line 738
    .line 739
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->m:Landroid/widget/TextView;

    .line 740
    .line 741
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->z:Landroid/view/View$OnClickListener;

    .line 742
    .line 743
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    .line 745
    .line 746
    :cond_2e
    return-void

    .line 747
    :catchall_0
    move-exception v0

    .line 748
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x4

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1b

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->u(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x9

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    return p1
.end method

.method public t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->p:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x9

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public u(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ItemData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->o:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tm0;->D:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x1b

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method
