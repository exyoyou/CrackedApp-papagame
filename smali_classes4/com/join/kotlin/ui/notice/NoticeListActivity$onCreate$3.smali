.class public final Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/notice/NoticeListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
        "Lcom/join/mgps/dto/BTActivityBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0006H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/join/kotlin/ui/notice/NoticeListActivity$onCreate$3",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;",
        "Lcom/join/mgps/dto/BTActivityBean;",
        "onItemClick",
        "",
        "viewId",
        "",
        "item",
        "position",
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


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/join/mgps/dto/BTActivityBean;I)V
    .locals 0

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object p3, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BTActivityBean;->getJump_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onItemClick(ILjava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/BTActivityBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$3;->onItemClick(ILcom/join/mgps/dto/BTActivityBean;I)V

    return-void
.end method
