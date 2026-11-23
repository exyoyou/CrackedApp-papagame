.class public Lcom/join/mgps/customview/ClassifyGameTypeLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/dto/ClassifyGameTypeBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->d:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->d:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ClassifyGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->e:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->e:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a039c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    const v0, 0x7f0a039d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->c:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setClassifyGameTypeBean(Lcom/join/mgps/dto/ClassifyGameTypeBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->e:Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getIco_remote()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/ClassifyGameTypeLayout;->c:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
