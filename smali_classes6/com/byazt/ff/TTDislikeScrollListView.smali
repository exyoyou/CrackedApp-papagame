.class public Lcom/byazt/ff/TTDislikeScrollListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8e,
        0x992
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/pr/tt;

.field public tt:Landroid/widget/AdapterView$OnItemClickListener;

.field public ve:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/byazt/ff/TTDislikeScrollListView$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/byazt/ff/TTDislikeScrollListView$1;-><init>(Lcom/byazt/ff/TTDislikeScrollListView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/ff/TTDislikeScrollListView;->ve:Landroid/widget/AdapterView$OnItemClickListener;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/ff/TTDislikeScrollListView;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ff/TTDislikeScrollListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ff/TTDislikeScrollListView;->tt:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ff/TTDislikeScrollListView;->ve:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ff/TTDislikeScrollListView;)Lcom/byazt/pr/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ff/TTDislikeScrollListView;->c:Lcom/byazt/pr/tt;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 1
    const p2, 0x1fffffff

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDislikeController(Lcom/byazt/pr/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ff/TTDislikeScrollListView;->c:Lcom/byazt/pr/tt;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ff/TTDislikeScrollListView;->tt:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    return-void
.end method
