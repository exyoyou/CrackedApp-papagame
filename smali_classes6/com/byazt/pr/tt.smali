.class public Lcom/byazt/pr/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x31a,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/pr/tt$c;,
        Lcom/byazt/pr/tt$tt;
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/vo/tt;

.field public tt:Lcom/byazt/pr/tt$c;


# direct methods
.method public constructor <init>(Lcom/byazt/vo/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/pr/tt;->c:Lcom/byazt/vo/tt;

    .line 5
    .line 6
    return-void
.end method

.method public static final c(Lcom/byazt/vo/tt;Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lcom/byazt/pr/tt;->c(Lcom/byazt/vo/tt;Landroid/app/Dialog;[Ljava/lang/Integer;Lcom/byazt/pr/tt$c;)V

    return-void
.end method

.method public static final c(Lcom/byazt/vo/tt;Landroid/app/Dialog;[Ljava/lang/Integer;Lcom/byazt/pr/tt$c;)V
    .locals 5

    if-eqz p2, :cond_2

    .line 6
    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/pr/tt;

    invoke-direct {v0, p0}, Lcom/byazt/pr/tt;-><init>(Lcom/byazt/vo/tt;)V

    .line 8
    iput-object p3, v0, Lcom/byazt/pr/tt;->tt:Lcom/byazt/pr/tt$c;

    .line 9
    array-length p0, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_2

    aget-object v1, p2, p3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 10
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 12
    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    .line 13
    new-instance v3, Lcom/byazt/pr/tt$tt;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v4}, Lcom/byazt/pr/tt$tt;-><init>(Landroid/widget/AdapterView$OnItemClickListener;Lcom/byazt/pr/tt;Lcom/byazt/pr/tt$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/nc/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pr/tt;->c:Lcom/byazt/vo/tt;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/pr/c;->c()Lcom/byazt/pr/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/pr/tt;->c:Lcom/byazt/vo/tt;

    invoke-interface {v0, v1, p1}, Lcom/byazt/pr/ve;->c(Lcom/byazt/vo/tt;Lcom/byazt/nc/a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/pr/tt;->tt:Lcom/byazt/pr/tt$c;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/byazt/pr/tt$c;->c(Lcom/byazt/nc/a;)V

    :cond_1
    return-void
.end method
