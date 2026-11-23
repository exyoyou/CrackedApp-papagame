.class public Lcom/join/mgps/activity/CommentDetailActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/adapter/CommentDetailAdapter$h;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0165
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0xa
    }
.end annotation


# instance fields
.field private accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

.field private allSubCommentBeanXs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field back_image:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field bespeakSwitch:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field btn_chat_extension:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_praise:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btn_chat_send:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private commentDetailTopLl:Landroid/widget/LinearLayout;

.field commentId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field commentScoreSwitch:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field comment_detail_list:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

.field private comment_head_num_tx:Landroid/widget/TextView;

.field private content:Landroid/widget/TextView;

.field private contentWeb:Lcom/join/mgps/customview/CopyTextViewNew;

.field private context:Landroid/content/Context;

.field private dataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentDetailAdapter$j;",
            ">;"
        }
    .end annotation
.end field

.field private deleteTx:Landroid/widget/TextView;

.field deletedTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog:Lcom/join/mgps/dialog/f1;

.field private down:Landroid/widget/ImageView;

.field private downNumber:Landroid/widget/TextView;

.field private editLl:Landroid/widget/LinearLayout;

.field private editTx:Landroid/widget/TextView;

.field edit_comment_count:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameIsStart:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private gameName:Landroid/widget/TextView;

.field gameType:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private headView:Landroid/view/View;

.field imTopRight:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field inputLl:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private isAuth:Landroid/widget/ImageView;

.field private isConnoisseurs:Landroid/widget/TextView;

.field private isGood:Landroid/widget/ImageView;

.field private isLoading:Z

.field private isMe:Landroid/widget/TextView;

.field private levelTv:Lcom/join/mgps/customview/VipView;

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mAdapter:Lcom/join/mgps/adapter/CommentDetailAdapter;

.field private mContext:Landroid/content/Context;

.field mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

.field private message:Landroid/widget/ImageView;

.field private messageNumber:Landroid/widget/TextView;

.field private more:Landroid/widget/TextView;

.field packageName:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private parise:Landroid/widget/ImageView;

.field private pariseNumber:Landroid/widget/TextView;

.field private phoneModle:Landroid/widget/TextView;

.field private pn:I

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private replyCommentId:Ljava/lang/String;

.field private replyContent:Ljava/lang/String;

.field private replyMainCommentId:Ljava/lang/String;

.field private replyPn:I

.field private replyPositionID:Ljava/lang/String;

.field private replyUid:Ljava/lang/String;

.field private replyUserName:Ljava/lang/String;

.field rpcClient:Lcom/join/mgps/rpc/f;

.field sgcSwitch:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private sort:Ljava/lang/String;

.field private time:Landroid/widget/TextView;

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private uid:I

