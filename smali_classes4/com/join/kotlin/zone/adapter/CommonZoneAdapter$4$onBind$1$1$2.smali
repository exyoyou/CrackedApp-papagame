.class public final Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2;
.super Lcom/join/mgps/callbacks/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4;->onBind(Lv2/a;ILcom/join/kotlin/zone/model/bean/ZoneMultiEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J-\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010\u0006\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00080\u0007\"\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2",
        "Lcom/join/mgps/callbacks/VideoAllCallBackWrap;",
        "onClickBlank",
        "",
        "s",
        "",
        "objects",
        "",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "onClickCover",
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
.field final synthetic $this_run:Lcom/join/mgps/dto/CommonGameInfoBean;

.field final synthetic this$0:Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;


# direct methods
.method constructor <init>(Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2;->this$0:Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2;->$this_run:Lcom/join/mgps/dto/CommonGameInfoBean;

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
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "objects"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p2

    .line 12
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-super {p0, p1, p2}, Lcom/join/mgps/callbacks/w;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2;->this$0:Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object v0, p0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2;->$this_run:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onClickCover()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/join/mgps/callbacks/w;->onClickCover()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2;->this$0:Lcom/join/kotlin/zone/adapter/CommonZoneAdapter;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/join/kotlin/zone/adapter/CommonZoneAdapter$4$onBind$1$1$2;->$this_run:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
