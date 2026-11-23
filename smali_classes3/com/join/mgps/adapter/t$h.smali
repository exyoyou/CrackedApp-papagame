.class public final Lcom/join/mgps/adapter/t$h;
.super Lcom/join/mgps/callbacks/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/t;->v(Lv2/c;Lcom/join/mgps/dto/CollectionSevenListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic c:Lcom/join/mgps/adapter/t;


# direct methods
.method constructor <init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/adapter/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t$h;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/t$h;->c:Lcom/join/mgps/adapter/t;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/callbacks/w;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "objects"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-super {p0, p1, p2}, Lcom/join/mgps/callbacks/w;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/t$h;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/join/mgps/adapter/t$h;->c:Lcom/join/mgps/adapter/t;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onClickCover()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/callbacks/w;->onClickCover()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/t$h;->b:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/join/mgps/adapter/t$h;->c:Lcom/join/mgps/adapter/t;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