.field private usericon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private username:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isLoading:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 26
    .line 27
    iput-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPn:I

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPositionID:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 36
    .line 37
    const-string v0, "desc"

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->sort:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/join/mgps/activity/CommentDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/CommentDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/CommentDetailActivity;)Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pariseNumber:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->praise(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->downNumber:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->unPraise(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1702(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPositionID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1800(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lcom/join/mgps/activity/CommentDetailActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyMainCommentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyCommentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyCommentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/join/mgps/activity/CommentDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPn:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/join/mgps/activity/CommentDetailActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPn:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/CommentDetailActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isLoading:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->sort:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->sort:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method private addViewItem(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subCommentBeanXs",
            "isFirst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_3

    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 16
    .line 17
    new-instance v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    .line 18
    .line 19
    sget-object v4, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    .line 20
    .line 21
    new-instance v5, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;

    .line 22
    .line 23
    invoke-direct {v5, v2}, Lcom/join/mgps/adapter/CommentDetailAdapter$j$a;-><init>(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-lez v3, :cond_2

    .line 53
    .line 54
    new-instance v3, Lcom/join/mgps/adapter/CommentDetailAdapter$j;

    .line 55
    .line 56
    sget-object v4, Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;

    .line 57
    .line 58
    new-instance v5, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/4 v7, 0x1

    .line 65
    invoke-direct {v5, v6, v2, v0, v7}, Lcom/join/mgps/adapter/CommentDetailAdapter$j$b;-><init>(Ljava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;IZ)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/CommentDetailAdapter$j;-><init>(Lcom/join/mgps/adapter/CommentDetailAdapter$ViewType;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-void
.end method

.method private getCommentDetailRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sort"
        }
    .end annotation

    .line 1
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->token:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentId:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameId:Ljava/lang/String;

    .line 46
    .line 47
    iget v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 48
    .line 49
    iget v5, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 50
    .line 51
    const/16 v6, 0xa

    .line 52
    .line 53
    iget-object v8, p0, Lcom/join/mgps/activity/CommentDetailActivity;->token:Ljava/lang/String;

    .line 54
    .line 55
    move-object v1, p1

    .line 56
    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentDetailList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private initHeadView()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0166

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 14
    .line 15
    const v1, 0x7f0a03ce

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentDetailTopLl:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 27
    .line 28
    const v1, 0x7f0a00e6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 40
    .line 41
    const v1, 0x7f0a1b1a

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->usericon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 53
    .line 54
    const v1, 0x7f0a0713

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameName:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 66
    .line 67
    const v1, 0x7f0a1b0c

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->username:Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 79
    .line 80
    const v1, 0x7f0a0e59

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->levelTv:Lcom/join/mgps/customview/VipView;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 92
    .line 93
    const v1, 0x7f0a0978

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isMe:Landroid/widget/TextView;

    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 105
    .line 106
    const v1, 0x7f0a0970

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isConnoisseurs:Landroid/widget/TextView;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 118
    .line 119
    const v1, 0x7f0a03dd

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/TextView;

    .line 127
    .line 128
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_num_tx:Landroid/widget/TextView;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 131
    .line 132
    const v1, 0x7f0a174b

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->time:Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 144
    .line 145
    const v1, 0x7f0a0424

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/widget/TextView;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->content:Landroid/widget/TextView;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 157
    .line 158
    const v1, 0x7f0a042a

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/join/mgps/customview/CopyTextViewNew;

    .line 166
    .line 167
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->contentWeb:Lcom/join/mgps/customview/CopyTextViewNew;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 170
    .line 171
    const v1, 0x7f0a1087

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->more:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 183
    .line 184
    const v1, 0x7f0a096f

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/widget/ImageView;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isAuth:Landroid/widget/ImageView;

    .line 194
    .line 195
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 196
    .line 197
    const v1, 0x7f0a0977

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/ImageView;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isGood:Landroid/widget/ImageView;

    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 209
    .line 210
    const v1, 0x7f0a03db

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 218
    .line 219
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 220
    .line 221
    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 231
    .line 232
    const v2, 0x7f0a055c

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/widget/LinearLayout;

    .line 240
    .line 241
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->editLl:Landroid/widget/LinearLayout;

    .line 242
    .line 243
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 244
    .line 245
    const v2, 0x7f0a0564

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Landroid/widget/TextView;

    .line 253
    .line 254
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->editTx:Landroid/widget/TextView;

    .line 255
    .line 256
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 257
    .line 258
    const v2, 0x7f0a0488

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Landroid/widget/TextView;

    .line 266
    .line 267
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->deleteTx:Landroid/widget/TextView;

    .line 268
    .line 269
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 270
    .line 271
    const v2, 0x7f0a1248

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Landroid/widget/TextView;

    .line 279
    .line 280
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->phoneModle:Landroid/widget/TextView;

    .line 281
    .line 282
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 283
    .line 284
    const v2, 0x7f0a1219

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Landroid/widget/ImageView;

    .line 292
    .line 293
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->parise:Landroid/widget/ImageView;

    .line 294
    .line 295
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 296
    .line 297
    const v2, 0x7f0a121a

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Landroid/widget/TextView;

    .line 305
    .line 306
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pariseNumber:Landroid/widget/TextView;

    .line 307
    .line 308
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 309
    .line 310
    const v2, 0x7f0a04f1

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Landroid/widget/ImageView;

    .line 318
    .line 319
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->down:Landroid/widget/ImageView;

    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 322
    .line 323
    const v2, 0x7f0a0504

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Landroid/widget/TextView;

    .line 331
    .line 332
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->downNumber:Landroid/widget/TextView;

    .line 333
    .line 334
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 335
    .line 336
    const v2, 0x7f0a1032

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Landroid/widget/ImageView;

    .line 344
    .line 345
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->message:Landroid/widget/ImageView;

    .line 346
    .line 347
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 348
    .line 349
    const v2, 0x7f0a103d

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, Landroid/widget/TextView;

    .line 357
    .line 358
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->messageNumber:Landroid/widget/TextView;

    .line 359
    .line 360
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->more:Landroid/widget/TextView;

    .line 361
    .line 362
    const/16 v2, 0x8

    .line 363
    .line 364
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->content:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->contentWeb:Lcom/join/mgps/customview/CopyTextViewNew;

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->contentWeb:Lcom/join/mgps/customview/CopyTextViewNew;

    .line 378
    .line 379
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$o;

    .line 380
    .line 381
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$o;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentDetailTopLl:Landroid/widget/LinearLayout;

    .line 388
    .line 389
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$p;

    .line 390
    .line 391
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$p;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    .line 396
    .line 397
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->editTx:Landroid/widget/TextView;

    .line 398
    .line 399
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$q;

    .line 400
    .line 401
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$q;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    .line 406
    .line 407
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->deleteTx:Landroid/widget/TextView;

    .line 408
    .line 409
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$r;

    .line 410
    .line 411
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$r;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    .line 416
    .line 417
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->parise:Landroid/widget/ImageView;

    .line 418
    .line 419
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$s;

    .line 420
    .line 421
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$s;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->down:Landroid/widget/ImageView;

    .line 428
    .line 429
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$a;

    .line 430
    .line 431
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$a;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    .line 436
    .line 437
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->message:Landroid/widget/ImageView;

    .line 438
    .line 439
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$b;

    .line 440
    .line 441
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$b;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method private praise(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "v",
            "tv",
            "mainCommentBean"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->subPraise()V

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroid/widget/ImageView;

    .line 15
    .line 16
    const p2, 0x7f081324

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->topPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .line 45
    const v1, 0x7f081329

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const v1, 0x7f010095

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/join/mgps/activity/CommentDetailActivity$d;

    .line 64
    .line 65
    invoke-direct {p1, p0, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity$d;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method private showInput()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$j;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$j;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, 0xc8

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private unPraise(Landroid/view/View;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "v",
            "tv",
            "mainCommentBean"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_despise()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->subDespise()V

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroid/widget/ImageView;

    .line 15
    .line 16
    const p2, 0x7f08050f

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->onUnPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p3, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .line 45
    const v1, 0x7f080511

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const v1, 0x7f010095

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/join/mgps/activity/CommentDetailActivity$c;

    .line 64
    .line 65
    invoke-direct {p1, p0, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity$c;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method


# virtual methods
.method public addDespise()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-wide/16 v4, 0x1

    .line 29
    .line 30
    add-long/2addr v0, v4

    .line 31
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public addPraise()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-wide/16 v4, 0x1

    .line 29
    .line 30
    add-long/2addr v0, v4

    .line 31
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ""

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method afterView()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->title_textview:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "\u70b9\u8bc4\u8be6\u60c5"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->v(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->token:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentId:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyMainCommentId:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyCommentId:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->initHeadView()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/view/ClearEditText;->setShowDeleteIcon(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->btn_chat_send:Landroid/widget/Button;

    .line 84
    .line 85
    new-instance v2, Lcom/join/mgps/activity/CommentDetailActivity$k;

    .line 86
    .line 87
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/CommentDetailActivity$k;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLoding()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->sort:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentList(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 106
    .line 107
    invoke-direct {v0, v2, v3, p0}, Lcom/join/mgps/adapter/CommentDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/CommentDetailAdapter$h;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mAdapter:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->headView:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mAdapter:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 127
    .line 128
    const/16 v2, 0xa

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 139
    .line 140
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$l;

    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$l;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 149
    .line 150
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$m;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CommentDetailActivity$m;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method bottomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "childCommentId",
            "name",
            "uid",
            "id",
            "pn"
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    new-instance v9, Lcom/join/mgps/customview/t;

    .line 3
    .line 4
    iget-object v0, v8, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 5
    .line 6
    const v1, 0x7f1301b0

    .line 7
    .line 8
    .line 9
    invoke-direct {v9, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0d016f

    .line 13
    .line 14
    .line 15
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a1370

    .line 19
    .line 20
    .line 21
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v10, v0

    .line 26
    check-cast v10, Landroid/widget/TextView;

    .line 27
    .line 28
    const v0, 0x7f0a1373

    .line 29
    .line 30
    .line 31
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v11, v0

    .line 36
    check-cast v11, Landroid/widget/TextView;

    .line 37
    .line 38
    const v0, 0x7f0a02f7

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v12, v0

    .line 46
    check-cast v12, Landroid/widget/TextView;

    .line 47
    .line 48
    new-instance v13, Lcom/join/mgps/activity/CommentDetailActivity$g;

    .line 49
    .line 50
    move-object v0, v13

    .line 51
    move-object v1, p0

    .line 52
    move-object v2, v9

    .line 53
    move-object/from16 v3, p2

    .line 54
    .line 55
    move-object v4, p1

    .line 56
    move/from16 v5, p5

    .line 57
    .line 58
    move-object/from16 v6, p3

    .line 59
    .line 60
    move-object/from16 v7, p4

    .line 61
    .line 62
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity$g;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$h;

    .line 69
    .line 70
    move-object v1, p1

    .line 71
    invoke-direct {v0, p0, v9, p1}, Lcom/join/mgps/activity/CommentDetailActivity$h;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$i;

    .line 78
    .line 79
    invoke-direct {v0, p0, v9}, Lcom/join/mgps/activity/CommentDetailActivity$i;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/customview/t;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/16 v1, 0x50

    .line 97
    .line 98
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    .line 100
    const/4 v1, -0x1

    .line 101
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 102
    .line 103
    const/4 v1, -0x2

    .line 104
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 105
    .line 106
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public checkReset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->resetDespise(I)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->resetPraise(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method deleteMyComment()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0, v1, v3}, Lcom/join/mgps/activity/CommentDetailActivity;->getDeleteCommentRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/DeleteCommentArgs;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 29
    .line 30
    invoke-interface {v3, v1}, Lcom/join/mgps/rpc/f;->l(Lcom/join/mgps/dto/DeleteCommentArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    if-eq v3, v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/16 v4, 0x321

    .line 48
    .line 49
    if-ne v3, v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v1, ""

    .line 64
    .line 65
    invoke-virtual {p0, v1, v4}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 82
    .line 83
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method dismissLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method getCommentList(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sort"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isLoading:Z

    .line 11
    .line 12
    :try_start_0
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentDetailRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/RequestCommentDetailArgs;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Lcom/join/mgps/rpc/f;->h(Lcom/join/mgps/dto/RequestCommentDetailArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 34
    .line 35
    if-ne v1, v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean;->getMain_comment()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean;->getMain_comment()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-gtz v1, :cond_2

    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showDeleteView()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentDetailBean;->getGame_info()Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/join/mgps/dto/CommentDetailBean;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean;->getMain_comment()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 90
    .line 91
    if-ne v2, v0, :cond_3

    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->setTopGame(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    if-ne v1, v0, :cond_4

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-lez v0, :cond_4

    .line 110
    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 118
    .line 119
    iget v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPn(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->setTopComment(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const/16 v0, 0x9

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    const/16 v0, 0xa

    .line 136
    .line 137
    :goto_0
    if-eqz p1, :cond_5

    .line 138
    .line 139
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-ge v2, v1, :cond_5

    .line 144
    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 150
    .line 151
    iget v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPn(I)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->showMain(Ljava/util/List;I)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V

    .line 176
    .line 177
    .line 178
    :goto_2
    return-void
.end method

.method public getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comment_id",
            "type",
            "pn"
        }
    .end annotation

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->token:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    move-object v5, v0

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameId:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->token:Ljava/lang/String;

    .line 56
    .line 57
    iget v6, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 58
    .line 59
    move-object v4, p1

    .line 60
    move v7, p2

    .line 61
    move v8, p3

    .line 62
    invoke-virtual/range {v0 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getPraiseComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public getCreateCommentRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "replyCommentId",
            "str",
            "upPhoneModel",
            "reply_comment_user_id",
            "reply_comment_user_name",
            "reply_comment_id",
            "pn"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v6, v1

    .line 14
    check-cast v6, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, v0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, v0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, v0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    move v13, v1

    .line 53
    move-object v10, v2

    .line 54
    move-object v11, v3

    .line 55
    move-object v12, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v1, ""

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    move-object v10, v1

    .line 61
    move-object v11, v10

    .line 62
    move-object v12, v11

    .line 63
    const/4 v13, -0x1

    .line 64
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, v0, Lcom/join/mgps/activity/CommentDetailActivity;->gameId:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v8, 0x2

    .line 74
    move-object/from16 v5, p2

    .line 75
    .line 76
    move-object/from16 v7, p3

    .line 77
    .line 78
    move-object/from16 v9, p1

    .line 79
    .line 80
    move-object/from16 v14, p4

    .line 81
    .line 82
    move-object/from16 v15, p5

    .line 83
    .line 84
    move-object/from16 v16, p6

    .line 85
    .line 86
    move/from16 v17, p7

    .line 87
    .line 88
    invoke-virtual/range {v2 .. v17}, Lcom/join/mgps/Util/RequestBeanUtil;->getReplyCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    return-object v1
.end method

.method public getDeleteCommentRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/DeleteCommentArgs;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comment_id",
            "pn"
        }
    .end annotation

    .line 1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->token:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->accountBean:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    move-object v5, v0

    .line 47
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameId:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->token:Ljava/lang/String;

    .line 56
    .line 57
    iget v6, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 58
    .line 59
    move-object v4, p1

    .line 60
    move v7, p2

    .line 61
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getDeleteComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/DeleteCommentArgs;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method getToken()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

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
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->g(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "|"

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_0
    :goto_0
    return-void
.end method

.method imTopRight()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0167

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a1273

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/TextView;

    .line 21
    .line 22
    const v2, 0x7f0a1274

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/widget/TextView;

    .line 30
    .line 31
    new-instance v3, Landroid/widget/PopupWindow;

    .line 32
    .line 33
    const/4 v4, -0x2

    .line 34
    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 38
    .line 39
    const-string v4, "#00000000"

    .line 40
    .line 41
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->imTopRight:Landroid/widget/ImageView;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v3, v0, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->sort:Ljava/lang/String;

    .line 68
    .line 69
    const-string v4, "desc"

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    const-string v0, "\u987a\u5e8f\u67e5\u770b"

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "\u5012\u5e8f\u67e5\u770b"

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$e;

    .line 89
    .line 90
    invoke-direct {v0, p0, v3}, Lcom/join/mgps/activity/CommentDetailActivity$e;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/PopupWindow;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity$f;

    .line 97
    .line 98
    invoke-direct {v0, p0, v3}, Lcom/join/mgps/activity/CommentDetailActivity$f;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Landroid/widget/PopupWindow;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public onChangeComment(Lcom/join/mgps/event/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->c()D

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    double-to-int v1, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->c()D

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->phoneModle:Landroid/widget/TextView;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->phoneModle:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/event/n;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->phoneModle:Landroid/widget/TextView;

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 67
    .line 68
    const-string v0, ""

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setMobile_phone_model(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->A(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, v1, p3, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 25
    .line 26
    invoke-interface {p3, p1}, Lcom/join/mgps/rpc/f;->d(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eq p3, v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    const/16 v1, 0x321

    .line 43
    .line 44
    if-ne p3, v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow3(Ljava/lang/String;ZII)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow3(Ljava/lang/String;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p0, v0, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow3(Ljava/lang/String;ZII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 71
    .line 72
    invoke-virtual {p0, p1, v2, p2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow3(Ljava/lang/String;ZII)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    return-void
.end method

.method public onReply(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    move-object v0, p0

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity;->bottomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onReplyReply(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sub",
            "pn",
            "id"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getUser_name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    move-object v0, p0

    .line 14
    move-object v4, p3

    .line 15
    move v5, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity;->bottomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method onUnPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, v1, p2, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/f;->e(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eq p2, v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/16 v1, 0x321

    .line 44
    .line 45
    if-ne p2, v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->checkReset(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p0, v0, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 76
    .line 77
    invoke-virtual {p0, p1, v3, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public resetDespise(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_despise()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, ""

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    if-ne v2, v6, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 32
    .line 33
    .line 34
    sub-long/2addr v0, v4

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    cmp-long p1, v0, v4

    .line 38
    .line 39
    if-gez p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 42
    .line 43
    const-string v0, "0"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    if-eq p1, v6, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 73
    .line 74
    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    add-long/2addr v0, v4

    .line 85
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->setTopComment(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public resetPraise(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, ""

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    if-ne v2, v6, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 32
    .line 33
    .line 34
    sub-long/2addr v0, v4

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    cmp-long p1, v0, v4

    .line 38
    .line 39
    if-gez p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 42
    .line 43
    const-string v0, "0"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    if-eq p1, v6, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 73
    .line 74
    invoke-virtual {p1, v6}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    add-long/2addr v0, v4

    .line 85
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->setTopComment(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method resultShow(Ljava/lang/String;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "b",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

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
    if-eqz p2, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-ne p3, p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->resetPraise(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->resetDespise(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method resultShow2(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    move-result v0

    const/16 v1, 0x321

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->getToken()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object p1

    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method resultShow2(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "b"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/join/mgps/event/n;

    const/4 v1, 0x1

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v7, ""

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/event/n;-><init>(ILjava/lang/String;DJLjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method resultShow3(Ljava/lang/String;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "b",
            "position",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

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
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne p4, p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mAdapter:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Lcom/join/mgps/adapter/CommentDetailAdapter;->j(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "bean",
            "b"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->dismissLodingDialog()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_6

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyCommentId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentId:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-ne p3, v0, :cond_0

    .line 27
    .line 28
    new-instance p3, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 29
    .line 30
    invoke-direct {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setId(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUid()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setUid(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUser_name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getRank()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setRank(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getHead_portrait()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setHead_portrait(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getGame_id()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setGame_id(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getContent()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setContent(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getMobile_phone_model()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setMobile_phone_model(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getPraise_count()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getDespise_count()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getStart_game_count()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setStart_game_count(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getStars_score()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setStars_score(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getApproval_rate()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setApproval_rate(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getAdd_times()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setAdd_times(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_despise()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_belong_to(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getReply_count()J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setReply_count(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_praise()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_despise()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getIs_old()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_old(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPn:I

    .line 191
    .line 192
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPn(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getVip_level()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {p3, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setVip_level(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getSvip_level()I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    invoke-virtual {p3, p2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setSvip_level(I)V

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {p2, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 215
    .line 216
    .line 217
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->addViewItem(Ljava/util/List;Z)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :cond_0
    const/4 p1, -0x1

    .line 223
    const/4 p3, 0x0

    .line 224
    const/4 v0, -0x1

    .line 225
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-ge p3, v3, :cond_2

    .line 232
    .line 233
    iget-object v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 240
    .line 241
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iget-object v4, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPositionID:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_1

    .line 252
    .line 253
    move v0, p3

    .line 254
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_2
    if-ne v0, p1, :cond_3

    .line 258
    .line 259
    return-void

    .line 260
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 261
    .line 262
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 267
    .line 268
    iget-object p3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyCommentId:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-eq p3, v3, :cond_4

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    if-eqz p3, :cond_4

    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result p3

    .line 290
    const/4 v3, 0x0

    .line 291
    :goto_1
    if-ge v3, p3, :cond_4

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    check-cast v4, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    .line 302
    .line 303
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->getId()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    iget-object v5, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyCommentId:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_4
    new-instance p3, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;

    .line 316
    .line 317
    invoke-direct {p3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getId()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setId(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUid()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setUid(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getUser_name()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setUser_name(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getGame_id()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setGame_id(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getContent()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setContent(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getVip_level()I

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setVip_level(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getSvip_level()I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setSvip_level(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getReply_vip_level()I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    invoke-virtual {p3, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setReply_vip_level(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean$InfoBean;->getReply_svip_level()I

    .line 377
    .line 378
    .line 379
    move-result p2

    .line 380
    invoke-virtual {p3, p2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean$SubCommentBean;->setReply_svip_level(I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    if-nez p2, :cond_5

    .line 388
    .line 389
    new-instance p2, Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setSub_comment(Ljava/util/List;)V

    .line 398
    .line 399
    .line 400
    goto :goto_2

    .line 401
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSub_comment()Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object p2

    .line 405
    invoke-interface {p2, v2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    :goto_2
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 409
    .line 410
    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 414
    .line 415
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 416
    .line 417
    .line 418
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 419
    .line 420
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->addViewItem(Ljava/util/List;Z)V

    .line 421
    .line 422
    .line 423
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mAdapter:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 424
    .line 425
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    .line 426
    .line 427
    .line 428
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 429
    .line 430
    const-string p2, ""

    .line 431
    .line 432
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    .line 434
    .line 435
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 436
    .line 437
    const-string p3, "\u6dfb\u52a0\u8bc4\u8bba"

    .line 438
    .line 439
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 440
    .line 441
    .line 442
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentId:Ljava/lang/String;

    .line 443
    .line 444
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyCommentId:Ljava/lang/String;

    .line 445
    .line 446
    iput v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPn:I

    .line 447
    .line 448
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 449
    .line 450
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUserName:Ljava/lang/String;

    .line 455
    .line 456
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 457
    .line 458
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUid:Ljava/lang/String;

    .line 463
    .line 464
    iput-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyPositionID:Ljava/lang/String;

    .line 465
    .line 466
    :cond_6
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method setTopComment(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUserName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->replyUid:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getHead_portrait()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->usericon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->usericon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    new-instance v1, Lcom/join/mgps/activity/CommentDetailActivity$n;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity$n;-><init>(Lcom/join/mgps/activity/CommentDetailActivity;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->username:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUser_name()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->username:Landroid/widget/TextView;

    .line 44
    .line 45
    const/high16 v1, -0x1000000

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getVip_level()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->username:Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const v2, 0x7f0604f7

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSvip_level()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-lez v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->username:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const v2, 0x7f0604f8

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->levelTv:Lcom/join/mgps/customview/VipView;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getVip_level()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getSvip_level()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getUid()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v2, ""

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v3, p0, Lcom/join/mgps/activity/CommentDetailActivity;->uid:I

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const-string v1, "1"

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    const/16 v4, 0x8

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isMe:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_old()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->editLl:Landroid/widget/LinearLayout;

    .line 157
    .line 158
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->editLl:Landroid/widget/LinearLayout;

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isMe:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->editLl:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    :goto_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getRank()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isAuth:Landroid/widget/ImageView;

    .line 189
    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isAuth:Landroid/widget/ImageView;

    .line 195
    .line 196
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isConnoisseurs:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getRank()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->contentWeb:Lcom/join/mgps/customview/CopyTextViewNew;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getContent()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v0, v5}, Lcom/join/mgps/customview/CopyTextViewNew;->setTextHeader(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_old()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_6

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-eqz v0, :cond_6

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_5

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->phoneModle:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->phoneModle:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getMobile_phone_model()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->phoneModle:Landroid/widget/TextView;

    .line 260
    .line 261
    const/4 v5, 0x4

    .line 262
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pariseNumber:Landroid/widget/TextView;

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->downNumber:Landroid/widget/TextView;

    .line 290
    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->messageNumber:Landroid/widget/TextView;

    .line 314
    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getReply_count()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getAdd_times()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v2, "000"

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 359
    .line 360
    .line 361
    move-result-wide v5

    .line 362
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->time:Landroid/widget/TextView;

    .line 363
    .line 364
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_old()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-nez v0, :cond_8

    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    const/4 v2, 0x0

    .line 394
    cmpl-float v0, v0, v2

    .line 395
    .line 396
    if-eqz v0, :cond_8

    .line 397
    .line 398
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 399
    .line 400
    if-eqz v0, :cond_7

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-nez v0, :cond_7

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 410
    .line 411
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 415
    .line 416
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 429
    .line 430
    .line 431
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 432
    .line 433
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getStars_score()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    float-to-double v1, v1

    .line 446
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 447
    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_mstarBar:Lcom/join/mgps/customview/MStarBar;

    .line 451
    .line 452
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_head_num_tx:Landroid/widget/TextView;

    .line 456
    .line 457
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getApproval_rate()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    if-eqz v0, :cond_9

    .line 465
    .line 466
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getApproval_rate()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 475
    .line 476
    .line 477
    move-result-wide v0

    .line 478
    const-wide v5, 0x4051800000000000L    # 70.0

    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    cmpl-double v2, v0, v5

    .line 484
    .line 485
    if-lez v2, :cond_9

    .line 486
    .line 487
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isGood:Landroid/widget/ImageView;

    .line 488
    .line 489
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isGood:Landroid/widget/ImageView;

    .line 494
    .line 495
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    .line 497
    .line 498
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_praise()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    const/4 v1, 0x1

    .line 503
    if-ne v0, v1, :cond_a

    .line 504
    .line 505
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->parise:Landroid/widget/ImageView;

    .line 506
    .line 507
    const v2, 0x7f081329

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    .line 512
    .line 513
    goto :goto_7

    .line 514
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->parise:Landroid/widget/ImageView;

    .line 515
    .line 516
    const v2, 0x7f081324

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    .line 521
    .line 522
    :goto_7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getIs_despise()I

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    if-ne p1, v1, :cond_b

    .line 527
    .line 528
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->down:Landroid/widget/ImageView;

    .line 529
    .line 530
    const v0, 0x7f080511

    .line 531
    .line 532
    .line 533
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    .line 535
    .line 536
    goto :goto_8

    .line 537
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->down:Landroid/widget/ImageView;

    .line 538
    .line 539
    const v0, 0x7f08050f

    .line 540
    .line 541
    .line 542
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    .line 544
    .line 545
    :cond_c
    :goto_8
    return-void
.end method

.method setTopGame(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->getGame_ico()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->getGame_ico()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->M3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameName:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;->getGame_name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method showDeleteView()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->deletedTv:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->inputLl:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->inputLl:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method showLodingDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->updateListFooter()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x7f12031e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->inputLl:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method showMain(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subCommentBeanXs",
            "maxItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p2, v1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->inputLl:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->dataSet:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 53
    .line 54
    add-int/2addr p2, v1

    .line 55
    iput p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->pn:I

    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->allSubCommentBeanXs:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->addViewItem(Ljava/util/List;Z)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-gtz p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mAdapter:Lcom/join/mgps/adapter/CommentDetailAdapter;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentDetailAdapter;->notifyDataSetChanged()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->updateListFooter()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public subDespise()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getDespise_count()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_despise(I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-gez v4, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 31
    .line 32
    const-string v1, "0"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setDespise_count(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public subPraise()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPraise_count()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setIs_praise(I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    sub-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-gez v4, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 31
    .line 32
    const-string v1, "0"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mainCommentBean:Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->setPraise_count(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method toCreateComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "replyCommentId",
            "str",
            "upPhoneModel",
            "reply_comment_user_id",
            "reply_comment_user_name",
            "reply_comment_id",
            "replyPn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingDialog()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/join/mgps/activity/CommentDetailActivity;->getCreateCommentRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/f;->b(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/16 p3, 0x321

    .line 37
    .line 38
    if-ne p2, p3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lcom/join/mgps/dto/CommentCreateBean;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    const-string p2, "\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a\uff01"

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/join/mgps/dto/CommentCreateBean;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 p3, 0x1

    .line 77
    invoke-virtual {p0, p2, p1, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string p1, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 82
    .line 83
    invoke-virtual {p0, p1, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p0, p2, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 100
    .line 101
    invoke-virtual {p0, p1, v2, v1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_0
    return-void
.end method

.method topPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mainCommentBean",
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;->getPn()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, v1, p2, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentPraiseRequestBean(Ljava/lang/String;II)Lcom/join/mgps/dto/RequestCommentpraiseArgs;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/join/mgps/activity/CommentDetailActivity;->rpcClient:Lcom/join/mgps/rpc/f;

    .line 25
    .line 26
    invoke-interface {p2, p1}, Lcom/join/mgps/rpc/f;->d(Lcom/join/mgps/dto/RequestCommentpraiseArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getSucc()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eq p2, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/16 v1, 0x321

    .line 43
    .line 44
    if-ne p2, v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->checkReset(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v0, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p0, v0, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string p1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 75
    .line 76
    invoke-virtual {p0, p1, v2, v2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method updateListFooter()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->isLoading:Z

    .line 13
    .line 14
    return-void
.end method
