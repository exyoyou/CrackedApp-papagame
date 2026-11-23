.class public Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/widget/listview/ILoadMoreView;


# instance fields
.field private mPbLoading:Landroid/widget/ProgressBar;

.field private mTvMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->loading_view_final_footer_default:I

    .line 2
    .line 3
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    sget p1, Lorg/ppsspp/ppsspp/R$id;->pb_loading:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/ProgressBar;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mPbLoading:Landroid/widget/ProgressBar;

    .line 15
    .line 16
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_loading_msg:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getFooterView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public showFail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mPbLoading:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 9
    .line 10
    sget v1, Lorg/ppsspp/ppsspp/R$string;->loading_view_net_error:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mPbLoading:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 8
    .line 9
    sget v1, Lorg/ppsspp/ppsspp/R$string;->loading_view_loading:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public showNoMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mPbLoading:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 9
    .line 10
    sget v1, Lorg/ppsspp/ppsspp/R$string;->loading_view_no_more:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public showNormal()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mPbLoading:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 9
    .line 10
    sget v1, Lorg/ppsspp/ppsspp/R$string;->loading_view_click_loading_more:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
