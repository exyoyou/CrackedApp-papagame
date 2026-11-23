.class public final Lcom/join/kotlin/quark/SourceHopeFragment$onUploadSourceClick$1;
.super Lcom/join/kotlin/quark/callback/impl/DialogShareSourceCallbackImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/quark/SourceHopeFragment;->onUploadSourceClick(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/join/kotlin/quark/SourceHopeFragment$onUploadSourceClick$1",
        "Lcom/join/kotlin/quark/callback/impl/DialogShareSourceCallbackImpl;",
        "onSuccess",
        "",
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
.field final synthetic this$0:Lcom/join/kotlin/quark/SourceHopeFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/quark/SourceHopeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceHopeFragment$onUploadSourceClick$1;->this$0:Lcom/join/kotlin/quark/SourceHopeFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/kotlin/quark/callback/impl/DialogShareSourceCallbackImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceHopeFragment$onUploadSourceClick$1;->this$0:Lcom/join/kotlin/quark/SourceHopeFragment;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/kotlin/quark/SourceHopeFragment;->loadData(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
