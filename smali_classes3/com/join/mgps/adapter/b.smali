.class public Lcom/join/mgps/adapter/b;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lv2/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position",
            "item"
        }
    .end annotation

    .line 1
    check-cast p1, Lv2/c;

    check-cast p3, Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b;->onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CommonGameInfoBean;)V

    return-void
.end method

.method protected onBindViewHolder(Lv2/c;ILcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 1
    .param p1    # Lv2/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "position",
            "item"
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a199d

    invoke-virtual {p1, v0, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 3
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    move-result p2

    const v0, 0x7f0a1a33

    invoke-virtual {p1, v0, p2}, Lv2/c;->h(IZ)Lv2/c;

    .line 4
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "context",
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lv2/c;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "viewType"
        }
    .end annotation

    .line 2
    new-instance p1, Lv2/c;

    const p3, 0x7f0d03b5

    invoke-direct {p1, p3, p2}, Lv2/c;-><init>(ILandroid/view/ViewGroup;)V

    return-object p1
.end method
