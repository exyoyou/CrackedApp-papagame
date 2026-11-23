.class public final Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$2;
.super Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;-><init>(Lcom/join/android/app/component/video/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl<",
        "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
        "Lcom/join/android/app/mgsim/wufun/databinding/iy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J(\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/join/kotlin/zone/adapter/CommonZoneAdapter$2",
        "Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;",
        "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemCommonZoneTitleBinding;",
        "onBind",
        "",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "position",
        "",
        "item",
        "isFullSpanItem",
        "",
        "itemType",
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


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const v0, 0x7f0d03d9

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/join/kotlin/base/impl/OnMultiItemAdapterListenerImpl;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public isFullSpanItem(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lv2/a;

    check-cast p3, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$2;->onBind(Lv2/a;ILcom/join/kotlin/zone/model/bean/ZoneMultiEntry;)V

    return-void
.end method

.method public onBind(Lv2/a;ILcom/join/kotlin/zone/model/bean/ZoneMultiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/iy;",
            ">;I",
            "Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/iy;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;->dataVal()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/iy;->n(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
